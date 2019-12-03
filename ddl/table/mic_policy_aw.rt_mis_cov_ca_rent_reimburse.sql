CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_cov_ca_rent_reimburse (
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
	veh_rental_reim_cov numeric(22,0),
	count_days numeric(22,0),
	max_amount_per_day numeric(22,0),
	coverage_code varchar(32),
	des varchar(4000),
	rating_function varchar(128),
	seq numeric(22,0),
	rating_formula varchar(4000),
	manual_premium numeric(22,0),
	type_of_coverage varchar(128),
	schedule_mod numeric(22,0),
	experience_mod numeric(22,0),
	is_sub_to_exp_rating char(1),
	stat_terriotory varchar(3),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	cov_disp_name varchar(128),
	max_amt_for_any_one_period numeric(22,0),
	farm_seasonal_ftr numeric(22,0),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	physical_dmge_trans_ftr numeric(22,0),
	phys_dmg_assoc_grp_ftr numeric(22,0),
	physical_dmge_misc_ftr numeric(22,0),
	phy_dmg_misc_factor numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	is_cov_manually_rated char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	is_cov_prorated char(1),
	extendttca12 varchar(1),
	suspension_permitted varchar(1),
	suspended_cov_message varchar(1)
);

ALTER TABLE mic_policy_aw.rt_mis_cov_ca_rent_reimburse DROP CONSTRAINT IF EXISTS rt_mis_cov_ca_rent_reimburse_gid;
ALTER TABLE mic_policy_aw.rt_mis_cov_ca_rent_reimburse ADD CONSTRAINT rt_mis_cov_ca_rent_reimburse_gid PRIMARY KEY (gid);
