module dfire.types;

private {
  import core.stdc.stdint;
}

/******************************************************************/
/* API handles                                                    */
/******************************************************************/

version(X86_64) {
  alias FB_API_HANDLE = uint;
} else version(X86) {
  alias FB_API_HANDLE = void*;
}

/******************************************************************/
/* Status vector                                                  */
/******************************************************************/

alias ISC_STATUS = intptr_t;

enum ISC_STATUS_LENGTH = 20;
alias ISC_STATUS_ARRAY = ISC_STATUS[ISC_STATUS_LENGTH];

/* SQL State as defined in the SQL Standard. */
enum FB_SQLSTATE_LENGTH = 5;
enum FB_SQLSTATE_SIZE = FB_SQLSTATE_LENGTH + 1;
alias FB_SQLSTATE_STRING = char[FB_SQLSTATE_SIZE];

/*
 * It is difficult to detect 64-bit long from the redistributable header
 * we do not care of 16-bit platforms anymore thus we may use plain "int"
 * which is 32-bit on all platforms we support
 *
 * We'll move to this definition in future API releases.
 *
 */

version(X86_64) {
  alias ISC_LONG = int;
  alias ISC_ULONG = uint;
} else {
  alias ISC_LONG = long;
  alias ISC_ULONG = ulong;
}

alias ISC_SHORT = short;
alias ISC_USHORT = ushort;

alias ISC_UCHAR = char;
alias ISC_SCHAR = char;

/*******************************************************************/
/* 64 bit Integers                                                 */
/*******************************************************************/
alias ISC_INT64 = long;
alias ISC_UINT64 = ulong;

/*******************************************************************/
/* Time & Date support                                             */
/*******************************************************************/

//#ifndef ISC_TIMESTAMP_DEFINED
//typedef int     ISC_DATE;
//typedef unsigned int  ISC_TIME;
//typedef struct
//{
//  ISC_DATE timestamp_date;
//  ISC_TIME timestamp_time;
//} ISC_TIMESTAMP;
//#define ISC_TIMESTAMP_DEFINED
//#endif  /* ISC_TIMESTAMP_DEFINED */

/*******************************************************************/
/* Blob Id support                                                 */
/*******************************************************************/

//struct GDS_QUAD_t {
//  ISC_LONG gds_quad_high;
//  ISC_ULONG gds_quad_low;
//};

//typedef struct GDS_QUAD_t GDS_QUAD;
//typedef struct GDS_QUAD_t ISC_QUAD;

//#define isc_quad_high gds_quad_high
//#define isc_quad_low  gds_quad_low

//typedef int (*FB_SHUTDOWN_CALLBACK)(const int reason, const int mask, void* arg);
