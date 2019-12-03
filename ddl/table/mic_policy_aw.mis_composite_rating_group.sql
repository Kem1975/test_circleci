CREATE TABLE IF NOT EXISTS mic_policy_aw.mis_composite_rating_group (
	mmn_gid numeric(22,0),
	mmn_policy_composite_rating numeric(22,0),
	mmn_entity_type varchar(64),
	mmn_add_entity_type varchar(64),
	mmn_mod_entity_type varchar(64),
	mmn_del_entity_type varchar(64),
	mmn_entity_reference varchar(64),
	mmn_fk_column_name varchar(64),
	mmn_fk_column_value numeric(22,0),
	mmn_add_entity_reference varchar(64),
	mmn_mod_entity_reference varchar(64),
	mmn_del_entity_reference varchar(64),
	mmn_entity_status varchar(32),
	mmn_entity_is_locked char(1),
	mmn_id numeric(22,0),
	mmn_date_created date,
	mmn_user_created varchar(128),
	mmn_date_modified date,
	mmn_user_modified varchar(128),
	mmn_date_deleted date,
	mmn_audit_flag varchar(1),
	mmn_group_no numeric(22,0),
	mmn_group_name varchar(128),
	mmn_risk_type varchar(512),
	mmn_composite_rating_by varchar(6),
	mmn_comp_special_class varchar(5),
	mmn_comp_special_class_desc varchar(128),
	mmn_lob_ca_composite_rating numeric(22,0),
	mmn_lob_gl_composite_rating numeric(22,0),
	mmn_c_minimum_premium numeric(22,0),
	mmn_c_deposit_premium numeric(22,0),
	mmn_comp_risk_class varchar(5),
	mmn_prd_cpp_composite_rate numeric(22,0)
);

ALTER TABLE mic_policy_aw.mis_composite_rating_group DROP CONSTRAINT IF EXISTS mis_composite_rating_group_mmn_gid;
ALTER TABLE mic_policy_aw.mis_composite_rating_group ADD CONSTRAINT mis_composite_rating_group_mmn_gid PRIMARY KEY (mmn_gid);

