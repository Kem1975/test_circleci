CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_cov_ca_busi_intrp_ratng (
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
	audit_flag varchar(1),
	risk_state varchar(2),
	risk_state_stat_code varchar(2),
	risk_city_code varchar(5),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	product_code varchar(2),
	lob_code varchar(2),
	annual_premium numeric(22,0),
	transaction_premium numeric(22,0),
	written_premium numeric(22,0),
	balance_to_minimum numeric(22,0),
	deposit_premium numeric(22,0),
	full_term_premium numeric(22,0),
	trans_prem_not_sub_to_aud numeric(22,0),
	waived_premium numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	waive_indicator varchar(2),
	is_cov_manually_rated char(1),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	date_deleted date,
	is_sub_to_fully_earn char(1),
	is_sub_to_comm_red char(1),
	is_sub_to_fully_charge char(1),
	is_sub_to_exp_rating char(1),
	is_sub_to_schd_rating char(1),
	is_sub_to_irpm_rating char(1),
	is_cov_prorated char(1),
	cov_minimum_premium numeric(22,0),
	comm_red_factor numeric(22,0),
	experience_mod_fact numeric(22,0),
	schedule_mod_fact numeric(22,0),
	irpm_fact numeric(22,0),
	sys_start_date date,
	sys_end_date date,
	sys_is_auditable char(1),
	sys_is_split_on_audit char(1),
	busins_intrp_ratng_detail numeric(22,0),
	stat_terri_code varchar(3),
	csp_subline_code varchar(8),
	ex_bi_adcov_ftr numeric(22,0),
	bi_cov_waitp_ftr numeric(22,0),
	stat_ded_amount numeric(22,0),
	liab_ded_code varchar(8),
	state_excep varchar(8),
	limit_code varchar(8),
	agg_limit_ftr numeric(22,0),
	limit_identifr varchar(8),
	aslob varchar(3),
	type_of_coverage varchar(128),
	annl_prem_prior_sch_exp numeric(22,0),
	experience_mod numeric(22,0),
	des varchar(128),
	standard_factors numeric(22,0),
	is_suppress_print varchar(1),
	preferred_factor numeric(22,0),
	print_limits_desc varchar(4000),
	rating_function varchar(128),
	seq_number numeric(22,0),
	coverage_code varchar(32),
	rating_formula varchar(4000),
	print_cov_desc varchar(4000),
	cov_disp_name varchar(128),
	schedule_mod numeric(22,0),
	seq numeric(22,0),
	manual_premium numeric(22,0),
	classification_code varchar(5),
	risk_type varchar(128),
	name_uk varchar(128),
	loss_cost_multiplier numeric(22,0),
	loss_cost numeric(22,0),
	insu_exposre_ftr numeric(22,0),
	limits_identifier varchar(8),
	exposure varchar(8),
	agg_limit_indicator numeric(22,0),
	state_exception varchar(8),
	stat_terriotory varchar(3),
	liab_deductible_code varchar(8),
	stat_deductible_amount numeric(22,0),
	stat_zone_rating_code varchar(8),
	opt varchar(20),
	opt_id varchar(20),
	limit_of_insurence numeric(22,0),
	sub_coverage varchar(20),
	covd_cause_of_loss varchar(128),
	busi_inrpt_no_of_days_code varchar(8),
	busi_inrp_otc_cov_code varchar(8),
	busi_inrp_coll_code_b varchar(8),
	busi_inrp_coll_code varchar(8),
	busi_inrp_otc_cov_code_b varchar(8),
	bi_opt_b_exposure varchar(8),
	bi_opt_a_exposure varchar(8),
	busi_intrp_exposure_code varchar(8),
	physical_dmge_manual_ftr numeric(22,0)
);

ALTER TABLE mic_policy_aw.rt_mis_cov_ca_busi_intrp_ratng DROP CONSTRAINT IF EXISTS rt_mis_cov_ca_busi_intrp_ratng_gid;
ALTER TABLE mic_policy_aw.rt_mis_cov_ca_busi_intrp_ratng ADD CONSTRAINT rt_mis_cov_ca_busi_intrp_ratng_gid PRIMARY KEY (gid);

