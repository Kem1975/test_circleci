CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_cov_ca_pip (
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
	vehicle_cov_ca_pip numeric(22,0),
	tort_limit varchar(512),
	scl_validation_message varchar(1),
	limit_selection varchar(90),
	stacked_coverage char(1),
	no_deductible_applies varchar(90),
	excess_pip varchar(128),
	total_aggregate_amount numeric(22,0),
	deductible numeric(22,0),
	deductible2 numeric(22,0),
	deductible_coverage varchar(128),
	deductible_desc varchar(128),
	ex_work_loss_benefits varchar(128),
	exclude_work_loss_benef char(1),
	ex_work_loss_benefits_ftr numeric(22,0),
	cost_of_hire numeric(22,0),
	covered_wrkrs_comp char(1),
	work_loss_coordination char(1),
	work_loss_coordination_ftr numeric(22,0),
	medical_exp_elimination varchar(128),
	med_exp_elim_ftr numeric(22,0),
	med_exp_elim_applies char(1),
	prncply_oprtd_emp char(1),
	furnished_regular_use char(1),
	owner_operated char(1),
	interstate_bus_ind char(1),
	interstate_bus_ind_ftr numeric(22,0),
	exclude_pass_hzd char(1),
	govt_sponsored char(1),
	lawsuit_threshold char(1),
	medical_only char(1),
	no_threshhold char(1),
	no_threshhold_ded numeric(22,0),
	health_insurance char(1),
	ext_medical_exposure char(1),
	frf_loss_cost numeric(22,0),
	ext_medical_exp_limit numeric(22,0),
	elmn_tort_lmt_option char(1),
	medical_exp_only_option char(1),
	med_exp_ben_sec_option char(1),
	loss_cost numeric(22,0),
	stacking_loss_cost numeric(22,0),
	ext_med_exp_loss_cost numeric(22,0),
	surcharge_factor numeric(22,0),
	loss_cost_multiplier numeric(22,0),
	liab_loss_cost_multiplier numeric(22,0),
	no_pip_factor numeric(22,0),
	deductible_ftr numeric(22,0),
	tort_limit_factor numeric(22,0),
	med_exp_ben_sec_factor numeric(22,0),
	medical_exp_ben_factor numeric(22,0),
	excess_pip_factor numeric(22,0),
	specialty_vehicle_type_ftr numeric(22,0),
	pip_zone_ftr numeric(22,0),
	guest_pip_zone_factor numeric(22,0),
	registration_plates_ftr numeric(22,0),
	leasing_rental_factor numeric(22,0),
	van_pool_emp_trans_ftr numeric(22,0),
	no_autos_stckng_lc numeric(22,0),
	fr_count numeric(22,0),
	fr_factor numeric(22,0),
	fr_surplus_count numeric(22,0),
	fr_surplus_factor numeric(22,0),
	co_payment_amount numeric(22,0),
	aslob varchar(3),
	csp_subline_code varchar(8),
	state_exception varchar(8),
	limits_identifier varchar(8),
	limit_code varchar(8),
	"limit" numeric(22,0),
	pip_ded_code varchar(8),
	stat_ded_amount numeric(22,0),
	rating_basis varchar(8),
	stat_terr_code varchar(3),
	exposure varchar(8),
	stat_zone_rating_code varchar(8),
	classification_cod varchar(5),
	coverage_code varchar(32),
	aux_running_lamps_ftr numeric(22,0),
	taxi_type_ftr numeric(22,0),
	des varchar(4000),
	rating_function varchar(128),
	seq numeric(22,0),
	rating_formula varchar(4000),
	manual_premium numeric(22,0),
	type_of_coverage varchar(128),
	schedule_mod numeric(22,0),
	experience_mod numeric(22,0),
	limit_factor numeric(22,0),
	use_split_limits char(1),
	pip_factor numeric(22,0),
	print_cov_desc varchar(4000),
	print_limits_desc varchar(4000),
	is_suppress_print char(1),
	contingent_ftr numeric(22,0),
	farm_auto_factor numeric(22,0),
	zip_code varchar(15),
	vehicle_count numeric(22,0),
	pip_other_type_ftr numeric(22,0),
	increased_limit numeric(22,0),
	hb_persnl_injry_cov numeric(22,0),
	reg_plates_injury_prot_cov numeric(22,0),
	frf_cov_ca_pip numeric(22,0),
	loc_personal_injury_cov numeric(22,0),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	tort_limit_code varchar(128),
	tort_id numeric(22,0),
	coverage_selection varchar(90),
	seq_number numeric(22,0),
	cov_disp_name varchar(128),
	sys_company_ann_premium numeric(22,0),
	sys_company_prem_formula varchar(4000),
	sys_coverage_prem_ratio numeric(22,0),
	sys_composite_rate numeric(22,0),
	sys_annual_exposure numeric(22,0),
	sys_audited_exposure numeric(22,0),
	composite_rating_group_no numeric(22,0),
	apply_work_loss_benef char(1),
	sys_start_date date,
	sys_end_date date,
	sys_is_auditable char(1),
	sys_is_split_on_audit char(1),
	primary_class_liab_factor numeric(22,0),
	comb_exp_use_factor numeric(22,0),
	accdnt_prevn_disc_factor numeric(22,0),
	liab_fleet_factor numeric(22,0),
	combined_class_liab_factor numeric(22,0),
	num_of_days_veh_rented numeric(22,0),
	frf_surcharge_factor numeric(22,0),
	gar_risk_surcharge_factor numeric(22,0),
	no_of_plates numeric(22,0),
	frnchsd_non_frnchsd_factor numeric(22,0),
	rating_units numeric(22,0),
	second_class_liab_factor numeric(22,0),
	sys_exposure_is_units char(1),
	sys_prorata numeric(22,0),
	vehicle_type_rating_lcm varchar(80),
	farm_seasonal_ftr numeric(22,0),
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
	pip_percent_ftr numeric(22,0),
	bi_pip_premium numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	vehicle_cov_ca_ped numeric(22,0),
	liability_manual_ftr numeric(22,0),
	is_cov_manually_rated char(1),
	special_use_type varchar(128),
	non_trucking_factor numeric(22,0),
	workers_comp_factor numeric(22,0),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	frf_unit_coverage varchar(128),
	frf_unit_number varchar(128),
	frf_unit_id varchar(128),
	manual_premium_ma numeric(22,0),
	is_cov_prorated char(1),
	standard_factors numeric(22,0),
	preferred_factor numeric(22,0),
	annl_prem_prior_sch_exp numeric(22,0),
	dealers_factor numeric(22,0),
	mech_lift_ftr numeric(22,0),
	est_cl2_others numeric(22,0),
	est_cl1_ft_others numeric(22,0),
	est_cl1_pt_others numeric(22,0),
	est_cl2_underage numeric(22,0),
	est_cl1_ft_regular numeric(22,0),
	est_cl1_pt_regular numeric(22,0),
	cl2_underage numeric(22,0),
	cl1_pt_regular numeric(22,0),
	cl2_others numeric(22,0),
	cl1_ft_others numeric(22,0),
	cl1_pt_others numeric(22,0),
	cl1_ft_regular numeric(22,0),
	est_rating_units numeric(22,0),
	mech_lift_pip_ftr numeric(22,0),
	est_no_of_plates numeric(22,0),
	pip_tele_geo_ftr numeric(22,0),
	pip_safe_scr_ftr numeric(22,0),
	stacked_pip_fact numeric(22,0),
	pip_vehicle_cnt numeric(22,0),
	period_number numeric(22,0),
	mech_lft_ind_code_pip varchar(8),
	cl2_non_emp_over25_factor numeric(22,0),
	cl1_pt_emp_ftr numeric(22,0),
	cl1_emp_factor numeric(22,0),
	cl2_non_emp_undr25_factor numeric(22,0),
	cl1_other_pt_emp_ftr numeric(22,0),
	cl1_other_emp_factor numeric(22,0),
	metropol_zone_ftr numeric(22,0),
	mcca_amt numeric(22,0),
	classification_code varchar(5),
	tnc_indicator_code varchar(8),
	trans_use_ftr numeric(22,0),
	nol_injury_prot_cov numeric(22,0),
	auto_body_manu_pip numeric(22,0),
	auto_body_manu_pip_cov numeric(22,0),
	school_charter_reg_plt_ftr numeric(22,0),
	comp_rt_manipulator varchar(512),
	comp_rt_unt_typ varchar(256),
	death_benefit_limit numeric(22,0),
	basic_med_exp_limit numeric(22,0)
);

ALTER TABLE mic_policy_aw.rt_mis_cov_ca_pip DROP CONSTRAINT IF EXISTS rt_mis_cov_ca_pip_gid;
ALTER TABLE mic_policy_aw.rt_mis_cov_ca_pip ADD CONSTRAINT rt_mis_cov_ca_pip_gid PRIMARY KEY (gid);
