CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_locations (
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
	location_no numeric(22,0),
	name varchar(30),
	description varchar(100),
	county varchar(40),
	risk_location_code varchar(30),
	earthquake_zone varchar(30),
	tax_type_code varchar(30),
	fire_district varchar(30),
	firedist_code varchar(30),
	fire_station varchar(30),
	phone_info varchar(16),
	email_info varchar(256),
	website_info varchar(256),
	sublimit numeric(22,0),
	indoor_values numeric(22,0),
	flood_hazard char(1),
	wind_hazard varchar(1),
	hail_hazard varchar(1),
	unsecured_lot_exclusion char(1),
	flood_exclusion char(1),
	weather_exclusion char(1),
	territory_code varchar(16),
	territory_description varchar(512),
	theft_index numeric(22,0),
	interest varchar(2),
	dist_fire_dept varchar(30),
	dist_fire_hydrant varchar(30),
	copy_mailing_address varchar(32),
	policy_location numeric(22,0),
	insured_location numeric(22,0),
	fungus_lable varchar(1),
	seprate_lmt_applies char(1),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	liab_hazard_lead char(1),
	unit_built_prior_1979 numeric(22,0),
	unit_built_after_1979 numeric(22,0),
	lead_law char(1),
	lead_compliant char(1),
	lead_poision_cov_prov char(1),
	lead_compliance_level varchar(100),
	lead_poision_cov_code varchar(8),
	composite_rating_group_no numeric(22,0),
	fungus_wr_dr_bacteria char(1),
	master_record_gid numeric(22,0),
	main_location char(1),
	comp_rating_group_name varchar(128),
	heading_composite_rating varchar(1),
	sys_start_date date,
	sys_end_date date,
	sys_is_auditable char(1),
	sys_is_split_on_audit char(1),
	sys_exposure_is_units char(1),
	sys_prorata numeric(22,0),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	prior_waived_adjustment numeric(22,0),
	heading_manual_ftr varchar(1),
	override_manual_ftr char(1),
	liability_manual_ftr numeric(22,0),
	physical_dmge_manual_ftr numeric(22,0),
	manual_ftr numeric(22,0),
	bgi_manual_ftr numeric(22,0),
	bgii_manual_ftr numeric(22,0),
	special_manual_ftr numeric(22,0),
	earthquake_man_ftr numeric(22,0),
	terror_manual_ftr numeric(22,0),
	is_cov_manually_rated char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	is_cov_prorated char(1),
	municipality_name varchar(128),
	fire_code varchar(30),
	police_code varchar(30),
	lob_ca_locations numeric(22,0),
	lob_gl_locations numeric(22,0),
	contract_or_project varchar(250),
	statistical_code varchar(3)
);

ALTER TABLE mic_policy_aw.rt_mis_locations DROP CONSTRAINT IF EXISTS rt_mis_locations_gid;
ALTER TABLE mic_policy_aw.rt_mis_locations ADD CONSTRAINT rt_mis_locations_gid PRIMARY KEY (gid);

