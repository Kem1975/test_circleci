CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_cov_ca_tapes_records (
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
	is_sub_to_fully_earn char(1),
	is_sub_to_comm_red char(1),
	is_sub_to_fully_charge char(1),
	is_sub_to_exp_rating char(1),
	is_sub_to_schd_rating char(1),
	is_sub_to_irpm_rating char(1),
	cov_minimum_premium numeric(22,0),
	comm_red_factor numeric(22,0),
	experience_mod_fact numeric(22,0),
	schedule_mod_fact numeric(22,0),
	irpm_fact numeric(22,0),
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
	veh_tapes_records_cov numeric(22,0),
	coverage_code varchar(32),
	des varchar(4000),
	rating_function varchar(128),
	seq numeric(22,0),
	rating_formula varchar(4000),
	manual_premium numeric(22,0),
	loss_cost numeric(22,0),
	loss_cost_multiplier numeric(22,0),
	aslob numeric(22,0),
	csp_subline_code varchar(8),
	state_exception varchar(8),
	stat_code varchar(8),
	age_group_code varchar(8),
	per_rating_unit_code varchar(8),
	zone_rating_code varchar(8),
	price_bracket numeric(22,0),
	stat_deductible_amount numeric(22,0),
	stat_terriotory varchar(3),
	exposure varchar(8),
	classification_code varchar(5),
	type_of_coverage varchar(128),
	schedule_mod numeric(22,0),
	experience_mod numeric(22,0),
	zip_code varchar(15),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	cov_disp_name varchar(128),
	sys_company_ann_premium numeric(22,0),
	sys_company_prem_formula varchar(4000),
	sys_coverage_prem_ratio numeric(22,0),
	sys_composite_rate numeric(22,0),
	sys_annual_exposure numeric(22,0),
	sys_audited_exposure numeric(22,0),
	composite_rating_group_no numeric(22,0),
	sys_start_date date,
	sys_end_date date,
	sys_is_auditable char(1),
	sys_is_split_on_audit char(1),
	vehicle_type_rating_lcm varchar(80),
	farm_seasonal_ftr numeric(22,0),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	physical_dmge_trans_ftr numeric(22,0),
	phys_dmg_assoc_grp_ftr numeric(22,0),
	physical_dmge_misc_ftr numeric(22,0),
	phy_dmg_misc_factor numeric(22,0),
	renewal_rewards_factor numeric(22,0),
	account_credit_factor numeric(22,0),
	logger_credit_factor numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	physical_dmge_manual_ftr numeric(22,0),
	is_cov_manually_rated char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	sys_exposure_is_units char(1),
	sys_prorata numeric(22,0),
	is_cov_prorated char(1),
	standard_factors numeric(22,0),
	preferred_factor numeric(22,0),
	annl_prem_prior_sch_exp numeric(22,0),
	period_number numeric(22,0),
	comp_rt_manipulator varchar(512),
	comp_rt_unt_typ varchar(256)
);

ALTER TABLE mic_policy_aw.rt_mis_cov_ca_tapes_records DROP CONSTRAINT IF EXISTS rt_mis_cov_ca_tapes_records_gid;
ALTER TABLE mic_policy_aw.rt_mis_cov_ca_tapes_records ADD CONSTRAINT rt_mis_cov_ca_tapes_records_gid PRIMARY KEY (gid);

