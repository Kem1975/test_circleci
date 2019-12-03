CREATE TABLE IF NOT EXISTS mic_policy_aw.vw_mis_c_loss_prem_det (
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
	audit_flag varchar(1),
	date_deleted date,
	c_loss_prem_det numeric(22,0),
	c_prft_admin_tot_exp_amt numeric(22,0),
	c_clms_hnd_tot_exp_pct numeric(22,0),
	c_loss_ctrl_tot_exp_amt numeric(22,0),
	c_agg_stop_amt numeric(22,0),
	c_ret_loss_amt numeric(22,0),
	c_entry_ratio numeric(22,0),
	c_exp_loss_grp numeric(22,0),
	c_index numeric(22,0),
	c_ins_charge numeric(22,0),
	c_broker_comm numeric(22,0),
	c_total_exp_amt numeric(22,0)
);

ALTER TABLE mic_policy_aw.vw_mis_c_loss_prem_det DROP CONSTRAINT IF EXISTS vw_mis_c_loss_prem_det_gid;
ALTER TABLE mic_policy_aw.vw_mis_c_loss_prem_det ADD CONSTRAINT vw_mis_c_loss_prem_det_gid PRIMARY KEY (gid);

