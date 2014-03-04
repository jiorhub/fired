module dfire.blr;

/*******************/
/* Blr definitions */
/*******************/

/*  WARNING: if you add a new BLR representing a data type, and the value
 *           is greater than the numerically greatest value which now
 *           represents a data type, you must change the define for
 *           DTYPE_BLR_MAX in jrd/align.h, and add the necessary entries
 *           to all the arrays in that file.
 */

enum ubyte blr_text = 14;
enum ubyte blr_text2 = 15; /* added in 3.2 JPN */
enum ubyte blr_short = 7;
enum ubyte blr_long = 8;
enum ubyte blr_quad = 9;
enum ubyte blr_float = 10;
enum ubyte blr_double = 27;
enum ubyte blr_d_float = 11;
enum ubyte blr_timestamp = 35;
enum ubyte blr_varying = 37;
enum ubyte blr_varying2 = 38; /* added in 3.2 JPN */
enum short blr_blob = 261;
enum ubyte blr_cstring = 40;
enum ubyte blr_cstring2 = 41; /* added in 3.2 JPN */
enum ubyte blr_blob_id = 45; /* added from gds.h */
enum ubyte blr_sql_date = 12;
enum ubyte blr_sql_time = 13;
enum ubyte blr_int64 = 16;
enum ubyte blr_blob2 = 17;
enum ubyte blr_domain_name = 18;
enum ubyte blr_domain_name2 = 19;
enum ubyte blr_not_nullable = 20;
enum ubyte blr_column_name = 21;
enum ubyte blr_column_name2 = 22;

// first sub parameter for blr_domain_name[2]
enum ubyte blr_domain_type_of = 0;
enum ubyte blr_domain_full = 1;

/* Historical alias for pre V6 applications */
enum ubyte blr_date = blr_timestamp;

enum ubyte blr_inner = 0;
enum ubyte blr_left = 1;
enum ubyte blr_right = 2;
enum ubyte blr_full = 3;

enum ubyte blr_gds_code = 0;
enum ubyte blr_sql_code = 1;
enum ubyte blr_exception = 2;
enum ubyte blr_trigger_code = 3;
enum ubyte blr_default_code = 4;
enum ubyte blr_raise = 5;
enum ubyte blr_exception_msg = 6;

enum ubyte blr_version4 = 4;
enum ubyte blr_version5 = 5;
enum ubyte blr_eoc = 76;
enum ubyte blr_end = 255;

enum ubyte blr_assignment = 1;
enum ubyte blr_begin = 2;
enum ubyte blr_dcl_variable = 3;  /* added from gds.h */
enum ubyte blr_message = 4;
enum ubyte blr_erase = 5;
enum ubyte blr_fetch = 6;
enum ubyte blr_for = 7;
enum ubyte blr_if = 8;
enum ubyte blr_loop = 9;
enum ubyte blr_modify = 10;
enum ubyte blr_handler = 11;
enum ubyte blr_receive = 12;
enum ubyte blr_select = 13;
enum ubyte blr_send = 14;
enum ubyte blr_store = 15;
enum ubyte blr_label = 17;
enum ubyte blr_leave = 18;
enum ubyte blr_store2 = 19;
enum ubyte blr_post = 20;
enum ubyte blr_literal = 21;
enum ubyte blr_dbkey = 22;
enum ubyte blr_field = 23;
enum ubyte blr_fid = 24;
enum ubyte blr_parameter = 25;
enum ubyte blr_variable = 26;
enum ubyte blr_average = 27;
enum ubyte blr_count = 28;
enum ubyte blr_maximum = 29;
enum ubyte blr_minimum = 30;
enum ubyte blr_total = 31;
/* count 2
enum ubyte blr_count2 = 32;
*/
enum ubyte blr_add = 34;
enum ubyte blr_subtract = 35;
enum ubyte blr_multiply = 36;
enum ubyte blr_divide = 37;
enum ubyte blr_negate = 38;
enum ubyte blr_concatenate = 39;
enum ubyte blr_substring = 40;
enum ubyte blr_parameter2 = 41;
enum ubyte blr_from = 42;
enum ubyte blr_via = 43;
enum ubyte blr_parameter2_old = 44; /* Confusion */
enum ubyte blr_user_name = 44; /* added from gds.h */
enum ubyte blr_null = 45;

enum ubyte blr_equiv = 46;
enum ubyte blr_eql = 47;
enum ubyte blr_neq = 48;
enum ubyte blr_gtr = 49;
enum ubyte blr_geq = 50;
enum ubyte blr_lss = 51;
enum ubyte blr_leq = 52;
enum ubyte blr_containing = 53;
enum ubyte blr_matching = 54;
enum ubyte blr_starting = 55;
enum ubyte blr_between = 56;
enum ubyte blr_or = 57;
enum ubyte blr_and = 58;
enum ubyte blr_not = 59;
enum ubyte blr_any = 60;
enum ubyte blr_missing = 61;
enum ubyte blr_unique = 62;
enum ubyte blr_like = 63;

//#define blr_stream        65
//#define blr_set_index     66

enum ubyte blr_rse = 67;
enum ubyte blr_first = 68;
enum ubyte blr_project = 69;
enum ubyte blr_sort = 70;
enum ubyte blr_boolean = 71;
enum ubyte blr_ascending = 72;
enum ubyte blr_descending = 73;
enum ubyte blr_relation = 74;
enum ubyte blr_rid = 75;
enum ubyte blr_union = 76;
enum ubyte blr_map = 77;
enum ubyte blr_group_by = 78;
enum ubyte blr_aggregate = 79;
enum ubyte blr_join_type = 80;

enum ubyte blr_agg_count = 83;
enum ubyte blr_agg_max = 84;
enum ubyte blr_agg_min = 85;
enum ubyte blr_agg_total = 86;
enum ubyte blr_agg_average = 87;
enum ubyte blr_parameter3 = 88; /* same as Rdb definition */
enum ubyte blr_run_max = 89;
enum ubyte blr_run_min = 90;
enum ubyte blr_run_total = 91;
enum ubyte blr_run_average = 92;
enum ubyte blr_agg_count2 = 93;
enum ubyte blr_agg_count_distinct = 94;
enum ubyte blr_agg_total_distinct = 95;
enum ubyte blr_agg_average_distinct = 96;

enum ubyte blr_function = 100;
enum ubyte blr_gen_id = 101;
enum ubyte blr_prot_mask = 102;
enum ubyte blr_upcase = 103;
enum ubyte blr_lock_state = 104;
enum ubyte blr_value_if = 105;
enum ubyte blr_matching2 = 106;
enum ubyte blr_index = 107;
enum ubyte blr_ansi_like = 108;
//#define blr_bookmark    109
//#define blr_crack   110
//#define blr_force_crack   111
enum ubyte blr_seek = 112;
//#define blr_find    113

/* these indicate directions for blr_seek and blr_find */

enum ubyte blr_continue = 0;
enum ubyte blr_forward = 1;
enum ubyte blr_backward = 2;
enum ubyte blr_bof_forward = 3;
enum ubyte blr_eof_backward = 4;

//#define blr_lock_relation   114
//#define blr_lock_record   115
//#define blr_set_bookmark  116
//#define blr_get_bookmark  117

enum ubyte blr_run_count = 118;  /* changed from 88 to avoid conflict with blr_parameter3 */
enum ubyte blr_rs_stream = 119;
enum ubyte blr_exec_proc = 120;
//#define blr_begin_range   121
//#define blr_end_range     122
//#define blr_delete_range  123
enum ubyte blr_procedure = 124;
enum ubyte blr_pid = 125;
enum ubyte blr_exec_pid = 126;
enum ubyte blr_singular = 127;
enum ubyte blr_abort = 128;
enum ubyte blr_block = 129;
enum ubyte blr_error_handler = 130;

enum ubyte blr_cast = 131;
//#define blr_release_lock  132
//#define blr_release_locks 133
enum ubyte blr_start_savepoint = 134;
enum ubyte blr_end_savepoint = 135;
//#define blr_find_dbkey    136
//#define blr_range_relation  137
//#define blr_delete_ranges 138

enum ubyte blr_plan = 139;  /* access plan items */
enum ubyte blr_merge = 140;
enum ubyte blr_join = 141;
enum ubyte blr_sequential = 142;
enum ubyte blr_navigational = 143;
enum ubyte blr_indices = 144;
enum ubyte blr_retrieve = 145;

enum ubyte blr_relation2 = 146;
enum ubyte blr_rid2 = 147;
//#define blr_reset_stream  148
//#define blr_release_bookmark  149

enum ubyte blr_set_generator = 150;

enum ubyte blr_ansi_any = 151;   /* required for NULL handling */
enum ubyte blr_exists = 152;   /* required for NULL handling */
//#define blr_cardinality   153

enum ubyte blr_record_version = 154;  /* get tid of record */
enum ubyte blr_stall = 155;  /* fake server stall */

//#define blr_seek_no_warn  156
//#define blr_find_dbkey_version  157   /* find dbkey with record version */
enum ubyte blr_ansi_all = 158;   /* required for NULL handling */

enum ubyte blr_extract = 159;

/* sub parameters for blr_extract */

enum ubyte blr_extract_year = 0;
enum ubyte blr_extract_month = 1;
enum ubyte blr_extract_day = 2;
enum ubyte blr_extract_hour = 3;
enum ubyte blr_extract_minute = 4;
enum ubyte blr_extract_second = 5;
enum ubyte blr_extract_weekday = 6;
enum ubyte blr_extract_yearday = 7;
enum ubyte blr_extract_millisecond = 8;
enum ubyte blr_extract_week = 9;

enum ubyte blr_current_date = 160;
enum ubyte blr_current_timestamp = 161;
enum ubyte blr_current_time = 162;

/* These codes reuse BLR code space */

enum ubyte blr_post_arg = 163;
enum ubyte blr_exec_into = 164;
enum ubyte blr_user_savepoint = 165;
enum ubyte blr_dcl_cursor = 166;
enum ubyte blr_cursor_stmt = 167;
enum ubyte blr_current_timestamp2 = 168;
enum ubyte blr_current_time2 = 169;
enum ubyte blr_agg_list = 170;
enum ubyte blr_agg_list_distinct = 171;
enum ubyte blr_modify2 = 172;

/* FB 1.0 specific BLR */

enum ubyte blr_current_role = 174;
enum ubyte blr_skip = 175;

/* FB 1.5 specific BLR */

enum ubyte blr_exec_sql = 176;
enum ubyte blr_internal_info = 177;
enum ubyte blr_nullsfirst = 178;
enum ubyte blr_writelock = 179;
enum ubyte blr_nullslast = 180;

/* FB 2.0 specific BLR */

enum ubyte blr_lowcase = 181;
enum ubyte blr_strlen = 182;

/* sub parameter for blr_strlen */
enum ubyte blr_strlen_bit = 0;
enum ubyte blr_strlen_char = 1;
enum ubyte blr_strlen_octet = 2;

enum ubyte blr_trim = 183;

/* first sub parameter for blr_trim */
enum ubyte blr_trim_both = 0;
enum ubyte blr_trim_leading = 1;
enum ubyte blr_trim_trailing = 2;

/* second sub parameter for blr_trim */
enum ubyte blr_trim_spaces = 0;
enum ubyte blr_trim_characters = 1;

/* These codes are actions for user-defined savepoints */

enum ubyte blr_savepoint_set = 0;
enum ubyte blr_savepoint_release = 1;
enum ubyte blr_savepoint_undo = 2;
enum ubyte blr_savepoint_release_single = 3;

/* These codes are actions for cursors */

enum ubyte blr_cursor_open = 0;
enum ubyte blr_cursor_close = 1;
enum ubyte blr_cursor_fetch = 2;

/* FB 2.1 specific BLR */

enum ubyte blr_init_variable = 184;
enum ubyte blr_recurse = 185;
enum ubyte blr_sys_function = 186;

// FB 2.5 specific BLR

enum ubyte blr_auto_trans = 187;
enum ubyte blr_similar = 188;
enum ubyte blr_exec_stmt = 189;

// subcodes of blr_exec_stmt
enum ubyte blr_exec_stmt_inputs = 1; // input parameters count
enum ubyte blr_exec_stmt_outputs = 2; // output parameters count
enum ubyte blr_exec_stmt_sql = 3;
enum ubyte blr_exec_stmt_proc_block = 4;
enum ubyte blr_exec_stmt_data_src = 5;
enum ubyte blr_exec_stmt_user = 6;
enum ubyte blr_exec_stmt_pwd = 7;
enum ubyte blr_exec_stmt_tran = 8; // not implemented yet
enum ubyte blr_exec_stmt_tran_clone = 9; // make transaction parameters equal to current transaction
enum ubyte blr_exec_stmt_privs = 10;
enum ubyte blr_exec_stmt_in_params = 11;  // not named input parameters
enum ubyte blr_exec_stmt_in_params2 = 12;  // named input parameters
enum ubyte blr_exec_stmt_out_params = 13;  // output parameters
enum ubyte blr_exec_stmt_role = 14;

enum ubyte blr_stmt_expr = 190;
enum ubyte blr_derived_expr = 191;

/*
 * All Red Database specific blr started from 254 must decrement to prevent
 * overlapping with Firebird blr
 */

// Red Database 2.1 specific BLR
enum ubyte blr_skip_record = 254;
