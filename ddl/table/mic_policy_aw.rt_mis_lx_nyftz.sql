CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_lx_nyftz (
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
	nyftz_class_number numeric(22,0),
	nyftz_class_code varchar(5),
	nyftz_class_description varchar(256),
	nyftz_comp_questn varchar(2),
	gl_nyft_fk numeric(22,0),
	nyftz_class_code_text varchar(5),
	c_verify varchar(1)
);

ALTER TABLE mic_policy_aw.rt_mis_lx_nyftz DROP CONSTRAINT IF EXISTS rt_mis_lx_nyftz_gid;
ALTER TABLE mic_policy_aw.rt_mis_lx_nyftz ADD CONSTRAINT rt_mis_lx_nyftz_gid PRIMARY KEY (gid);

