CREATE TABLE IF NOT EXISTS mic_policy_aw.vw_mis_gl_pollution_liability (
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
	lob_pollution_liab numeric(22,0),
	pollution_cov_form varchar(24),
	pollution_ext_form varchar(32),
	year_in_claims_made varchar(16),
	retro_date_set_clms_md varchar(16),
	retroactive_date date,
	epa_idnt_no varchar(512),
	ext_rep_period_cov char(1),
	sup_ext_rep_period_cov char(1),
	cov_basis_code varchar(8),
	limits varchar(1),
	cgl_cov_part_lmt_r_appl varchar(1),
	ris_cg_sub_fi_res_lpg char(1),
	disp_each_poll_inc_lim numeric(22,0),
	each_poll_inc_lim numeric(22,0),
	disp_aggregate_limit numeric(22,0),
	aggregate_limit numeric(22,0),
	policy_limits_code varchar(8),
	limits_identifier_code varchar(8),
	lmt_ext_aggregate_limit numeric(22,0),
	disp_lmt_ext_aggregate_lmt numeric(22,0),
	deductibles varchar(1),
	cgl_cov_part_deduct_app varchar(1),
	deductible_applies char(1),
	deductible_application varchar(8),
	deductible_type varchar(8),
	bi_dedect_amount numeric(22,0),
	bi_dedect_code varchar(8),
	prpty_dmg_dedct_amount numeric(22,0),
	prpty_dmg_dedct_code varchar(8),
	bi_pd_comb_deduct_amount numeric(22,0),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	is_risk_eng_liq_pet_gas char(1),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	is_cov_manually_rated char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	is_cov_prorated char(1),
	c_pol_ded_app varchar(30),
	c_sir_applies varchar(1),
	c_bipd_comb_sir_pol_amt numeric(22,0),
	class_count numeric(22,0)
);

ALTER TABLE mic_policy_aw.vw_mis_gl_pollution_liability DROP CONSTRAINT IF EXISTS vw_mis_gl_pollution_liability_gid;
ALTER TABLE mic_policy_aw.vw_mis_gl_pollution_liability ADD CONSTRAINT vw_mis_gl_pollution_liability_gid PRIMARY KEY (gid);

