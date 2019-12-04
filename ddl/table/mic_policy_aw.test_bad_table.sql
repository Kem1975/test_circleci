CREATE TABLE IF NOT EXISTS mic_policy_aw.test_bad_table (
	mad_gid NUMBERIX(22,0),
	mad_entity_type varchar(64),
	mad_add_entity_type varchar(64)
);

ALTER TABLE mic_policy_aw.mis_addresses ADD CONSTRAINT mis_addresses_mad_gid PRIMARY KEY (mad_gid);

