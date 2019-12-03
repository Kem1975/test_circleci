CREATE TABLE IF NOT EXISTS mic_policy_aw.mis_lookups (
	mil_source varchar(30),
	mil_source_element_name varchar(30),
	mil_source_element_value varchar(100),
	mil_source_condition varchar(2000),
	mil_target varchar(30),
	mil_target_element_name varchar(30),
	mil_target_element_value varchar(100)
);

ALTER TABLE mic_policy_aw.mis_lookups DROP CONSTRAINT IF EXISTS mis_lookups_moa_gid;
ALTER TABLE mic_policy_aw.mis_lookups ADD CONSTRAINT mis_lookups_moa_gid PRIMARY KEY (moa_gid);

