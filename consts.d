module dfire.consts;

/**********************************/
/* Database parameter block stuff */
/**********************************/

enum isc_dpb_version1 = 1;
enum isc_dpb_cdd_pathname = 1;
enum isc_dpb_allocation = 2;
enum isc_dpb_journal = 3;
enum isc_dpb_page_size = 4;
enum isc_dpb_num_buffers = 5;
enum isc_dpb_buffer_length = 6;
enum isc_dpb_debug = 7;
enum isc_dpb_garbage_collect = 8;
enum isc_dpb_verify = 9;
enum isc_dpb_sweep = 10;
enum isc_dpb_enable_journal = 11;
enum isc_dpb_disable_journal = 12;
enum isc_dpb_dbkey_scope = 13;
enum isc_dpb_number_of_users = 14;
enum isc_dpb_trace = 15;
enum isc_dpb_no_garbage_collect = 16;
enum isc_dpb_damaged = 17;
enum isc_dpb_license = 18;
enum isc_dpb_sys_user_name = 19;
enum isc_dpb_encrypt_key = 20;
enum isc_dpb_activate_shadow = 21;
enum isc_dpb_sweep_interval = 22;
enum isc_dpb_delete_shadow = 23;
enum isc_dpb_force_write = 24;
enum isc_dpb_begin_log = 25;
enum isc_dpb_quit_log = 26;
enum isc_dpb_no_reserve = 27;
enum isc_dpb_user_name = 28;
enum isc_dpb_password = 29;
enum isc_dpb_password_enc = 30;
enum isc_dpb_sys_user_name_enc = 31;
enum isc_dpb_interp = 32;
enum isc_dpb_online_dump = 33;
enum isc_dpb_old_file_size = 34;
enum isc_dpb_old_num_files = 35;
enum isc_dpb_old_file = 36;
enum isc_dpb_old_start_page = 37;
enum isc_dpb_old_start_seqno = 38;
enum isc_dpb_old_start_file = 39;
enum isc_dpb_drop_walfile = 40;
enum isc_dpb_old_dump_id = 41;
enum isc_dpb_wal_backup_dir = 42;
enum isc_dpb_wal_chkptlen = 43;
enum isc_dpb_wal_numbufs = 44;
enum isc_dpb_wal_bufsize = 45;
enum isc_dpb_wal_grp_cmt_wait = 46;
enum isc_dpb_lc_messages = 47;
enum isc_dpb_lc_ctype = 48;
enum isc_dpb_cache_manager = 49;
enum isc_dpb_shutdown = 50;
enum isc_dpb_online = 51;
enum isc_dpb_shutdown_delay = 52;
enum isc_dpb_reserved = 53;
enum isc_dpb_overwrite = 54;
enum isc_dpb_sec_attach = 55;
enum isc_dpb_disable_wal = 56;
enum isc_dpb_connect_timeout = 57;
enum isc_dpb_dummy_packet_interval = 58;
enum isc_dpb_gbak_attach = 59;
enum isc_dpb_sql_role_name = 60;
enum isc_dpb_set_page_buffers = 61;
enum isc_dpb_working_directory = 62;
enum isc_dpb_sql_dialect = 63;
enum isc_dpb_set_db_readonly = 64;
enum isc_dpb_set_db_sql_dialect = 65;
enum isc_dpb_gfix_attach = 66;
enum isc_dpb_gstat_attach = 67;
enum isc_dpb_set_db_charset = 68;
enum isc_dpb_gsec_attach = 69;
enum isc_dpb_address_path = 70;
enum isc_dpb_process_id = 71;
enum isc_dpb_no_db_triggers = 72;
enum isc_dpb_trusted_auth = 73;
enum isc_dpb_process_name = 74;
enum isc_dpb_trusted_role = 75;
enum isc_dpb_org_filename = 76;
enum isc_dpb_utf8_filename = 77;
enum isc_dpb_ext_call_depth = 78;
// Red Database parameters
enum isc_dpb_multi_factor_auth = 150;
enum isc_dpb_certificate = 151;
enum isc_dpb_repository_name = 152;
enum isc_dpb_eye = 153;
enum isc_dpb_session_key = 154;
enum isc_dpb_session_key_iv = 155;
enum isc_dpb_verify_server = 156;
enum isc_dpb_hw_address = 157;
enum isc_dpb_certificate_body = 158;
enum isc_dpb_repository_pin = 159;

/**************************************************/
/* clumplet tags used inside isc_dpb_address_path */
/*             and isc_spb_address_path */
/**************************************************/

/* Format of this clumplet is the following:

 <address-path-clumplet> ::=
  isc_dpb_address_path <byte-clumplet-length> <address-stack>

 <address-stack> ::=
  <address-descriptor> |
  <address-stack> <address-descriptor>

 <address-descriptor> ::=
  isc_dpb_address <byte-clumplet-length> <address-elements>

 <address-elements> ::=
  <address-element> |
  <address-elements> <address-element>

 <address-element> ::=
  isc_dpb_addr_protocol <byte-clumplet-length> <protocol-string> |
  isc_dpb_addr_endpoint <byte-clumplet-length> <remote-endpoint-string>

 <protocol-string> ::=
  "TCPv4" |
  "TCPv6" |
  "XNET" |
  "WNET" |
  ....

 <remote-endpoint-string> ::=
  <IPv4-address> | // such as "172.20.1.1"
  <IPv6-address> | // such as "2001:0:13FF:09FF::1"
  <xnet-process-id> | // such as "17864"
  ...
*/

enum isc_dpb_address = 1;

enum isc_dpb_addr_protocol = 1;
enum isc_dpb_addr_endpoint = 2;

/*********************************/
/* isc_dpb_verify specific flags */
/*********************************/

enum isc_dpb_pages = 1;
enum isc_dpb_records = 2;
enum isc_dpb_indices = 4;
enum isc_dpb_transactions = 8;
enum isc_dpb_no_update = 16;
enum isc_dpb_repair = 32;
enum isc_dpb_ignore = 64;

/***********************************/
/* isc_dpb_shutdown specific flags */
/***********************************/

enum isc_dpb_shut_cache = 0x1;
enum isc_dpb_shut_attachment = 0x2;
enum isc_dpb_shut_transaction = 0x4;
enum isc_dpb_shut_force = 0x8;
enum isc_dpb_shut_mode_mask = 0x70;

enum isc_dpb_shut_default = 0x0;
enum isc_dpb_shut_normal = 0x10;
enum isc_dpb_shut_multi = 0x20;
enum isc_dpb_shut_single = 0x30;
enum isc_dpb_shut_full = 0x40;

/**************************************/
/* Bit assignments in RDB$SYSTEM_FLAG */
/**************************************/

enum RDB_system = 1;
enum RDB_id_assigned = 2;
/* 2 is for QLI. See jrd/constants.h for more Firebird-specific values. */


/*************************************/
/* Transaction parameter block stuff */
/*************************************/

enum isc_tpb_version1 = 1;
enum isc_tpb_version3 = 3;
enum isc_tpb_consistency = 1;
enum isc_tpb_concurrency = 2;
enum isc_tpb_shared = 3;
enum isc_tpb_protected = 4;
enum isc_tpb_exclusive = 5;
enum isc_tpb_wait = 6;
enum isc_tpb_nowait = 7;
enum isc_tpb_read = 8;
enum isc_tpb_write = 9;
enum isc_tpb_lock_read = 10;
enum isc_tpb_lock_write = 11;
enum isc_tpb_verb_time = 12;
enum isc_tpb_commit_time = 13;
enum isc_tpb_ignore_limbo = 14;
enum isc_tpb_read_committed = 15;
enum isc_tpb_autocommit = 16;
enum isc_tpb_rec_version = 17;
enum isc_tpb_no_rec_version = 18;
enum isc_tpb_restart_requests = 19;
enum isc_tpb_no_auto_undo = 20;
enum isc_tpb_lock_timeout = 21;


/************************/
/* Blob Parameter Block */
/************************/

enum isc_bpb_version1 = 1;
enum isc_bpb_source_type = 1;
enum isc_bpb_target_type = 2;
enum isc_bpb_type = 3;
enum isc_bpb_source_interp = 4;
enum isc_bpb_target_interp = 5;
enum isc_bpb_filter_parameter = 6;
enum isc_bpb_storage = 7;

enum isc_bpb_type_segmented = 0x0;
enum isc_bpb_type_stream = 0x1;
enum isc_bpb_storage_main = 0x0;
enum isc_bpb_storage_temp = 0x2;


/*********************************/
/* Service parameter block stuff */
/*********************************/

enum isc_spb_version1 = 1;
enum isc_spb_current_version = 2;
enum isc_spb_version = isc_spb_current_version;
enum isc_spb_user_name = isc_dpb_user_name;
enum isc_spb_sys_user_name = isc_dpb_sys_user_name;
enum isc_spb_sys_user_name_enc = isc_dpb_sys_user_name_enc;
enum isc_spb_password = isc_dpb_password;
enum isc_spb_password_enc = isc_dpb_password_enc;
enum isc_spb_command_line = 105;
enum isc_spb_dbname = 106;
enum isc_spb_verbose = 107;
enum isc_spb_options = 108;
enum isc_spb_address_path = 109;
enum isc_spb_process_id = 110;
enum isc_spb_trusted_auth = 111;
enum isc_spb_process_name = 112;
enum isc_spb_trusted_role = 113;
enum isc_spb_skip_data = 114;
// Red database parameters
enum isc_spb_multi_factor_auth = 150;
enum isc_spb_certificate = 151;
enum isc_spb_repository_name = 152;
enum isc_spb_eye = 153;
enum isc_spb_session_key = 154;
enum isc_spb_session_key_iv = 155;
enum isc_spb_svc_name = 156;
enum isc_spb_verify_server = 157;
enum isc_spb_hw_address = 158;
enum isc_spb_repository_pin = 159;

enum isc_spb_connect_timeout = isc_dpb_connect_timeout;
enum isc_spb_dummy_packet_interval = isc_dpb_dummy_packet_interval;
enum isc_spb_sql_role_name = isc_dpb_sql_role_name;

/*****************************
 * Service action items      *
 *****************************/

enum isc_action_svc_backup = 1;  /* Starts database backup process on the server */
enum isc_action_svc_restore = 2;  /* Starts database restore process on the server */
enum isc_action_svc_repair = 3;  /* Starts database repair process on the server */
enum isc_action_svc_add_user = 4;  /* Adds a new user to the security database */
enum isc_action_svc_delete_user = 5;  /* Deletes a user record from the security database */
enum isc_action_svc_modify_user = 6;  /* Modifies a user record in the security database */
enum isc_action_svc_display_user = 7;  /* Displays a user record from the security database */
enum isc_action_svc_properties = 8;  /* Sets database properties */
enum isc_action_svc_add_license = 9;  /* Adds a license to the license file */
enum isc_action_svc_remove_license = 10;  /* Removes a license from the license file */
enum isc_action_svc_db_stats = 11;  /* Retrieves database statistics */
enum isc_action_svc_get_ib_log = 12;  /* Retrieves the InterBase log file from the server */
enum isc_action_svc_get_fb_log = 12;  /* Retrieves the Firebird log file from the server */
enum isc_action_svc_nbak = 20;  /* Incremental nbackup */
enum isc_action_svc_nrest = 21;  /* Incremental database restore */
enum isc_action_svc_trace_start = 22;  // Start trace session
enum isc_action_svc_trace_stop = 23;  // Stop trace session
enum isc_action_svc_trace_suspend = 24;  // Suspend trace session
enum isc_action_svc_trace_resume = 25;  // Resume trace session
enum isc_action_svc_trace_list = 26;  // List existing sessions
enum isc_action_svc_set_mapping = 27;  // Set auto admins mapping in security database
enum isc_action_svc_drop_mapping = 28;  // Drop auto admins mapping in security database
enum isc_action_svc_display_user_adm = 29;  // Displays user(s) from security database with admin info
enum isc_action_svc_last = 30;  // keep it last !

/*****************************
 * Service information items *
 *****************************/

enum isc_info_svc_svr_db_info = 50;  /* Retrieves the number of attachments and databases */
enum isc_info_svc_get_license = 51;  /* Retrieves all license keys and IDs from the license file */
enum isc_info_svc_get_license_mask = 52;  /* Retrieves a bitmask representing licensed options on the server */
enum isc_info_svc_get_config = 53;  /* Retrieves the parameters and values for IB_CONFIG */
enum isc_info_svc_version = 54;  /* Retrieves the version of the services manager */
enum isc_info_svc_server_version = 55;  /* Retrieves the version of the Firebird server */
enum isc_info_svc_implementation = 56;  /* Retrieves the implementation of the Firebird server */
enum isc_info_svc_capabilities = 57;  /* Retrieves a bitmask representing the server's capabilities */
enum isc_info_svc_user_dbpath = 58;  /* Retrieves the path to the security database in use by the server */
enum isc_info_svc_get_env = 59;  /* Retrieves the setting of $FIREBIRD */
enum isc_info_svc_get_env_lock = 60;  /* Retrieves the setting of $FIREBIRD_LCK */
enum isc_info_svc_get_env_msg = 61;  /* Retrieves the setting of $FIREBIRD_MSG */
enum isc_info_svc_line = 62;  /* Retrieves 1 line of service output per call */
enum isc_info_svc_to_eof = 63;  /* Retrieves as much of the server output as will fit in the supplied buffer */
enum isc_info_svc_timeout = 64;  /* Sets / signifies a timeout value for reading service information */
enum isc_info_svc_get_licensed_users = 65;  /* Retrieves the number of users licensed for accessing the server */
enum isc_info_svc_limbo_trans = 66;  /* Retrieve the limbo transactions */
enum isc_info_svc_running = 67;  /* Checks to see if a service is running on an attachment */
enum isc_info_svc_get_users = 68;  /* Returns the user information from isc_action_svc_display_users */
enum isc_info_svc_stdin = 78;  /* Returns size of data, needed as stdin for service */

/******************************************************
 * Parameters for isc_action_{add|del|mod|disp)_user  *
 ******************************************************/

enum isc_spb_sec_userid = 5;
enum isc_spb_sec_groupid = 6;
enum isc_spb_sec_username = 7;
enum isc_spb_sec_password = 8;
enum isc_spb_sec_groupname = 9;
enum isc_spb_sec_firstname = 10;
enum isc_spb_sec_middlename = 11;
enum isc_spb_sec_lastname = 12;
enum isc_spb_sec_admin = 13;

/*******************************************************
 * Parameters for isc_action_svc_(add|remove)_license, *
 * isc_info_svc_get_license                            *
 *******************************************************/

enum isc_spb_lic_key = 5;
enum isc_spb_lic_id = 6;
enum isc_spb_lic_desc = 7;


/*****************************************
 * Parameters for isc_action_svc_backup  *
 *****************************************/

enum isc_spb_bkp_file = 5;
enum isc_spb_bkp_factor = 6;
enum isc_spb_bkp_length = 7;
enum isc_spb_bkp_ignore_checksums = 0x01;
enum isc_spb_bkp_ignore_limbo = 0x02;
enum isc_spb_bkp_metadata_only = 0x04;
enum isc_spb_bkp_no_garbage_collect = 0x08;
enum isc_spb_bkp_old_descriptions = 0x10;
enum isc_spb_bkp_non_transportable = 0x20;
enum isc_spb_bkp_convert = 0x40;
enum isc_spb_bkp_expand = 0x80;
enum isc_spb_bkp_no_triggers = 0x8000;

/********************************************
 * Parameters for isc_action_svc_properties *
 ********************************************/

enum isc_spb_prp_page_buffers = 5;
enum isc_spb_prp_sweep_interval = 6;
enum isc_spb_prp_shutdown_db = 7;
enum isc_spb_prp_deny_new_attachments = 9;
enum isc_spb_prp_deny_new_transactions = 10;
enum isc_spb_prp_reserve_space = 11;
enum isc_spb_prp_write_mode = 12;
enum isc_spb_prp_access_mode = 13;
enum isc_spb_prp_set_sql_dialect = 14;
enum isc_spb_prp_activate = 0x0100;
enum isc_spb_prp_db_online = 0x0200;
enum isc_spb_prp_force_shutdown = 41;
enum isc_spb_prp_attachments_shutdown = 42;
enum isc_spb_prp_transactions_shutdown = 43;
enum isc_spb_prp_shutdown_mode = 44;
enum isc_spb_prp_online_mode = 45;

/********************************************
 * Parameters for isc_spb_prp_shutdown_mode *
 *            and isc_spb_prp_online_mode   *
 ********************************************/
enum isc_spb_prp_sm_normal = 0;
enum isc_spb_prp_sm_multi = 1;
enum isc_spb_prp_sm_single = 2;
enum isc_spb_prp_sm_full = 3;

/********************************************
 * Parameters for isc_spb_prp_reserve_space *
 ********************************************/

enum isc_spb_prp_res_use_full = 35;
enum isc_spb_prp_res = 36;

/******************************************
 * Parameters for isc_spb_prp_write_mode  *
 ******************************************/

enum isc_spb_prp_wm_async = 37;
enum isc_spb_prp_wm_sync = 38;

/******************************************
 * Parameters for isc_spb_prp_access_mode *
 ******************************************/

enum isc_spb_prp_am_readonly = 39;
enum isc_spb_prp_am_readwrite = 40;

/*****************************************
 * Parameters for isc_action_svc_repair  *
 *****************************************/

enum isc_spb_rpr_commit_trans = 15;
enum isc_spb_rpr_rollback_trans = 34;
enum isc_spb_rpr_recover_two_phase = 17;
enum isc_spb_tra_id = 18;
enum isc_spb_single_tra_id = 19;
enum isc_spb_multi_tra_id = 20;
enum isc_spb_tra_state = 21;
enum isc_spb_tra_state_limbo = 22;
enum isc_spb_tra_state_commit = 23;
enum isc_spb_tra_state_rollback = 24;
enum isc_spb_tra_state_unknown = 25;
enum isc_spb_tra_host_site = 26;
enum isc_spb_tra_remote_site = 27;
enum isc_spb_tra_db_path = 28;
enum isc_spb_tra_advise = 29;
enum isc_spb_tra_advise_commit = 30;
enum isc_spb_tra_advise_rollback = 31;
enum isc_spb_tra_advise_unknown = 33;

enum isc_spb_rpr_validate_db = 0x01;
enum isc_spb_rpr_sweep_db = 0x02;
enum isc_spb_rpr_mend_db = 0x04;
enum isc_spb_rpr_list_limbo_trans = 0x08;
enum isc_spb_rpr_check_db = 0x10;
enum isc_spb_rpr_ignore_checksum = 0x20;
enum isc_spb_rpr_kill_shadows = 0x40;
enum isc_spb_rpr_full = 0x80;

/*****************************************
 * Parameters for isc_action_svc_restore *
 *****************************************/

enum isc_spb_res_buffers = 9;
enum isc_spb_res_page_size = 10;
enum isc_spb_res_length = 11;
enum isc_spb_res_access_mode = 12;
enum isc_spb_res_fix_fss_data = 13;
enum isc_spb_res_fix_fss_metadata = 14;
enum isc_spb_res_metadata_only = isc_spb_bkp_metadata_only;
enum isc_spb_res_deactivate_idx = 0x0100;
enum isc_spb_res_no_shadow = 0x0200;
enum isc_spb_res_no_validity = 0x0400;
enum isc_spb_res_one_at_a_time = 0x0800;
enum isc_spb_res_replace = 0x1000;
enum isc_spb_res_create = 0x2000;
enum isc_spb_res_use_all_space = 0x4000;

/******************************************
 * Parameters for isc_spb_res_access_mode  *
 ******************************************/

enum isc_spb_res_am_readonly = isc_spb_prp_am_readonly;
enum isc_spb_res_am_readwrite = isc_spb_prp_am_readwrite;

/*******************************************
 * Parameters for isc_info_svc_svr_db_info *
 *******************************************/

enum isc_spb_num_att = 5;
enum isc_spb_num_db = 6;

/*****************************************
 * Parameters for isc_info_svc_db_stats  *
 *****************************************/

enum isc_spb_sts_data_pages = 0x01;
enum isc_spb_sts_db_log = 0x02;
enum isc_spb_sts_hdr_pages = 0x04;
enum isc_spb_sts_idx_pages = 0x08;
enum isc_spb_sts_sys_relations = 0x10;
enum isc_spb_sts_record_versions = 0x20;
enum isc_spb_sts_table = 0x40;
enum isc_spb_sts_nocreation = 0x80;

/***********************************/
/* Server configuration key values */
/***********************************/

/* Not available in Firebird 1.5 */

/***************************************
 * Parameters for isc_action_svc_nbak  *
 ***************************************/

enum isc_spb_nbk_level = 5;
enum isc_spb_nbk_file = 6;
enum isc_spb_nbk_direct = 7;
enum isc_spb_nbk_no_triggers = 0x01;

/***************************************
 * Parameters for isc_action_svc_trace *
 ***************************************/

enum isc_spb_trc_id = 1;
enum isc_spb_trc_name = 2;
enum isc_spb_trc_cfg = 3;

/**********************************************/
/* Dynamic Data Definition Language operators */
/**********************************************/

/******************/
/* Version number */
/******************/

enum isc_dyn_version_1 = 1;
enum isc_dyn_eoc = 255;

/******************************/
/* Operations (may be nested) */
/******************************/

enum isc_dyn_begin = 2;
enum isc_dyn_end = 3;
enum isc_dyn_if = 4;
enum isc_dyn_def_database = 5;
enum isc_dyn_def_global_fld = 6;
enum isc_dyn_def_local_fld = 7;
enum isc_dyn_def_idx = 8;
enum isc_dyn_def_rel = 9;
enum isc_dyn_def_sql_fld = 10;
enum isc_dyn_def_view = 12;
enum isc_dyn_def_trigger = 15;
enum isc_dyn_def_security_class = 120;
enum isc_dyn_def_dimension = 140;
enum isc_dyn_def_generator = 24;
enum isc_dyn_def_function = 25;
enum isc_dyn_def_filter = 26;
enum isc_dyn_def_function_arg = 27;
enum isc_dyn_def_shadow = 34;
enum isc_dyn_def_trigger_msg = 17;
enum isc_dyn_def_file = 36;
enum isc_dyn_mod_database = 39;
enum isc_dyn_mod_rel = 11;
enum isc_dyn_mod_global_fld = 13;
enum isc_dyn_mod_idx = 102;
enum isc_dyn_mod_local_fld = 14;
enum isc_dyn_mod_sql_fld = 216;
enum isc_dyn_mod_view = 16;
enum isc_dyn_mod_security_class = 122;
enum isc_dyn_mod_trigger = 113;
enum isc_dyn_mod_trigger_msg = 28;
enum isc_dyn_delete_database = 18;
enum isc_dyn_delete_rel = 19;
enum isc_dyn_delete_global_fld = 20;
enum isc_dyn_delete_local_fld = 21;
enum isc_dyn_delete_idx = 22;
enum isc_dyn_delete_security_class = 123;
enum isc_dyn_delete_dimensions = 143;
enum isc_dyn_delete_trigger = 23;
enum isc_dyn_delete_trigger_msg = 29;
enum isc_dyn_delete_filter = 32;
enum isc_dyn_delete_function = 33;
enum isc_dyn_delete_shadow = 35;
enum isc_dyn_grant = 30;
enum isc_dyn_revoke = 31;
enum isc_dyn_revoke_all = 246;
enum isc_dyn_def_primary_key = 37;
enum isc_dyn_def_foreign_key = 38;
enum isc_dyn_def_unique = 40;
enum isc_dyn_def_procedure = 164;
enum isc_dyn_delete_procedure = 165;
enum isc_dyn_def_parameter = 135;
enum isc_dyn_delete_parameter = 136;
enum isc_dyn_mod_procedure = 175;
/* Deprecated.
enum isc_dyn_def_log_file = 176;
enum isc_dyn_def_cache_file = 180;
*/
enum isc_dyn_def_exception = 181;
enum isc_dyn_mod_exception = 182;
enum isc_dyn_del_exception = 183;
/* Deprecated.
enum isc_dyn_drop_log = 194;
enum isc_dyn_drop_cache = 195;
enum isc_dyn_def_default_log = 202;
*/
enum isc_dyn_def_difference = 220;
enum isc_dyn_drop_difference = 221;
enum isc_dyn_begin_backup = 222;
enum isc_dyn_end_backup = 223;
enum isc_dyn_debug_info = 240;
enum isc_dyn_def_policy = 247;
enum isc_dyn_mod_policy = 248;
enum isc_dyn_del_policy = 249;
enum isc_dyn_grant_policy = 250;
enum isc_dyn_reset_user = 251;

enum isc_dyn_def_ext_lang = 241;
enum isc_dyn_def_ext_name = 242;

/******************************/
/* Policy attributes specific */
/******************************/
enum isc_dyn_policy_auth_factors = 10;
enum isc_dyn_policy_pswd_need_char = 11;
enum isc_dyn_policy_pswd_need_digit = 12;
enum isc_dyn_policy_pswd_need_diff_case = 13;
enum isc_dyn_policy_pswd_min_len = 14;
enum isc_dyn_policy_pswd_valid_days = 15;
enum isc_dyn_policy_unique_count = 16;
enum isc_dyn_policy_max_failed_count = 17;
enum isc_dyn_policy_max_sessions = 18;
enum isc_dyn_policy_max_idle_time = 19;
enum isc_dyn_grantee_policy_user = 20;

/***********************/
/* View specific stuff */
/***********************/

enum isc_dyn_view_blr = 43;
enum isc_dyn_view_source = 44;
enum isc_dyn_view_relation = 45;
enum isc_dyn_view_context = 46;
enum isc_dyn_view_context_name = 47;

/**********************/
/* Generic attributes */
/**********************/

enum isc_dyn_rel_name = 50;
enum isc_dyn_fld_name = 51;
enum isc_dyn_new_fld_name = 215;
enum isc_dyn_idx_name = 52;
enum isc_dyn_description = 53;
enum isc_dyn_security_class = 54;
enum isc_dyn_system_flag = 55;
enum isc_dyn_update_flag = 56;
enum isc_dyn_prc_name = 166;
enum isc_dyn_prm_name = 137;
enum isc_dyn_sql_object = 196;
enum isc_dyn_fld_character_set_name = 174;

// Added in RDB 2.1. Must decrement, to avoid
// future overlapping with FB arguments
enum isc_dyn_object_type = 255;
enum isc_dyn_gen_name = 254;

/********************************/
/* Relation specific attributes */
/********************************/

enum isc_dyn_rel_dbkey_length = 61;
enum isc_dyn_rel_store_trig = 62;
enum isc_dyn_rel_modify_trig = 63;
enum isc_dyn_rel_erase_trig = 64;
enum isc_dyn_rel_store_trig_source = 65;
enum isc_dyn_rel_modify_trig_source = 66;
enum isc_dyn_rel_erase_trig_source = 67;
enum isc_dyn_rel_ext_file = 68;
enum isc_dyn_rel_sql_protection = 69;
enum isc_dyn_rel_constraint = 162;
enum isc_dyn_delete_rel_constraint = 163;
enum isc_dyn_rel_adapter = 247;

enum isc_dyn_rel_temporary = 238;
enum isc_dyn_rel_temp_global_preserve = 1;
enum isc_dyn_rel_temp_global_delete = 2;

/************************************/
/* Global field specific attributes */
/************************************/

enum isc_dyn_fld_type = 70;
enum isc_dyn_fld_length = 71;
enum isc_dyn_fld_scale = 72;
enum isc_dyn_fld_sub_type = 73;
enum isc_dyn_fld_segment_length = 74;
enum isc_dyn_fld_query_header = 75;
enum isc_dyn_fld_edit_string = 76;
enum isc_dyn_fld_validation_blr = 77;
enum isc_dyn_fld_validation_source = 78;
enum isc_dyn_fld_computed_blr = 79;
enum isc_dyn_fld_computed_source = 80;
enum isc_dyn_fld_missing_value = 81;
enum isc_dyn_fld_default_value = 82;
enum isc_dyn_fld_query_name = 83;
enum isc_dyn_fld_dimensions = 84;
enum isc_dyn_fld_not_null = 85;
enum isc_dyn_fld_precision = 86;
enum isc_dyn_fld_char_length = 172;
enum isc_dyn_fld_collation = 173;
enum isc_dyn_fld_default_source = 193;
enum isc_dyn_del_default = 197;
enum isc_dyn_del_validation = 198;
enum isc_dyn_single_validation = 199;
enum isc_dyn_fld_character_set = 203;
enum isc_dyn_del_computed = 242;

/***********************************/
/* Local field specific attributes */
/***********************************/

enum isc_dyn_fld_source = 90;
enum isc_dyn_fld_base_fld = 91;
enum isc_dyn_fld_position = 92;
enum isc_dyn_fld_update_flag = 93;

/*****************************/
/* Index specific attributes */
/*****************************/

enum isc_dyn_idx_unique = 100;
enum isc_dyn_idx_inactive = 101;
enum isc_dyn_idx_type = 103;
enum isc_dyn_idx_foreign_key = 104;
enum isc_dyn_idx_ref_column = 105;
enum isc_dyn_idx_statistic = 204;

/*******************************/
/* Trigger specific attributes */
/*******************************/

enum isc_dyn_trg_type = 110;
enum isc_dyn_trg_blr = 111;
enum isc_dyn_trg_source = 112;
enum isc_dyn_trg_name = 114;
enum isc_dyn_trg_sequence = 115;
enum isc_dyn_trg_inactive = 116;
enum isc_dyn_trg_msg_number = 117;
enum isc_dyn_trg_msg = 118;

/**************************************/
/* Security Class specific attributes */
/**************************************/

enum isc_dyn_scl_acl = 121;
enum isc_dyn_grant_user = 130;
enum isc_dyn_grant_user_explicit = 219;
enum isc_dyn_grant_proc = 186;
enum isc_dyn_grant_trig = 187;
enum isc_dyn_grant_view = 188;
enum isc_dyn_grant_options = 132;
enum isc_dyn_grant_user_group = 205;
enum isc_dyn_grant_role = 218;
enum isc_dyn_grant_grantor = 245;


/**********************************/
/* Dimension specific information */
/**********************************/

enum isc_dyn_dim_lower = 141;
enum isc_dyn_dim_upper = 142;

/****************************/
/* File specific attributes */
/****************************/

enum isc_dyn_file_name = 125;
enum isc_dyn_file_start = 126;
enum isc_dyn_file_length = 127;
enum isc_dyn_shadow_number = 128;
enum isc_dyn_shadow_man_auto = 129;
enum isc_dyn_shadow_conditional = 130;

/********************************/
/* Log file specific attributes */
/********************************/
/* Deprecated.
enum isc_dyn_log_file_sequence = 177;
enum isc_dyn_log_file_partitions = 178;
enum isc_dyn_log_file_serial = 179;
enum isc_dyn_log_file_overflow = 200;
enum isc_dyn_log_file_raw = 201;
*/

/***************************/
/* Log specific attributes */
/***************************/
/* Deprecated.
enum isc_dyn_log_group_commit_wait = 189;
enum isc_dyn_log_buffer_size = 190;
enum isc_dyn_log_check_point_length = 191;
enum isc_dyn_log_num_of_buffers = 192;
*/

/********************************/
/* Function specific attributes */
/********************************/

enum isc_dyn_function_name = 145;
enum isc_dyn_function_type = 146;
enum isc_dyn_func_module_name = 147;
enum isc_dyn_func_entry_point = 148;
enum isc_dyn_func_return_argument = 149;
enum isc_dyn_func_arg_position = 150;
enum isc_dyn_func_mechanism = 151;
enum isc_dyn_filter_in_subtype = 152;
enum isc_dyn_filter_out_subtype = 153;


enum isc_dyn_description2 = 154;
enum isc_dyn_fld_computed_source2 = 155;
enum isc_dyn_fld_edit_string2 = 156;
enum isc_dyn_fld_query_header2 = 157;
enum isc_dyn_fld_validation_source2 = 158;
enum isc_dyn_trg_msg2 = 159;
enum isc_dyn_trg_source2 = 160;
enum isc_dyn_view_source2 = 161;
enum isc_dyn_xcp_msg2 = 184;

/*********************************/
/* Generator specific attributes */
/*********************************/

enum isc_dyn_generator_name = 95;
enum isc_dyn_generator_id = 96;

/*********************************/
/* Procedure specific attributes */
/*********************************/

enum isc_dyn_prc_inputs = 167;
enum isc_dyn_prc_outputs = 168;
enum isc_dyn_prc_source = 169;
enum isc_dyn_prc_blr = 170;
enum isc_dyn_prc_source2 = 171;
enum isc_dyn_prc_type = 239;
enum isc_dyn_prc_context = 248;

enum isc_dyn_prc_t_selectable = 1;
enum isc_dyn_prc_t_executable = 2;

/*********************************/
/* Parameter specific attributes */
/*********************************/

enum isc_dyn_prm_number = 138;
enum isc_dyn_prm_type = 139;
enum isc_dyn_prm_mechanism = 241;

/********************************/
/* Relation specific attributes */
/********************************/

enum isc_dyn_xcp_msg = 185;

/**********************************************/
/* Cascading referential integrity values     */
/**********************************************/
enum isc_dyn_foreign_key_update = 205;
enum isc_dyn_foreign_key_delete = 206;
enum isc_dyn_foreign_key_cascade = 207;
enum isc_dyn_foreign_key_default = 208;
enum isc_dyn_foreign_key_null = 209;
enum isc_dyn_foreign_key_none = 210;

/***********************/
/* SQL role values     */
/***********************/
enum isc_dyn_def_sql_role = 211;
enum isc_dyn_sql_role_name = 212;
enum isc_dyn_grant_admin_options = 213;
enum isc_dyn_del_sql_role = 214;
/* 215 & 216 are used some lines above. */

/**********************************************/
/* Generators again                           */
/**********************************************/

enum isc_dyn_delete_generator = 217;

// New for comments in objects.
enum isc_dyn_mod_function = 224;
enum isc_dyn_mod_filter = 225;
enum isc_dyn_mod_generator = 226;
enum isc_dyn_mod_sql_role = 227;
enum isc_dyn_mod_charset = 228;
enum isc_dyn_mod_collation = 229;
enum isc_dyn_mod_prc_parameter = 230;

/***********************/
/* collation values    */
/***********************/
enum isc_dyn_def_collation = 231;
enum isc_dyn_coll_for_charset = 232;
enum isc_dyn_coll_from = 233;
enum isc_dyn_coll_from_external = 239;
enum isc_dyn_coll_attribute = 234;
enum isc_dyn_coll_specific_attributes_charset = 235;
enum isc_dyn_coll_specific_attributes = 236;
enum isc_dyn_del_collation = 237;

/******************************************/
/* Mapping OS security objects to DB ones */
/******************************************/
enum isc_dyn_mapping = 243;
enum isc_dyn_map_role = 1;
enum isc_dyn_unmap_role = 2;
enum isc_dyn_map_user = 3;
enum isc_dyn_unmap_user = 4;
enum isc_dyn_automap_role = 5;
enum isc_dyn_autounmap_role = 6;

/********************/
/* Users control    */
/********************/
enum isc_dyn_user = 244;
enum isc_dyn_user_add = 1;
enum isc_dyn_user_mod = 2;
enum isc_dyn_user_del = 3;
enum isc_dyn_user_passwd = 4;
enum isc_dyn_user_first = 5;
enum isc_dyn_user_middle = 6;
enum isc_dyn_user_last = 7;
enum isc_dyn_user_admin = 8;
enum isc_user_end = 0;

/****************************/
/* Last $dyn value assigned */
/****************************/
enum isc_dyn_last_dyn_value = 252;

/******************************************/
/* Array slice description language (SDL) */
/******************************************/

enum isc_sdl_version1 = 1;
enum isc_sdl_eoc = 255;
enum isc_sdl_relation = 2;
enum isc_sdl_rid = 3;
enum isc_sdl_field = 4;
enum isc_sdl_fid = 5;
enum isc_sdl_struct = 6;
enum isc_sdl_variable = 7;
enum isc_sdl_scalar = 8;
enum isc_sdl_tiny_integer = 9;
enum isc_sdl_short_integer = 10;
enum isc_sdl_long_integer = 11;
enum isc_sdl_literal = 12;
enum isc_sdl_add = 13;
enum isc_sdl_subtract = 14;
enum isc_sdl_multiply = 15;
enum isc_sdl_divide = 16;
enum isc_sdl_negate = 17;
enum isc_sdl_eql = 18;
enum isc_sdl_neq = 19;
enum isc_sdl_gtr = 20;
enum isc_sdl_geq = 21;
enum isc_sdl_lss = 22;
enum isc_sdl_leq = 23;
enum isc_sdl_and = 24;
enum isc_sdl_or = 25;
enum isc_sdl_not = 26;
enum isc_sdl_while = 27;
enum isc_sdl_assignment = 28;
enum isc_sdl_label = 29;
enum isc_sdl_leave = 30;
enum isc_sdl_begin = 31;
enum isc_sdl_end = 32;
enum isc_sdl_do3 = 33;
enum isc_sdl_do2 = 34;
enum isc_sdl_do1 = 35;
enum isc_sdl_element = 36;

/********************************************/
/* International text interpretation values */
/********************************************/

enum isc_interp_eng_ascii = 0;
enum isc_interp_jpn_sjis = 5;
enum isc_interp_jpn_euc = 6;

/*****************/
/* Blob Subtypes */
/*****************/

/* types less than zero are reserved for customer use */

enum isc_blob_untyped = 0;

/* internal subtypes */

enum isc_blob_text = 1;
enum isc_blob_blr = 2;
enum isc_blob_acl = 3;
enum isc_blob_ranges = 4;
enum isc_blob_summary = 5;
enum isc_blob_format = 6;
enum isc_blob_tra = 7;
enum isc_blob_extfile = 8;
enum isc_blob_debug_info = 9;
enum isc_blob_max_predefined_subtype = 10;

/* the range 20-30 is reserved for dBASE and Paradox types */

enum isc_blob_formatted_memo = 20;
enum isc_blob_paradox_ole = 21;
enum isc_blob_graphic = 22;
enum isc_blob_dbase_ole = 23;
enum isc_blob_typed_binary = 24;

/* Deprecated definitions maintained for compatibility only */

enum isc_info_db_SQL_dialect = 62;
enum isc_dpb_SQL_dialect = 63;
enum isc_dpb_set_db_SQL_dialect = 65;

/***********************************/
/* Masks for fb_shutdown_callback  */
/***********************************/

enum fb_shut_confirmation = 1;
enum fb_shut_preproviders = 2;
enum fb_shut_postproviders = 4;
enum fb_shut_finish = 8;

/****************************************/
/* Shutdown reasons, used by engine     */
/* Users should provide positive values */
/****************************************/

enum fb_shutrsn_svc_stopped = 1;
enum fb_shutrsn_no_connection = 2;
enum fb_shutrsn_app_stopped = 3;
enum fb_shutrsn_device_removed = 4;
enum fb_shutrsn_signal = 5;
enum fb_shutrsn_services = 6;
enum fb_shutrsn_exit_called = 7;

/****************************************/
/* Cancel types for fb_cancel_operation */
/****************************************/

enum fb_cancel_disable = 1;
enum fb_cancel_enable = 2;
enum fb_cancel_raise = 3;
enum fb_cancel_abort = 4;

/********************************************/
/* Debug information items          */
/********************************************/

enum fb_dbg_version = 1;
enum fb_dbg_end = 255;
enum fb_dbg_map_src2blr = 2;
enum fb_dbg_map_varname = 3;
enum fb_dbg_map_argument = 4;

// sub code for fb_dbg_map_argument
enum fb_dbg_arg_input = 0;
enum fb_dbg_arg_output = 1;
