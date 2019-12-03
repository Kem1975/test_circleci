CREATE TABLE IF NOT EXISTS mic_policy_aw.mis_cov_ca_aeo_liability (
	iay_gid numeric(22,0),
	iay_act_erromm_liab_cov numeric(22,0),
	iay_entity_type varchar(64),
	iay_add_entity_type varchar(64),
	iay_mod_entity_type varchar(64),
	iay_del_entity_type varchar(64),
	iay_entity_reference varchar(64),
	iay_fk_column_name varchar(64),
	iay_fk_column_value numeric(22,0),
	iay_add_entity_reference varchar(64),
	iay_mod_entity_reference varchar(64),
	iay_del_entity_reference varchar(64),
	iay_entity_status varchar(32),
	iay_entity_is_locked char(1),
	iay_id numeric(22,0),
	iay_date_created date,
	iay_user_created varchar(128),
	iay_date_modified date,
	iay_user_modified varchar(128),
	iay_is_sub_to_fully_earn char(1),
	iay_is_sub_to_comm_red char(1),
	iay_is_sub_to_fully_charge char(1),
	iay_is_sub_to_exp_rating char(1),
	iay_is_sub_to_schd_rating char(1),
	iay_is_sub_to_irpm_rating char(1),
	iay_is_cov_prorated char(1),
	iay_cov_minimum_premium numeric(22,0),
	iay_comm_red_factor numeric(22,0),
	iay_experience_mod_fact numeric(22,0),
	iay_schedule_mod_fact numeric(22,0),
	iay_irpm_fact numeric(22,0),
	iay_date_deleted date,
	iay_audit_flag varchar(1),
	iay_risk_state varchar(2),
	iay_risk_state_stat_code varchar(2),
	iay_risk_city_code varchar(5),
	iay_risk_tax_code varchar(5),
	iay_risk_county_code varchar(5),
	iay_product_code varchar(2),
	iay_lob_code varchar(2),
	iay_annual_premium numeric(22,0),
	iay_transaction_premium numeric(22,0),
	iay_written_premium numeric(22,0),
	iay_balance_to_minimum numeric(22,0),
	iay_deposit_premium numeric(22,0),
	iay_full_term_premium numeric(22,0),
	iay_trans_prem_not_sub_to_aud numeric(22,0),
	iay_waived_premium numeric(22,0),
	iay_prior_waived_adjustment numeric(22,0),
	iay_waive_indicator varchar(2),
	iay_is_cov_manually_rated char(1),
	iay_prem_com_red_factor numeric(22,0),
	iay_commissionable_premium numeric(22,0),
	iay_comm_annual_premium numeric(22,0),
	iay_comm_full_term_prem numeric(22,0),
	iay_sys_start_date date,
	iay_sys_end_date date,
	iay_sys_is_auditable char(1),
	iay_sys_is_split_on_audit char(1),
	iay_seq_number numeric(22,0),
	iay_seq numeric(22,0),
	iay_des varchar(128),
	iay_rating_function varchar(128),
	iay_rating_formula varchar(4000),
	iay_manual_premium numeric(22,0),
	iay_aslob varchar(8),
	iay_csp_subline_code varchar(8),
	iay_state_exception varchar(8),
	iay_limits_identifier varchar(8),
	iay_aggregate_limit_indicator numeric(22,0),
	iay_limit_code varchar(8),
	iay_stat_deductible_amount numeric(22,0),
	iay_liab_deductible_code varchar(8),
	iay_stat_terriotory varchar(3),
	iay_exposure varchar(8),
	iay_stat_zone_rating_code varchar(8),
	iay_classification_code varchar(5),
	iay_coverage_code varchar(32),
	iay_type_of_coverage varchar(128),
	iay_schedule_mod numeric(22,0),
	iay_experience_mod numeric(22,0),
	iay_cov_disp_name varchar(128),
	iay_annl_prem_prior_sch_exp numeric(22,0),
	iay_truth_exclusion varchar(1),
	iay_odometer_exclusion varchar(1),
	iay_insurance_agent_exclu varchar(1),
	iay_title_exclusion varchar(1),
	iay_loss_cost numeric(22,0),
	iay_loss_cost_multiplier numeric(22,0),
	iay_dealers_factor numeric(22,0),
	iay_truth_exclusion_factor numeric(22,0),
	iay_odometer_exclusion_factor numeric(22,0),
	iay_insurance_agent_excl_fact numeric(22,0),
	iay_title_exclusion_factor numeric(22,0),
	iay_vehicle_age_group_code varchar(8),
	iay_value_per_rat_unit_code varchar(8),
	iay_price_bracket numeric(22,0),
	iay_zip_code varchar(15),
	iay_aeo_limit numeric(22,0),
	iay_aeo_deductible numeric(22,0),
	iay_print_cov_desc varchar(4000),
	iay_print_limits_desc varchar(4000),
	iay_is_suppress_print char(1),
	iay_standard_factors numeric(22,0),
	iay_preferred_factor numeric(22,0),
	iay_sys_composite_rate numeric(22,0),
	iay_sys_coverage_prem_ratio numeric(22,0),
	iay_sys_audited_exposure numeric(22,0),
	iay_sys_annual_exposure numeric(22,0),
	iay_composite_rating_group_no numeric(22,0),
	iay_sys_company_ann_premium numeric(22,0),
	iay_sys_company_prem_formula varchar(4000),
	iay_non_insu_agnt_ind varchar(8),
	iay_endorsemnt_ind varchar(8),
	iay_insu_agnt_end_ind varchar(8),
	iay_period_number numeric(22,0),
	iay_cl1_ft_regular numeric(22,0),
	iay_cl1_ft_others numeric(22,0),
	iay_cl2_others numeric(22,0),
	iay_cl1_pt_others numeric(22,0),
	iay_cl2_underage numeric(22,0),
	iay_cl1_pt_regular numeric(22,0),
	iay_cl2_non_emp_undr25_factor numeric(22,0),
	iay_cl1_emp_factor numeric(22,0),
	iay_cl1_pt_emp_ftr numeric(22,0),
	iay_cl1_other_pt_emp_ftr numeric(22,0),
	iay_cl2_non_emp_over25_factor numeric(22,0),
	iay_cl1_other_emp_factor numeric(22,0),
	iay_rating_units numeric(22,0),
	iay_liability_manual_ftr numeric(22,0),
	iay_vehicle_type_rating_lcm varchar(80),
	iay_sys_exposure_is_units varchar(1),
	iay_sys_prorata numeric(22,0),
	iay_comp_rt_manipulator varchar(512),
	iay_comp_rt_unt_typ varchar(256),
	iay_frnchsd_non_frnchsd_factor numeric(22,0),
	iay_est_cl1_ft_regular numeric(22,0),
	iay_est_cl1_pt_regular numeric(22,0),
	iay_est_cl1_ft_others numeric(22,0),
	iay_est_cl1_pt_others numeric(22,0),
	iay_est_cl2_underage numeric(22,0),
	iay_est_cl2_others numeric(22,0)
);

ALTER TABLE mic_policy_aw.mis_cov_ca_aeo_liability DROP CONSTRAINT IF EXISTS mis_cov_ca_aeo_liability_iay_gid;
ALTER TABLE mic_policy_aw.mis_cov_ca_aeo_liability ADD CONSTRAINT mis_cov_ca_aeo_liability_iay_gid PRIMARY KEY (iay_gid);

