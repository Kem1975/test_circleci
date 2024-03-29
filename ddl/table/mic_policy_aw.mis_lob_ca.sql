CREATE TABLE IF NOT EXISTS mic_policy_aw.mis_lob_ca (
	moa_gid numeric(22,0),
	moa_policy_lob_ca numeric(22,0),
	moa_prd_cpp_lob_ca numeric(22,0),
	moa_entity_type varchar(64),
	moa_add_entity_type varchar(64),
	moa_mod_entity_type varchar(64),
	moa_del_entity_type varchar(64),
	moa_entity_reference varchar(64),
	moa_fk_column_name varchar(64),
	moa_fk_column_value numeric(22,0),
	moa_add_entity_reference varchar(64),
	moa_mod_entity_reference varchar(64),
	moa_del_entity_reference varchar(64),
	moa_entity_status varchar(32),
	moa_entity_is_locked char(1),
	moa_id numeric(22,0),
	moa_date_created date,
	moa_user_created varchar(128),
	moa_date_modified date,
	moa_user_modified varchar(128),
	moa_date_deleted date,
	moa_audit_flag varchar(1),
	moa_risk_state varchar(2),
	moa_risk_state_stat_code varchar(2),
	moa_risk_city_code varchar(5),
	moa_product_code varchar(2),
	moa_lob_code varchar(2),
	moa_annual_premium numeric(22,0),
	moa_transaction_premium numeric(22,0),
	moa_written_premium numeric(22,0),
	moa_balance_to_minimum numeric(22,0),
	moa_deposit_premium numeric(22,0),
	moa_full_term_premium numeric(22,0),
	moa_trans_prem_not_sub_to_aud numeric(22,0),
	moa_selected_coverage varchar(2),
	moa_primary_state varchar(30),
	moa_primary_state_code varchar(2),
	moa_is_fleet char(1),
	moa_is_debit_credit char(1),
	moa_is_rate_dept char(1),
	moa_is_com_reduct char(1),
	moa_is_exp_rating char(1),
	moa_audit_frequency varchar(15),
	moa_audit_frequency_stat_code varchar(8),
	moa_deposit_percentage numeric(22,0),
	moa_override_deposit_pct numeric(22,0),
	moa_override_deposit_premium numeric(22,0),
	moa_policy_type varchar(4),
	moa_heading_blnk_coll_cov varchar(1),
	moa_auto_dealer_collision varchar(128),
	moa_auto_dealer_coll_ded numeric(22,0),
	moa_reposs_auto_collision varchar(128),
	moa_reposs_auto_coll_ded numeric(22,0),
	moa_auto_held_srv_collision varchar(128),
	moa_auto_held_srv_coll_ded numeric(22,0),
	moa_terrorism_coverage_code varchar(2),
	moa_risk_tax_code varchar(5),
	moa_risk_county_code varchar(5),
	moa_hazard_grade varchar(2),
	moa_override_hazard_grade varchar(2),
	moa_cov_disp_name varchar(128),
	moa_heading_rating_plans varchar(1),
	moa_cal_exp_ftr char(1),
	moa_composite_rating char(1),
	moa_schedule_rating_note varchar(1),
	moa_is_audit char(1),
	moa_waived_premium numeric(22,0),
	moa_waive_indicator varchar(2),
	moa_prem_com_red_factor numeric(22,0),
	moa_commissionable_premium numeric(22,0),
	moa_heading_comp_rat_plans varchar(1),
	moa_exp_full_trm_prm_excd varchar(2),
	moa_renewal_rewards char(1),
	moa_account_credit char(1),
	moa_liability_transition_ftr numeric(22,0),
	moa_physical_dmge_trans_ftr numeric(22,0),
	moa_liability_assoc_grp_ftr numeric(22,0),
	moa_phys_dmg_assoc_grp_ftr numeric(22,0),
	moa_logger_credit_type varchar(128),
	moa_logger_credit_factor numeric(22,0),
	moa_liability_misc_ftr numeric(22,0),
	moa_liability_misc_reason varchar(128),
	moa_physical_dmge_misc_ftr numeric(22,0),
	moa_physical_dmge_misc_reason varchar(128),
	moa_val_copied varchar(128),
	moa_val2_copied varchar(128),
	moa_excd1_copied varchar(128),
	moa_waive_coll_deductible char(1),
	moa_prior_waived_adjustment numeric(22,0),
	moa_heading_manual_ftr varchar(1),
	moa_liability_manual_ftr numeric(22,0),
	moa_physical_dmge_manual_ftr numeric(22,0),
	moa_pri_st_loc_liab_csl numeric(22,0),
	moa_pri_st_loc_liab_al numeric(22,0),
	moa_pri_st_loc_liab_otr_al varchar(128),
	moa_pri_st_loc_liab_ded numeric(22,0),
	moa_pri_st_veh_liab_ded numeric(22,0),
	moa_is_cov_manually_rated char(1),
	moa_driver_name_mi varchar(4000),
	moa_driver_name_il varchar(4000),
	moa_apply_manual_ftr char(1),
	moa_comm_annual_premium numeric(22,0),
	moa_comm_full_term_prem numeric(22,0),
	moa_pri_st_veh_liab_ded_type varchar(4),
	moa_is_new_business char(1),
	moa_is_pri_st_no_sdl_rate char(1),
	moa_heading_blnk_coll_cov_blk varchar(1),
	moa_pri_st_loc_liab_ded_type varchar(4),
	moa_is_cov_prorated char(1),
	moa_extendttca12 varchar(1),
	moa_first_auto_no numeric(22,0),
	moa_heading_optional_cov varchar(1),
	moa_enhanced_coverage char(1),
	moa_enhancer_plus char(1),
	moa_errors_ommisn_liab char(1),
	moa_tier_rating char(1),
	moa_heading_general_ques varchar(1),
	moa_ans_general_ques char(1),
	moa_prd_ba_lob_ca numeric(22,0),
	moa_selected_coverage_disp varchar(128),
	moa_c_ca_liability varchar(1),
	moa_c_heading_ca_veh_cov varchar(1),
	moa_heading_lob_act_erromm varchar(1),
	moa_lob_is_aol_liability varchar(1),
	moa_head_lob_act_erromm_exclu varchar(1),
	moa_lob_truth_exclusion varchar(1),
	moa_lob_odometer_exclusion varchar(1),
	moa_lob_insurance_agent_exclu varchar(1),
	moa_exl_dmg_rent_prem_cover varchar(1),
	moa_heading_loc_liab_excl varchar(1),
	moa_exc_prods_work_perfd varchar(1),
	moa_excl_persnl_inju_liab varchar(1),
	moa_lob_title_exclusion varchar(1),
	moa_ma_error_msg varchar(250),
	moa_va_rule97 varchar(1),
	moa_pa_mvd_option varchar(1),
	moa_pa_err_msg varchar(1),
	moa_naics_code varchar(64),
	moa_naics_description varchar(128),
	moa_powered_veh_code varchar(8),
	moa_no_of_powered_veh numeric(22,0)
);

ALTER TABLE mic_policy_aw.mis_lob_ca DROP CONSTRAINT IF EXISTS mis_lob_ca_moa_gid;
ALTER TABLE mic_policy_aw.mis_lob_ca ADD CONSTRAINT mis_lob_ca_moa_gid PRIMARY KEY (moa_gid);

