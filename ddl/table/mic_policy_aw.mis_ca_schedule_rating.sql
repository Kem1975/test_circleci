CREATE TABLE IF NOT EXISTS mic_policy_aw.mis_ca_schedule_rating (
	scr_gid numeric(22,0),
	scr_schedule_rating_cov numeric(22,0),
	scr_entity_type varchar(64),
	scr_add_entity_type varchar(64),
	scr_mod_entity_type varchar(64),
	scr_del_entity_type varchar(64),
	scr_entity_reference varchar(64),
	scr_fk_column_name varchar(64),
	scr_fk_column_value numeric(22,0),
	scr_add_entity_reference varchar(64),
	scr_mod_entity_reference varchar(64),
	scr_del_entity_reference varchar(64),
	scr_entity_status varchar(32),
	scr_entity_is_locked char(1),
	scr_id numeric(22,0),
	scr_date_created date,
	scr_user_created varchar(128),
	scr_date_modified date,
	scr_user_modified varchar(128),
	scr_date_deleted date,
	scr_audit_flag varchar(1),
	scr_display_order numeric(22,0),
	scr_factor_type varchar(128),
	scr_min_value numeric(22,0),
	scr_max_value numeric(22,0),
	scr_default_value numeric(22,0),
	scr_override_modifier numeric(22,0),
	scr_override_reason varchar(4000),
	scr_expence_reduction numeric(22,0),
	scr_total_modifier numeric(22,0),
	scr_schdl_uk_name varchar(256),
	scr_risk_state varchar(30),
	scr_cust_min numeric(22,0),
	scr_cust_max numeric(22,0),
	scr_pri_override_modifier numeric(22,0),
	scr_eligibility_msg varchar(128),
	scr_factor_msg varchar(128),
	scr_sch_rate_factor numeric(22,0)
);

ALTER TABLE mic_policy_aw.mis_ca_schedule_rating DROP CONSTRAINT IF EXISTS mis_ca_schedule_rating_scr_gid;
ALTER TABLE mic_policy_aw.mis_ca_schedule_rating ADD CONSTRAINT mis_ca_schedule_rating_scr_gid PRIMARY KEY (scr_gid);

