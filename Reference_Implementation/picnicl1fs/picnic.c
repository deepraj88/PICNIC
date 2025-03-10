/*! @file picnic.c
 *  @brief Implementation of the Picnic signature API
 *
 *  This file is part of the reference implementation of the Picnic signature scheme.
 *  See the accompanying documentation for complete details.
 *
 *  The code is provided under the MIT license, see LICENSE for
 *  more details.
 *  SPDX-License-Identifier: MIT
 */

#include <stdio.h>
#include <memory.h>
#include <limits.h>
#include "picnic_impl.h"
#include "picnic2_impl.h"
#include "picnic.h"
#include "picnic_types.h"
#include "lowmc_constants.h"
#include "platform.h"

static int is_valid_params(picnic_params_t params)
{
    if (params > 0 && params < PARAMETER_SET_MAX_INDEX) {
        return 1;
    }
    printf("INVALID PARAMS\n");
    return 0;
}

transform_t get_transform(picnic_params_t parameters)
{
    switch (parameters) {
    case Picnic_L1_FS:
    case Picnic_L3_FS:
    case Picnic_L5_FS:
    case Picnic2_L1_FS:
    case Picnic2_L3_FS:
    case Picnic2_L5_FS:
        return TRANSFORM_FS;
    case Picnic_L1_UR:
    case Picnic_L3_UR:
    case Picnic_L5_UR:
        return TRANSFORM_UR;
    default:
        return TRANSFORM_INVALID;
    }
}

const char* picnic_get_param_name(picnic_params_t parameters)
{
    switch (parameters) {
    case Picnic_L1_FS:
        return "Picnic_L1_FS";
    case Picnic_L1_UR:
        return "Picnic_L1_UR";
    case Picnic_L3_FS:
        return "Picnic_L3_FS";
    case Picnic_L3_UR:
        return "Picnic_L3_UR";
    case Picnic_L5_FS:
        return "Picnic_L5_FS";
    case Picnic_L5_UR:
        return "Picnic_L5_UR";
    case Picnic2_L1_FS:
        return "Picnic2_L1_FS";
    case Picnic2_L3_FS:
        return "Picnic2_L3_FS";
    case Picnic2_L5_FS:
        return "Picnic2_L5_FS";

    default:
        return "Unknown parameter set";
    }
}

int get_param_set(picnic_params_t picnicParams, paramset_t* paramset)
{
    memset(paramset, 0, sizeof(paramset_t));

    uint32_t pqSecurityLevel;

//    switch (picnicParams) {
//    case Picnic_L1_FS:
//    case Picnic_L1_UR:
        pqSecurityLevel = 64;
        paramset->numMPCRounds = 219;
        paramset->numMPCParties = 3;
        paramset->numSboxes = 10;
        paramset->numRounds = 20;
        paramset->digestSizeBytes = 32;
        paramset->andSizeBytes = numBytes(paramset->numSboxes * 3 * paramset->numRounds);
//        break;
//    case Picnic_L3_FS:
//    case Picnic_L3_UR:
//        pqSecurityLevel = 96;
//        paramset->numMPCRounds = 329;
//        paramset->numMPCParties = 3;
//        paramset->numSboxes = 10;
//        paramset->numRounds = 30;
//        paramset->digestSizeBytes = 48;
//        paramset->andSizeBytes = numBytes(paramset->numSboxes * 3 * paramset->numRounds);
//        break;
//    case Picnic_L5_FS:
//    case Picnic_L5_UR:
//        pqSecurityLevel = 128;
//        paramset->numMPCRounds = 438;
//        paramset->numMPCParties = 3;
//        paramset->numSboxes = 10;
//        paramset->numRounds = 38;
//        paramset->digestSizeBytes = 64;
//        paramset->andSizeBytes = numBytes(paramset->numSboxes * 3 * paramset->numRounds);
//        break;
//    case Picnic2_L1_FS:
//        pqSecurityLevel = 64;
//        paramset->numMPCRounds = 343;
//        paramset->numOpenedRounds = 27;
//        paramset->numMPCParties = 64;
//        paramset->numSboxes = 10;
//        paramset->numRounds = 20;
//        paramset->digestSizeBytes = 32;
//        paramset->andSizeBytes = numBytes(paramset->numSboxes * 3 * paramset->numRounds);
//        break;
//    case Picnic2_L3_FS:
//        pqSecurityLevel = 96;
//        paramset->numMPCRounds = 570;
//        paramset->numOpenedRounds = 39;
//        paramset->numMPCParties = 64;
//        paramset->numSboxes = 10;
//        paramset->numRounds = 30;
//        paramset->digestSizeBytes = 48;
//        paramset->andSizeBytes = numBytes(paramset->numSboxes * 3 * paramset->numRounds);
//        break;
//    case Picnic2_L5_FS:
//        pqSecurityLevel = 128;
//        paramset->numMPCRounds = 803;
//        paramset->numOpenedRounds = 50;
//        paramset->numMPCParties = 64;
//        paramset->numSboxes = 10;
//        paramset->numRounds = 38;
//        paramset->digestSizeBytes = 64;
//        paramset->andSizeBytes = numBytes(paramset->numSboxes * 3 * paramset->numRounds);
//        break;
//
//    default:
//        fprintf(stderr, "%s: Unsupported Picnic parameter set (%d). \n", __func__, picnicParams);
//        return -1;
//    }

    paramset->stateSizeBytes = numBytes(2 * pqSecurityLevel);
    paramset->seedSizeBytes = numBytes(2 * pqSecurityLevel);
    paramset->stateSizeBits = paramset->stateSizeBytes * 8;
    paramset->stateSizeWords = paramset->stateSizeBits / WORD_SIZE_BITS;
    paramset->transform = get_transform(picnicParams);
    paramset->saltSizeBytes = 32; /* same for all parameter sets */

    if (paramset->transform == TRANSFORM_UR) {
        paramset->UnruhGWithoutInputBytes = paramset->seedSizeBytes + paramset->andSizeBytes;
        paramset->UnruhGWithInputBytes = paramset->UnruhGWithoutInputBytes + paramset->stateSizeBytes;
    }

    return EXIT_SUCCESS;
}

int picnic_keygen(picnic_params_t parameters, picnic_publickey_t* pk,
                  picnic_privatekey_t* sk)
{
	int loop;
    if (!is_valid_params(parameters)) {
        printf("Invalid parameter set\n");
        return -1;
    }

//    if (pk == NULL) {
//        printf("public key is NULL\n");
//        return -1;
//    }
//
//    if (sk == NULL) {
//        printf("private key is NULL\n");
//        return -1;
//    }

//    memset(pk, 0x00, sizeof(picnic_publickey_t));
//    memset(sk, 0x00, sizeof(picnic_privatekey_t));

    paramset_t paramset;
    int ret = get_param_set(parameters, &paramset);
    if (ret != EXIT_SUCCESS) {
//        fprintf(stderr, "Failed to initialize parameter set\n");
//        fflush(stderr);
        return -1;
    }

    /* Generate a private key */
    sk->params = parameters;
    if (picnic_random_bytes(sk->data, paramset.stateSizeBytes) != 0) {
//        printf("Failed to generate private key\n");
        return -1;
    }

    /* Generate a random plaintext block */
    pk->params = parameters;
    if (picnic_random_bytes(pk->plaintext, paramset.stateSizeBytes) != 0) {
//        printf("Failed to generate private key\n");
        return -1;
    }

    /* Compute the ciphertext */
    uint32_t temp[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0}, temp2[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0}, temp3[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0};
    for(loop=0;loop<PICNIC_MAX_LOWMC_BLOCK_SIZE;loop=loop=loop+4) {
    	temp[loop/4] = pk->ciphertext[loop] + 256*(pk->ciphertext[loop+1] + 256*(pk->ciphertext[loop+2] + 256*pk->ciphertext[loop+3]));
     	temp2[loop/4] = pk->plaintext[loop] + 256*(pk->plaintext[loop+1] + 256*(pk->plaintext[loop+2] + 256*pk->plaintext[loop+3]));
     	temp3[loop/4] = sk->data[loop] + 256*(sk->data[loop+1] + 256*(sk->data[loop+2] + 256*sk->data[loop+3]));
       }

//    LowMCEnc((uint32_t*)pk->plaintext, (uint32_t*)pk->ciphertext,
//             (uint32_t*)sk->data, &paramset);
    LowMCEnc(temp2, temp,
             temp3, &paramset);
    for(loop=0;loop<PICNIC_MAX_LOWMC_BLOCK_SIZE;loop++) {
    	pk->ciphertext[loop] = temp[loop/4]%256;
    	temp[loop/4] = temp[loop/4]/256;
    }


    /* Make of copy of the public key in the private key */
//    memcpy(&(sk->pk), pk, sizeof(picnic_publickey_t));
    sk->pk.params = pk->params;
    for(loop=0;loop<PICNIC_MAX_LOWMC_BLOCK_SIZE;loop++) {
    	sk->pk.ciphertext[loop] = pk->ciphertext[loop];
    	sk->pk.plaintext[loop] = pk->plaintext[loop];
    }

    return 0;
}

int is_picnic2(picnic_params_t params)
{
    if (params == Picnic2_L1_FS ||
        params == Picnic2_L3_FS ||
        params == Picnic2_L5_FS ) {
        return 1;
    }
    return 0;
}

int picnic_sign(picnic_privatekey_t* sk, const uint8_t* message, size_t message_len,
                uint8_t* signature, size_t* signature_len)
{
    int ret;
    paramset_t paramset;

    ret = get_param_set(sk->params, &paramset);
    if (ret != EXIT_SUCCESS) {
        fprintf(stderr, "Failed to initialize parameter set\n");
        fflush(stderr);
        return -1;
    }

//    if (!is_picnic2(sk->params)) {
        signature_t sig[1];// = (signature_t*)malloc(sizeof(signature_t));
//        allocateSignature(sig, &paramset);
//        if (sig == NULL) {
//            return -1;
//        }
//
        int loop;
        uint32_t temp[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0}, temp2[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0}, temp3[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0};
        for(loop=0;loop<PICNIC_MAX_LOWMC_BLOCK_SIZE;loop=loop=loop+4) {
        	temp[loop/4] = sk->pk.ciphertext[loop] + 256*(sk->pk.ciphertext[loop+1] + 256*(sk->pk.ciphertext[loop+2] + 256*sk->pk.ciphertext[loop+3]));
         	temp2[loop/4] = sk->pk.plaintext[loop] + 256*(sk->pk.plaintext[loop+1] + 256*(sk->pk.plaintext[loop+2] + 256*sk->pk.plaintext[loop+3]));
         	temp3[loop/4] = sk->data[loop] + 256*(sk->data[loop+1] + 256*(sk->data[loop+2] + 256*sk->data[loop+3]));
           }

//        ret = sign_picnic1((uint32_t*)sk->data, (uint32_t*)sk->pk.ciphertext, (uint32_t*)sk->pk.plaintext, message,
//                           message_len, sig, &paramset);
        ret = sign_picnic1(temp3, temp, temp2, message,
                           message_len, sig, &paramset);
        if (ret != EXIT_SUCCESS) {
//            fprintf(stderr, "Failed to create signature\n");
//            fflush(stderr);
//            freeSignature(sig, &paramset);
//            free(sig);
            return -1;
        }

        ret = serializeSignature(sig, signature, *signature_len, &paramset);
        if (ret == -1) {
//            fprintf(stderr, "Failed to serialize signature\n");
//            fflush(stderr);
//            freeSignature(sig, &paramset);
//            free(sig);
            return -1;
        }
        *signature_len = ret;
//        freeSignature(sig, &paramset);
//        free(sig);
//    }
//    else {
//        signature2_t* sig = (signature2_t*)malloc(sizeof(signature2_t));
//        allocateSignature2(sig, &paramset);
//        if (sig == NULL) {
//            return -1;
//        }
//        ret = sign_picnic2((uint32_t*)sk->data, (uint32_t*)sk->pk.ciphertext, (uint32_t*)sk->pk.plaintext, message,
//                           message_len, sig, &paramset);
//        if (ret != EXIT_SUCCESS) {
//            fprintf(stderr, "Failed to create signature\n");
//            fflush(stderr);
//            freeSignature2(sig, &paramset);
//            free(sig);
//            return -1;
//        }
//        ret = serializeSignature2(sig, signature, *signature_len, &paramset);
//        if (ret == -1) {
//            fprintf(stderr, "Failed to serialize signature\n");
//            fflush(stderr);
//            freeSignature2(sig, &paramset);
//            free(sig);
//            return -1;
//        }
//        *signature_len = ret;
//
//        freeSignature2(sig, &paramset);
//        free(sig);
//    }


    return 0;
}

size_t picnic_signature_size(picnic_params_t parameters)
{
    paramset_t paramset;

    int ret = get_param_set(parameters, &paramset);

    if (ret != EXIT_SUCCESS) {
        return PICNIC_MAX_SIGNATURE_SIZE;
    }

    /* Picnic2 parameter sets */
    if (parameters == Picnic2_L1_FS ||
        parameters == Picnic2_L3_FS ||
        parameters == Picnic2_L5_FS) {

        size_t u = paramset.numOpenedRounds;
        size_t T = paramset.numMPCRounds;
        size_t numTreeValues = u * ceil_log2((T + (u - 1)) / u);                        // u*ceil(log2(ceil(T/u)))

        size_t proofSize =   paramset.seedSizeBytes * ceil_log2(paramset.numMPCParties) // Info to recompute seeds
                           + paramset.andSizeBytes + paramset.stateSizeBytes            // circuit size, size of aux info
                           + paramset.digestSizeBytes                                   // size of commitment of unopened party
                           + paramset.stateSizeBytes                                    // masked input
                           + paramset.andSizeBytes;                                     //size of broadcast messages

        size_t signatureSize =   paramset.saltSizeBytes + 4 * u                         // challenge and salt
                               + numTreeValues * paramset.seedSizeBytes                 // iSeed info
                               + numTreeValues * paramset.digestSizeBytes               // commitment opening info for views
                               + 4 * u                                                  // challenge; two length-u lists of 16-bit integers
                               + proofSize * u;                                         // one proof per challenged execution
        return signatureSize;
    }

    /* Other paramter sets */
    switch (paramset.transform) {
    case TRANSFORM_FS:
        // This is the largest possible FS signature size and would result when no challenges are 0 -- which would require us to include stateSizeBytes for every ZKB round.
        return paramset.numMPCRounds * (paramset.digestSizeBytes + paramset.stateSizeBytes + numBytes(3 * paramset.numSboxes * paramset.numRounds) +  2 * paramset.seedSizeBytes) + numBytes(2 * paramset.numMPCRounds) + paramset.saltSizeBytes;
    case TRANSFORM_UR:
        return paramset.numMPCRounds * (paramset.digestSizeBytes + paramset.stateSizeBytes + 2 * numBytes(3 * paramset.numSboxes * paramset.numRounds) +  3 * paramset.seedSizeBytes) + numBytes(2 * paramset.numMPCRounds) + paramset.saltSizeBytes;
    default:
        return PICNIC_MAX_SIGNATURE_SIZE;
    }
}

int picnic_verify(picnic_publickey_t* pk, const uint8_t* message, size_t message_len,
                  const uint8_t* signature, size_t signature_len)
{
    int ret;

    paramset_t paramset;

    ret = get_param_set(pk->params, &paramset);
    if (ret != EXIT_SUCCESS) {
        fprintf(stderr, "Failed to initialize parameter set\n");
        fflush(stderr);
        return -1;
    }

//    if (!is_picnic2(pk->params)) {
        signature_t sig[1];// = (signature_t*)malloc(sizeof(signature_t));
#ifdef DEBUG
        allocateSignature(&sig, &paramset);
//        if (sig == NULL) {
//            return -1;
//        }

        ret = deserializeSignature(&sig, signature, signature_len, &paramset);
        if (ret != EXIT_SUCCESS) {
            fprintf(stderr, "Failed to deserialize signature\n");
            fflush(stderr);
            freeSignature(&sig, &paramset);
//            free(sig);
            return -1;
        }

        ret = verify(&sig, (uint32_t*)pk->ciphertext,
                     (uint32_t*)pk->plaintext, message, message_len, &paramset);
        if (ret != EXIT_SUCCESS) {
            /* Signature is invalid, or verify function failed */
            freeSignature(&sig, &paramset);
//            free(sig);
            return -1;
        }

        freeSignature(&sig, &paramset);
//        free(sig);
//    }
//    else {
//        signature2_t* sig = (signature2_t*)malloc(sizeof(signature2_t));
//        allocateSignature2(sig, &paramset);
//        if (sig == NULL) {
//            return -1;
//        }
//
//        ret = deserializeSignature2(sig, signature, signature_len, &paramset);
//        if (ret != EXIT_SUCCESS) {
//            fprintf(stderr, "Failed to deserialize signature\n");
//            fflush(stderr);
//            freeSignature2(sig, &paramset);
//            free(sig);
//            return -1;
//        }
//
//        ret = verify_picnic2(sig, (uint32_t*)pk->ciphertext,
//                             (uint32_t*)pk->plaintext, message, message_len, &paramset);
//        if (ret != EXIT_SUCCESS) {
//            /* Signature is invalid, or verify function failed */
//            freeSignature2(sig, &paramset);
//            free(sig);
//            return -1;
//        }
//
//        freeSignature2(sig, &paramset);
//        free(sig);
//    }
#else
//        allocateSignature(sig, &paramset);
//        if (sig == NULL) {
//            return -1;
//        }

        ret = deserializeSignature(sig, signature, signature_len, &paramset);
        if (ret != EXIT_SUCCESS) {
//            fprintf(stderr, "Failed to deserialize signature\n");
//            fflush(stderr);
//            freeSignature(&sig, &paramset);
//            free(sig);
            return -1;
        }
//
        int loop;
        uint32_t temp[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0}, temp2[PICNIC_MAX_LOWMC_BLOCK_SIZE/4] = {0};
        for(loop=0;loop<PICNIC_MAX_LOWMC_BLOCK_SIZE;loop=loop=loop+4) {
        	temp[loop/4] = pk->ciphertext[loop] + 256*(pk->ciphertext[loop+1] + 256*(pk->ciphertext[loop+2] + 256*pk->ciphertext[loop+3]));
        	temp2[loop/4] = pk->plaintext[loop] + 256*(pk->plaintext[loop+1] + 256*(pk->plaintext[loop+2] + 256*pk->plaintext[loop+3]));
        }
        ret = verify(sig, temp,
                     temp2, message, message_len, &paramset);
//        ret = verify(&sig, (uint32_t*)pk->ciphertext,
//                     (uint32_t*)pk->plaintext, message, message_len, &paramset);
        if (ret != EXIT_SUCCESS) {
            /* Signature is invalid, or verify function failed */
            freeSignature(sig, &paramset);
//            free(sig);
            return -1;
        }
//
//        freeSignature(&sig, &paramset);
//        free(sig);
//    }
//    else {
//        signature2_t* sig = (signature2_t*)malloc(sizeof(signature2_t));
//        allocateSignature2(sig, &paramset);
//        if (sig == NULL) {
//            return -1;
//        }
//
//        ret = deserializeSignature2(sig, signature, signature_len, &paramset);
//        if (ret != EXIT_SUCCESS) {
//            fprintf(stderr, "Failed to deserialize signature\n");
//            fflush(stderr);
//            freeSignature2(sig, &paramset);
//            free(sig);
//            return -1;
//        }
//
//        ret = verify_picnic2(sig, (uint32_t*)pk->ciphertext,
//                             (uint32_t*)pk->plaintext, message, message_len, &paramset);
//        if (ret != EXIT_SUCCESS) {
//            /* Signature is invalid, or verify function failed */
//            freeSignature2(sig, &paramset);
//            free(sig);
//            return -1;
//        }
//
//        freeSignature2(sig, &paramset);
//        free(sig);
//    }
#endif
    return 0;
}

/* Serialize public key */
int picnic_write_public_key(const picnic_publickey_t* key, uint8_t* buf, size_t buflen)
{
//    if (key == NULL || buf == NULL) {
//        return -1;
//    }

	int loop;
    paramset_t paramset;
    int ret = get_param_set(key->params, &paramset);
    if (ret != EXIT_SUCCESS) {
//        fprintf(stderr, "Failed to initialize parameter set\n");
        return -1;
    }

    size_t bytesRequired = 1 + 2 * paramset.stateSizeBytes;
    if (buflen < bytesRequired) {
        return -1;
    }

    buf[0] = (uint8_t)key->params;

//    memcpy(buf + 1, key->ciphertext, paramset.stateSizeBytes);
    for(loop=0;loop<paramset.stateSizeBytes;loop++)
    	buf[1+loop] = key->ciphertext[loop];
//    memcpy(buf + 1 + paramset.stateSizeBytes, key->plaintext, paramset.stateSizeBytes);
    for(loop=0;loop<paramset.stateSizeBytes;loop++)
    	buf[1+ paramset.stateSizeBytes+loop] = key->plaintext[loop];

    return (int)bytesRequired;
}

int picnic_read_public_key(picnic_publickey_t* key, const uint8_t* buf, size_t buflen)
{
	int loop;
//    if (key == NULL || buf == NULL) {
//        return -1;
//    }

    if (buflen < 1 || !is_valid_params(buf[0])) {
        return -1;
    }

    key->params = buf[0];

    paramset_t paramset;
    int ret = get_param_set(key->params, &paramset);
    if (ret != EXIT_SUCCESS) {
        fprintf(stderr, "Failed to initialize parameter set\n");
        return -1;
    }

    size_t bytesExpected = 1 + 2 * paramset.stateSizeBytes;
    if (buflen < bytesExpected) {
        return -1;
    }


//    memset(key->ciphertext, 0x00, paramset.stateSizeBytes);
//    memcpy(key->ciphertext, buf + 1, paramset.stateSizeBytes);
    for(loop=0;loop<paramset.stateSizeBytes;loop++)
    	key->ciphertext[loop] = buf[1+loop];

//    memset(key->plaintext, 0x00, paramset.stateSizeBytes);
//    memcpy(key->plaintext, buf + 1 + paramset.stateSizeBytes, paramset.stateSizeBytes);
    for(loop=0;loop<paramset.stateSizeBytes;loop++)
    	key->plaintext[loop] = buf[1+loop+paramset.stateSizeBytes];

    return 0;
}

/* Serialize a private key. */
int picnic_write_private_key(const picnic_privatekey_t* key, uint8_t* buf, size_t buflen)
{
//    if (key == NULL || buf == NULL) {
//        return -1;
//    }

	int loop;
    paramset_t paramset;
    int ret = get_param_set(key->params, &paramset);
    if (ret != EXIT_SUCCESS) {
        fprintf(stderr, "Failed to initialize paramset set\n");
        return -1;
    }

    size_t n = paramset.stateSizeBytes;
    size_t bytesRequired = 1 + 3 * n;
    if (buflen < bytesRequired) {
        fprintf(stderr, "%s: buffer provided has %u bytes, but %u are required.\n", __func__, (uint32_t)buflen, (uint32_t)bytesRequired);
        return -1;
    }

    buf[0] = (uint8_t)key->params;

//    memcpy(buf + 1, key->data, n);
//    memcpy(buf + 1 + n, key->pk.ciphertext, n);
//    memcpy(buf + 1 + 2 * n, key->pk.plaintext, n);
    for(loop=0;loop<n;loop++) {
    	buf[1+loop] = key->data[loop];
    	buf[1+n+loop] = key->pk.ciphertext[loop];
    	buf[1+2*n+loop] = key->pk.plaintext[loop];

    }

    return (int)bytesRequired;
}

/* De-serialize a private key. */
int picnic_read_private_key(picnic_privatekey_t* key, const uint8_t* buf, size_t buflen)
{
//    if (key == NULL || buf == NULL) {
//        return -1;
//    }

	int loop =0 ;
    if (buflen < 1 || !is_valid_params(buf[0])) {
        return -1;
    }

//    memset(key, 0x00, sizeof(picnic_privatekey_t));

    key->params = buf[0];
    key->pk.params = buf[0];

    paramset_t paramset;
    int ret = get_param_set(key->params, &paramset);
    if (ret != EXIT_SUCCESS) {
//        fprintf(stderr, "Failed to initialize paramset set\n");
        return -1;
    }

    size_t n = paramset.stateSizeBytes;
    size_t bytesExpected = 1 + 3 * n;
    if (buflen < bytesExpected) {
        return -1;
    }

//    memcpy(key->data, buf + 1, n);
//    memcpy(key->pk.ciphertext, buf + 1 + n, n);
//    memcpy(key->pk.plaintext, buf + 1 + 2 * n, n);
    for(loop=0;loop<n;loop++) {
    	key->data[loop] = buf[1+loop];
    	key->pk.ciphertext[loop] = buf[1+n+loop];
    	key->pk.plaintext[loop] = buf[1+2*n+loop];

    }

    return 0;
}

/* Check that a key pair is valid. */
int picnic_validate_keypair(const picnic_privatekey_t* privatekey, const picnic_publickey_t* publickey)
{
    paramset_t paramset;
    int ret;

    ret = get_param_set(publickey->params, &paramset);
    if (ret != EXIT_SUCCESS) {
        return -1;
    }

    if (privatekey == NULL || publickey == NULL) {
        return -1;
    }

    if (privatekey->params != publickey->params) {
        return -1;
    }

    if (!is_valid_params(privatekey->params)) {
        fprintf(stderr, "Unsupported parameter set\n");
        return -1;
    }

    /* Re-compute the ciphertext and compare to the value in the public key. */
    uint8_t ciphertext[sizeof(publickey->ciphertext)];
    memset(ciphertext, 0x00, sizeof(ciphertext));
    LowMCEnc((uint32_t*)publickey->plaintext, (uint32_t*)ciphertext, (uint32_t*)privatekey->data, &paramset);
    if (memcmp(ciphertext, publickey->ciphertext, paramset.stateSizeBytes) != 0) {
        return -1;
    }

    return 0;
}

void print_signature(const uint8_t* sigBytes, size_t sigBytesLen, picnic_params_t picnic_params )
{
    signature_t sig;
    char label[50];


    if(picnic_params == Picnic2_L1_FS ||
       picnic_params == Picnic2_L3_FS ||
       picnic_params == Picnic2_L5_FS )
    {
        printf("Printing intermediate values of signatures created with Picnic2 parameter sets is not supported yet\n");
        return;
    }


    paramset_t params;
    int ret = get_param_set(picnic_params, &params);

    if (ret != EXIT_SUCCESS) {
        printf("Invalid parameters\n");
        return;
    }

    allocateSignature(&sig, &params);

    ret = deserializeSignature(&sig, sigBytes, sigBytesLen, &params);
    if (ret != 0) {
        printf("Invalid signature; deserialization fails\n");
        return;
    }

    proof_t* proofs = sig.proofs;
    uint8_t* challengeBits = sig.challengeBits;

    memcpy(challengeBits, sigBytes, numBytes(2 * params.numMPCRounds));
    sigBytes += numBytes(2 * params.numMPCRounds);
    printHex("challenge", challengeBits, numBytes(2 * params.numMPCRounds));
    printHex("salt", sig.salt, params.saltSizeBytes);
    printf("\n");

    for (size_t i = 0; i < params.numMPCRounds; i++) {

        printf("Iteration t: %u\n", (uint32_t)i);

        uint8_t challenge = getChallenge(challengeBits, i);
        printf("e_%u: %u\n", (uint32_t)i, challenge);

        memcpy(proofs[i].view3Commitment, sigBytes, params.digestSizeBytes);
        sigBytes += params.digestSizeBytes;
        snprintf(label, sizeof(label), "b_%u", (uint32_t)i);
        printHex(label, proofs[i].view3Commitment, params.digestSizeBytes);

        if (params.transform == TRANSFORM_UR) {
            size_t view3UnruhLength = (challenge == 0) ? params.UnruhGWithInputBytes : params.UnruhGWithoutInputBytes;
            memcpy(proofs[i].view3UnruhG, sigBytes, view3UnruhLength);
            sigBytes += view3UnruhLength;
            snprintf(label, sizeof(label), "G_%u", (uint32_t)i);
            printHex(label, proofs[i].view3UnruhG, view3UnruhLength);
        }

        memcpy(proofs[i].communicatedBits, sigBytes, params.andSizeBytes);
        sigBytes += params.andSizeBytes;
        printHex("transcript", proofs[i].communicatedBits, params.andSizeBytes);

        memcpy(proofs[i].seed1, sigBytes, params.seedSizeBytes);
        sigBytes += params.seedSizeBytes;
        printHex("seed1", proofs[i].seed1, params.seedSizeBytes);

        memcpy(proofs[i].seed2, sigBytes, params.seedSizeBytes);
        sigBytes += params.seedSizeBytes;
        printHex("seed2", proofs[i].seed2, params.seedSizeBytes);

        if (challenge == 1 || challenge == 2) {
            memcpy(proofs[i].inputShare, sigBytes, params.stateSizeBytes);
            sigBytes += params.stateSizeBytes;
            printHex("inputShare", (uint8_t*)proofs[i].inputShare, params.stateSizeBytes);
        }

        printf("\n");
    }

    freeSignature(&sig, &params);

    return;
}


