module dfire.sqlda;

private {
  import dfire.types;
}

/***************************/
/* Dynamic SQL definitions */
/***************************/

/* Definitions for DSQL free_statement routine */

enum DSQL_close = 1;
enum DSQL_drop = 2;
enum DSQL_unprepare = 4;

/* Declare the extended SQLDA */

struct XSQLVAR {
  ISC_SHORT sqltype;      /* datatype of field */
  ISC_SHORT sqlscale;     /* scale factor */
  ISC_SHORT sqlsubtype;     /* datatype subtype - currently BLOBs only */
  ISC_SHORT sqllen;       /* length of data area */
  ISC_SCHAR*  sqldata;      /* address of data */
  ISC_SHORT*  sqlind;       /* address of indicator variable */
  ISC_SHORT sqlname_length;   /* length of sqlname field */
  ISC_SCHAR sqlname[32];    /* name of field, name length + space for NULL */
  ISC_SHORT relname_length;   /* length of relation name */
  ISC_SCHAR relname[32];    /* field's relation name + space for NULL */
  ISC_SHORT ownname_length;   /* length of owner name */
  ISC_SCHAR ownname[32];    /* relation's owner name + space for NULL */
  ISC_SHORT aliasname_length; /* length of alias name */
  ISC_SCHAR aliasname[32];    /* relation's alias name + space for NULL */
}

enum SQLDA_VERSION1 = 1;

struct XSQLDA {
  ISC_SHORT version_;      /* version of this XSQLDA */
  ISC_SCHAR sqldaid[8];     /* XSQLDA name field */
  ISC_LONG  sqldabc;      /* length in bytes of SQLDA */
  ISC_SHORT sqln;       /* number of fields allocated */
  ISC_SHORT sqld;       /* actual number of fields */
  XSQLVAR sqlvar[1];      /* first field address */
}

//#define XSQLDA_LENGTH(n)  (sizeof (XSQLDA) + (n - 1) * sizeof (XSQLVAR))

enum SQL_TEXT = 452;
enum SQL_VARYING = 448;
enum SQL_SHORT = 500;
enum SQL_LONG = 496;
enum SQL_FLOAT = 482;
enum SQL_DOUBLE = 480;
enum SQL_D_FLOAT = 530;
enum SQL_TIMESTAMP = 510;
enum SQL_BLOB = 520;
enum SQL_ARRAY = 540;
enum SQL_QUAD = 550;
enum SQL_TYPE_TIME = 560;
enum SQL_TYPE_DATE = 570;
enum SQL_INT64 = 580;
enum SQL_NULL = 32766;

/* Historical alias for pre v6 code */
enum SQL_DATE = SQL_TIMESTAMP;

/***************************/
/* SQL Dialects            */
/***************************/

enum SQL_DIALECT_V5 = 1; /* meaning is same as DIALECT_xsqlda */
enum SQL_DIALECT_V6_TRANSITION = 2; /* flagging anything that is delimited
                       by double quotes as an error and
                       flagging keyword DATE as an error */
enum SQL_DIALECT_V6 = 3; /* supports SQL delimited identifier,
                       SQLDATE/DATE, TIME, TIMESTAMP,
                       CURRENT_DATE, CURRENT_TIME,
                       CURRENT_TIMESTAMP, and 64-bit exact
                       numeric type */
enum SQL_DIALECT_CURRENT = SQL_DIALECT_V6;  /* latest IB DIALECT */
