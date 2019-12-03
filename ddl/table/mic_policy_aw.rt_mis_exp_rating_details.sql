CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_exp_rating_details (
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
	liab_exp_rating numeric(22,0),
	phy_dam_exp_rating numeric(22,0),
	gl_exp_rating numeric(22,0),
	crime_exp_rating numeric(22,0),
	fidelity_exp_rating numeric(22,0),
	des varchar(128),
	heading_liab_exp_rating varchar(1),
	expected_loss_ratio numeric(22,0),
	expected_loss_rat_prem_ops numeric(22,0),
	expected_loss_rat_products numeric(22,0),
	ann_basic_limits_comp_prem numeric(22,0),
	expected_exp_ratio numeric(22,0),
	maximum_single_loss numeric(22,0),
	credibility_factor numeric(22,0),
	ann_limits_comp_loss_cost numeric(22,0),
	tot_comp_subj_loss_cost numeric(22,0),
	tot_loss numeric(22,0),
	tot_adj_for_loss numeric(22,0),
	tot_includable_loss numeric(22,0),
	adj_experience_ratio numeric(22,0),
	experience_factor numeric(22,0),
	override_experience_factor numeric(22,0),
	override_reason_text varchar(4000),
	ann_lmts_comp_lc_prem_ops numeric(22,0),
	ann_lmts_comp_lc_prod numeric(22,0),
	apply_exp_var_factor char(1),
	actual_elr_for_risk numeric(22,0),
	exp_var_factor numeric(22,0),
	exp_validation_msg_lp varchar(1),
	exp_validation_message varchar(1),
	heading_exp_rat varchar(1),
	no_claims char(1),
	sys_calc_experience_ftr numeric(22,0),
	number_of_losses numeric(22,0),
	lbl_expired_losses varchar(1),
	msg_expired_losses varchar(128),
	lbl_message varchar(4000),
	overide_exp_factor_chkbx varchar(1)
);

ALTER TABLE mic_policy_aw.rt_mis_exp_rating_details DROP CONSTRAINT IF EXISTS rt_mis_exp_rating_details_gid;
ALTER TABLE mic_policy_aw.rt_mis_exp_rating_details ADD CONSTRAINT rt_mis_exp_rating_details_gid PRIMARY KEY (gid);
