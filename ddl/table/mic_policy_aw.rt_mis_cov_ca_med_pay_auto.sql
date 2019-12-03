CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_cov_ca_med_pay_auto (
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
	cov_med_payments_auto numeric(22,0),
	cov_med_payments_off numeric(22,0),
	cov_med_payments_spouse numeric(22,0),
	cov_med_pay_inc_loss numeric(22,0),
	dealer_factor numeric(22,0),
	zone_rated_factor numeric(22,0),
	trailer_factor numeric(22,0),
	prop_officer_factor numeric(22,0),
	aslob varchar(8),
	csp_subline_code varchar(8),
	state_excep varchar(8),
	limits_identifier varchar(8),
	limits_code varchar(8),
	stat_terriotory varchar(3),
	exposure varchar(8),
	zone_rating_code varchar(8),
	coverage_code varchar(32),
	des varchar(4000),
	rating_function varchar(128),
	seq numeric(22,0),
	rating_formula varchar(4000),
	manual_premium numeric(22,0),
	type_of_coverage varchar(128),
	schedule_mod numeric(22,0),
	experience_mod numeric(22,0),
	spec_veh_type_factor numeric(22,0),
	reg_plates_factor numeric(22,0),
	pip_zone_ftr numeric(22,0),
	aux_running_lamps_ftr numeric(22,0),
	no_pip_ftr numeric(22,0),
	fr_count numeric(22,0),
	fr_factor numeric(22,0),
	fr_surplus_count numeric(22,0),
	fr_surplus_factor numeric(22,0),
	classification_code varchar(5),
	med_pay_seat_belt_law_ftr numeric(22,0),
	auto_junk_dealer_factor numeric(22,0),
	print_cov_desc varchar(4000),
	print_limits_desc varchar(4000),
	is_suppress_print char(1),
	non_own_med_pay_cov_ftr numeric(22,0),
	farm_auto_factor numeric(22,0),
	zip_code varchar(15),
	aggregate_limit_indicator numeric(22,0),
	pip_zone_factor numeric(22,0),
	no_pip_factor numeric(22,0),
	pip_medpay_factor numeric(22,0),
	incr_limit_medpay_factor numeric(22,0),
	additional_auto_factor numeric(22,0),
	additional_auto_loss_cost numeric(22,0),
	inc_loss_cost numeric(22,0),
	prin_oper_by_emp char(1),
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
	hired_auto_med_pay_ftr numeric(22,0),
	sys_start_date date,
	sys_end_date date,
	sys_is_auditable char(1),
	sys_is_split_on_audit char(1),
	primary_class_liab_factor numeric(22,0),
	combined_class_liab_factor numeric(22,0),
	liab_fleet_factor numeric(22,0),
	snowmobile_disc_factor numeric(22,0),
	accdnt_prevn_disc_factor numeric(22,0),
	pass_rest_factor numeric(22,0),
	comb_exp_use_factor numeric(22,0),
	num_of_days_veh_rented numeric(22,0),
	tot_inst_exc_auto numeric(22,0),
	medpay_loss_cost numeric(22,0),
	medpay_loss_cost_mul numeric(22,0),
	liab_loss_cost numeric(22,0),
	liab_loss_cost_multiplier numeric(22,0),
	inc_limit_factor numeric(22,0),
	no_of_plates numeric(22,0),
	num_prop_exec_officer numeric(22,0),
	num_spouse_relative numeric(22,0),
	doc_coverage_fact numeric(22,0),
	mpauto_no_of_named_indv numeric(22,0),
	liab_annual_premium numeric(22,0),
	liab_schedule_mod numeric(22,0),
	tot_driving_instructors numeric(22,0),
	sys_exposure_is_units char(1),
	sys_prorata numeric(22,0),
	est_tot_inst_exc_auto numeric(22,0),
	est_tot_drv_instr numeric(22,0),
	est_cost_of_hire numeric(22,0),
	est_num_of_days_veh_ren numeric(22,0),
	second_class_liab_factor numeric(22,0),
	base_loss_cost numeric(22,0),
	additional_loss_cost numeric(22,0),
	maximum_limit numeric(22,0),
	additional_limit numeric(22,0),
	step_value numeric(22,0),
	vehicle_type_rating_lcm varchar(80),
	farm_seasonal_ftr numeric(22,0),
	seasonal_use_crd_ftr numeric(22,0),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	hold_harmless_ftr numeric(22,0),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	total_100k_liab_prem numeric(22,0),
	no_autos_truck_oper numeric(22,0),
	cost_hire_basis_ftr numeric(22,0),
	cost_of_hire numeric(22,0),
	suspension_permitted char(1),
	suspended_cov_message varchar(1),
	renewal_rewards_factor numeric(22,0),
	account_credit_factor numeric(22,0),
	logger_credit_factor numeric(22,0),
	liability_transition_ftr numeric(22,0),
	liability_assoc_grp_ftr numeric(22,0),
	liability_misc_ftr numeric(22,0),
	liab_misc_factor numeric(22,0),
	lim_cov_factor numeric(22,0),
	leasing_rental_factor numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	liability_manual_ftr numeric(22,0),
	is_cov_manually_rated char(1),
	special_use_type varchar(128),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	is_cov_prorated char(1),
	standard_factors numeric(22,0),
	preferred_factor numeric(22,0),
	annl_prem_prior_sch_exp numeric(22,0),
	non_frns_factor numeric(22,0),
	mechanical_lift_ftr numeric(22,0),
	combined_single_limit numeric(22,0),
	med_safe_scr_ftr numeric(22,0),
	agg_limit_ind varchar(8),
	period_number numeric(22,0),
	mech_lft_ind_code_minc varchar(8),
	cl1_pt_others numeric(22,0),
	cl1_ft_regular numeric(22,0),
	cl1_ft_others numeric(22,0),
	cl2_underage numeric(22,0),
	cl1_pt_regular numeric(22,0),
	cl2_others numeric(22,0),
	cl1_emp_factor numeric(22,0),
	cl2_non_emp_undr25_factor numeric(22,0),
	cl1_other_emp_factor numeric(22,0),
	cl1_other_pt_emp_ftr numeric(22,0),
	cl2_non_emp_over25_factor numeric(22,0),
	cl1_pt_emp_ftr numeric(22,0),
	rating_units numeric(22,0),
	cov_med_payments_loc_oper numeric(22,0),
	tnc_indicator_code varchar(8),
	trans_use_ftr numeric(22,0),
	mat_drv_imp_cour_disc_fact numeric(22,0),
	school_charter_reg_plt_ftr numeric(22,0),
	comp_rt_manipulator varchar(512),
	comp_rt_unt_typ varchar(256),
	frnchsd_non_frnchsd_factor numeric(22,0),
	est_cl2_others numeric(22,0),
	est_cl1_pt_regular numeric(22,0),
	est_cl1_ft_regular numeric(22,0),
	est_cl1_ft_others numeric(22,0),
	est_cl1_pt_others numeric(22,0),
	est_cl2_underage numeric(22,0),
	est_def_no_of_day_veh_rent numeric(22,0)
);

ALTER TABLE mic_policy_aw.rt_mis_cov_ca_med_pay_auto DROP CONSTRAINT IF EXISTS rt_mis_cov_ca_med_pay_auto_gid;
ALTER TABLE mic_policy_aw.rt_mis_cov_ca_med_pay_auto ADD CONSTRAINT rt_mis_cov_ca_med_pay_auto_gid PRIMARY KEY (gid);
