CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_cov_ca_uim (
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
	veh_underinsured_cov numeric(22,0),
	drv_underinsured_cov numeric(22,0),
	hired_auto_undrins_mot_cov numeric(22,0),
	non_owned_undrins_mot_cov numeric(22,0),
	reg_plats_undrins_mot_cov numeric(22,0),
	conversion_coverage char(1),
	use_split_limits varchar(2),
	combined_single_limit numeric(22,0),
	type_of_injury_or_coverage varchar(128),
	bi_each_person_limit numeric(22,0),
	bi_each_occ_limit numeric(22,0),
	property_dam_limit numeric(22,0),
	coverage_code varchar(32),
	des varchar(4000),
	rating_function varchar(128),
	seq numeric(22,0),
	rating_formula varchar(4000),
	manual_premium numeric(22,0),
	type_of_coverage varchar(128),
	schedule_mod numeric(22,0),
	experience_mod numeric(22,0),
	loss_cost numeric(22,0),
	loss_cost_multiplier numeric(22,0),
	veh_count_ppt numeric(22,0),
	veh_count_all_other numeric(22,0),
	doc_coverage_factor numeric(22,0),
	dealer_trans_plate_count numeric(22,0),
	reg_plates_factor numeric(22,0),
	limit_code varchar(8),
	auto_junk_dealer_factor numeric(22,0),
	aslob varchar(8),
	csp_subline_code varchar(8),
	state_exception varchar(8),
	limits_identifier varchar(8),
	stat_terriotory varchar(3),
	exposure varchar(8),
	stat_zone_rating_code varchar(8),
	classification_code varchar(5),
	specialty_veh_factor numeric(22,0),
	ui_deductible_code varchar(8),
	farm_auto_factor numeric(22,0),
	stacked_coverage char(1),
	print_cov_desc varchar(4000),
	print_limits_desc varchar(4000),
	is_suppress_print char(1),
	zip_code varchar(15),
	aggregate_limit_indicator numeric(22,0),
	scl_validation_message varchar(1),
	include_property_damage char(1),
	indv_or_married_add_amnt numeric(22,0),
	loc_underinsured_cov numeric(22,0),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	seq_number numeric(22,0),
	cov_disp_name varchar(128),
	sys_company_ann_premium numeric(22,0),
	sys_company_prem_formula varchar(4000),
	sys_coverage_prem_ratio numeric(22,0),
	sys_composite_rate numeric(22,0),
	sys_annual_exposure numeric(22,0),
	sys_audited_exposure numeric(22,0),
	composite_rating_group_no numeric(22,0),
	trailors_factor numeric(22,0),
	first_auto char(1),
	first_auto_factor numeric(22,0),
	sys_start_date date,
	sys_end_date date,
	sys_is_auditable char(1),
	sys_is_split_on_audit char(1),
	individual_insured_ftr numeric(22,0),
	accdnt_prevn_disc_factor numeric(22,0),
	doc_no_of_named_indiv numeric(22,0),
	tot_emp_in_op_auto numeric(22,0),
	tot_driving_instructors numeric(22,0),
	tot_emp_all_loc numeric(22,0),
	liab_cost_of_hire numeric(22,0),
	no_of_plates numeric(22,0),
	insured_type varchar(256),
	num_of_days_veh_rented numeric(22,0),
	tot_inst_exc_auto numeric(22,0),
	no_of_volunteers numeric(22,0),
	sys_exposure_is_units char(1),
	sys_prorata numeric(22,0),
	est_tot_emp_in_op_auto numeric(22,0),
	est_tot_drv_instr numeric(22,0),
	est_tot_emp_all_loc numeric(22,0),
	est_no_of_volunteers numeric(22,0),
	est_tot_inst_exc_auto numeric(22,0),
	est_cost_of_hire numeric(22,0),
	vehicle_type_rating_lcm varchar(80),
	farm_seasonal_ftr numeric(22,0),
	seasonal_use_crd_ftr numeric(22,0),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	hold_harmless_ftr numeric(22,0),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	suspension_permitted char(1),
	suspended_cov_message varchar(1),
	renewal_rewards_factor numeric(22,0),
	account_credit_factor numeric(22,0),
	logger_credit_factor numeric(22,0),
	liability_transition_ftr numeric(22,0),
	liability_assoc_grp_ftr numeric(22,0),
	liability_misc_ftr numeric(22,0),
	liab_misc_factor numeric(22,0),
	leasing_rental_factor numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	liability_manual_ftr numeric(22,0),
	is_cov_manually_rated char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	is_cov_prorated char(1),
	standard_factors numeric(22,0),
	preferred_factor numeric(22,0),
	annl_prem_prior_sch_exp numeric(22,0),
	est_dlr_trans_plt_cnt numeric(22,0),
	est_no_of_plates numeric(22,0),
	period_number numeric(22,0),
	auto_body_manu_uim_cov numeric(22,0),
	comp_rt_manipulator varchar(512),
	comp_rt_unt_typ varchar(256)
);

ALTER TABLE mic_policy_aw.rt_mis_cov_ca_uim DROP CONSTRAINT IF EXISTS rt_mis_cov_ca_uim_gid;
ALTER TABLE mic_policy_aw.rt_mis_cov_ca_uim ADD CONSTRAINT rt_mis_cov_ca_uim_gid PRIMARY KEY (gid);

