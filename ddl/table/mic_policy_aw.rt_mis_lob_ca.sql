CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_lob_ca (
	gid numeric(22,0),
	entity_type varchar(64),
	add_entity_type varchar(64),
	mod_entity_type varchar(64),
	del_entity_type varchar(64),
	entity_reference varchar(64),
	fk_column_name varchar(64),
	fk_column_value numeric(22,0),
	add_entity_reference varchar(64),
	mod_entity_reference varchar(64),
	del_entity_reference varchar(64),
	entity_status varchar(32),
	entity_is_locked char(1),
	id numeric(22,0),
	date_created date,
	user_created varchar(128),
	date_modified date,
	user_modified varchar(128),
	date_deleted date,
	audit_flag varchar(1),
	risk_state varchar(2),
	risk_state_stat_code varchar(2),
	risk_city_code varchar(5),
	product_code varchar(2),
	lob_code varchar(2),
	annual_premium numeric(22,0),
	transaction_premium numeric(22,0),
	written_premium numeric(22,0),
	balance_to_minimum numeric(22,0),
	deposit_premium numeric(22,0),
	full_term_premium numeric(22,0),
	trans_prem_not_sub_to_aud numeric(22,0),
	policy_lob_ca numeric(22,0),
	selected_coverage varchar(2),
	primary_state varchar(30),
	primary_state_code varchar(2),
	is_fleet char(1),
	is_debit_credit char(1),
	is_rate_dept char(1),
	is_com_reduct char(1),
	is_exp_rating char(1),
	audit_frequency varchar(15),
	audit_frequency_stat_code varchar(8),
	deposit_percentage numeric(22,0),
	override_deposit_pct numeric(22,0),
	override_deposit_premium numeric(22,0),
	policy_type varchar(4),
	heading_blnk_coll_cov varchar(1),
	auto_dealer_collision varchar(128),
	auto_dealer_coll_ded numeric(22,0),
	reposs_auto_collision varchar(128),
	reposs_auto_coll_ded numeric(22,0),
	auto_held_srv_collision varchar(128),
	auto_held_srv_coll_ded numeric(22,0),
	terrorism_coverage_code varchar(2),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	prd_cpp_lob_ca numeric(22,0),
	hazard_grade varchar(2),
	override_hazard_grade varchar(2),
	cov_disp_name varchar(128),
	heading_rating_plans varchar(1),
	cal_exp_ftr char(1),
	composite_rating char(1),
	schedule_rating_note varchar(1),
	is_audit char(1),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	heading_comp_rat_plans varchar(1),
	exp_full_trm_prm_excd varchar(2),
	renewal_rewards char(1),
	account_credit char(1),
	liability_transition_ftr numeric(22,0),
	physical_dmge_trans_ftr numeric(22,0),
	liability_assoc_grp_ftr numeric(22,0),
	phys_dmg_assoc_grp_ftr numeric(22,0),
	logger_credit_type varchar(128),
	logger_credit_factor numeric(22,0),
	liability_misc_ftr numeric(22,0),
	liability_misc_reason varchar(128),
	physical_dmge_misc_ftr numeric(22,0),
	physical_dmge_misc_reason varchar(128),
	val_copied varchar(128),
	val2_copied varchar(128),
	excd1_copied varchar(128),
	waive_coll_deductible char(1),
	prior_waived_adjustment numeric(22,0),
	heading_manual_ftr varchar(1),
	liability_manual_ftr numeric(22,0),
	physical_dmge_manual_ftr numeric(22,0),
	pri_st_loc_liab_csl numeric(22,0),
	pri_st_loc_liab_al numeric(22,0),
	pri_st_loc_liab_otr_al varchar(128),
	pri_st_loc_liab_ded numeric(22,0),
	pri_st_veh_liab_ded numeric(22,0),
	is_cov_manually_rated char(1),
	driver_name_mi varchar(4000),
	driver_name_il varchar(4000),
	apply_manual_ftr char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	pri_st_veh_liab_ded_type varchar(4),
	prd_ba_lob_ca numeric(22,0),
	is_new_business char(1),
	is_pri_st_no_sdl_rate char(1),
	heading_blnk_coll_cov_blk varchar(1),
	pri_st_loc_liab_ded_type varchar(4),
	is_cov_prorated char(1),
	extendttca12 varchar(1),
	first_auto_no numeric(22,0),
	heading_optional_cov varchar(1),
	enhanced_coverage char(1),
	enhancer_plus char(1),
	errors_ommisn_liab char(1),
	tier_rating char(1),
	heading_general_ques varchar(1),
	ans_general_ques char(1),
	selected_coverage_disp varchar(128),
	c_ca_liability varchar(1),
	c_heading_ca_veh_cov varchar(1),
	heading_lob_act_erromm varchar(1),
	lob_is_aol_liability varchar(1),
	head_lob_act_erromm_exclu varchar(1),
	lob_truth_exclusion varchar(1),
	lob_odometer_exclusion varchar(1),
	lob_insurance_agent_exclu varchar(1),
	exl_dmg_rent_prem_cover varchar(1),
	heading_loc_liab_excl varchar(1),
	exc_prods_work_perfd varchar(1),
	excl_persnl_inju_liab varchar(1),
	lob_title_exclusion varchar(1),
	ma_error_msg varchar(250),
	va_rule97 varchar(1),
	pa_mvd_option varchar(1),
	pa_err_msg varchar(1),
	naics_code varchar(64),
	naics_description varchar(128),
	powered_veh_code varchar(8),
	no_of_powered_veh numeric(22,0)
);

ALTER TABLE mic_policy_aw.rt_mis_lob_ca DROP CONSTRAINT IF EXISTS rt_mis_lob_ca_gid;
ALTER TABLE mic_policy_aw.rt_mis_lob_ca ADD CONSTRAINT rt_mis_lob_ca_gid PRIMARY KEY (gid);

