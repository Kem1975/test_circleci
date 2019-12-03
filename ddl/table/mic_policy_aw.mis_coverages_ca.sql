CREATE TABLE IF NOT EXISTS mic_policy_aw.mis_coverages_ca (
	mco_ca_policy_reference varchar(30),
	mco_ca_coverage_part_reference varchar(30),
	mco_ca_risk_reference varchar(30),
	mco_ca_coverage_reference varchar(30),
	mco_ca_age_group varchar(1),
	mco_ca_price_bracket numeric(22,0),
	mco_ca_zone_rating_code varchar(3),
	mco_ca_limit_id varchar(1),
	mco_ca_bi_csl_limit_code varchar(2),
	mco_ca_pd_limit_code varchar(2),
	mco_ca_aggregate_limit_code varchar(2),
	mco_ca_misc_limit_code varchar(2),
	mco_ca_each_person_limit numeric(22,0),
	mco_ca_each_accident_limit numeric(22,0),
	mco_ca_property_damage_limit numeric(22,0),
	mco_ca_aggregate_limit numeric(22,0),
	mco_ca_miscellaneous_limit numeric(22,0),
	mco_ca_value_per_rating_unit numeric(22,0),
	mco_ca_workloss_limit numeric(22,0),
	mco_ca_covered_by_workcomp varchar(1),
	mco_ca_operated_by_employee varchar(1),
	mco_ca_added_pip_limit numeric(22,0),
	mco_ca_form_id varchar(14),
	mco_ca_stated_amount_id varchar(1),
	mco_ca_total_number_of_units varchar(4),
	mco_ca_stacking_indicator varchar(1),
	mco_ca_no_fault_indicator varchar(1),
	mco_ca_peril_description varchar(200),
	mco_ca_cost_of_hire numeric(22,0),
	mco_ca_number_of_employees numeric(22,0),
	mco_ca_number_of_days numeric(22,0),
	mco_ca_underinsured_pd_ind varchar(1),
	mco_ca_cover_individual_empl varchar(1),
	mco_ca_number_of_partners numeric(22,0),
	mco_ca_anti_theft_device_code varchar(1),
	mco_ca_total_rating_units numeric(22,0),
	mco_ca_liab_man_ftr numeric(22,0),
	mco_ca_phy_dam_man_ftr numeric(22,0),
	mco_ca_number_of_plates numeric(22,0),
	mco_ca_auxillary_factor numeric(22,0),
	mco_ca_secondary_rating_factor numeric(22,0),
	mco_ca_fleet_factor numeric(22,0),
	mco_ca_liab_ded_type varchar(1),
	mco_ca_cons_comp_def_each_suit numeric(22,0),
	mco_ca_cons_comp_def_aggregate numeric(22,0),
	mco_ca_one_yr_prior_acts_limit numeric(22,0),
	mco_ca_year_opt varchar(1),
	mco_ca_emp_ben_liab_pct numeric(22,0),
	mco_ca_endorsement_ind varchar(3),
	mco_ca_child_tran_premium numeric(22,0),
	mco_ca_child_report_coverage varchar(1)
);

ALTER TABLE mic_policy_aw.mis_coverages_ca DROP CONSTRAINT IF EXISTS mis_coverages_ca_mco_ca_coverage_reference;
ALTER TABLE mic_policy_aw.mis_coverages_ca ADD CONSTRAINT mis_coverages_ca_mco_ca_coverage_reference PRIMARY KEY (mco_ca_coverage_reference);

