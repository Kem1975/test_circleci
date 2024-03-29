CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_ca_additional_coverages (
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
	lob_ca_addl_cov numeric(22,0),
	named_driver_collision char(1),
	state_brdend char(1),
	state_broad_prod char(1),
	drive_away_coll char(1),
	garage_keepers char(1),
	fungi_bact_liab char(1),
	year_2000_limited char(1),
	auto_body_manu char(1),
	drive_away_contractor char(1),
	drive_other_car char(1),
	supp_benefits char(1),
	fellow_employee varchar(1),
	financial_resp_filing char(1),
	hired_borrow char(1),
	leased_workers char(1),
	limited_mexico char(1),
	loss_of_use_exp char(1),
	named_ind_broad_pip char(1),
	non_owned_liab char(1),
	fun_dir_med_pay char(1),
	polution_liab char(1),
	repossessed_auto char(1),
	registration_plates char(1),
	silicia_dust_liab char(1),
	trailer_interchange char(1),
	vehicle_filing char(1),
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
	autos_held_for_sale char(1),
	garage_keeper_snd_rec char(1),
	supp_spouse_liab char(1),
	liab_of_municiplty char(1),
	municipal_mutual_aid char(1),
	atty_fee char(1),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	cov_disp_name varchar(128),
	ca_excl_exss_hzrd char(1),
	is_personal_injury char(1),
	completed_operations char(1),
	year_2000_endorsement char(1),
	rental_vehicle char(1),
	limited_poll_liab char(1),
	truckers_iiu_form_uiie char(1),
	bus_auto_wrap char(1),
	manuscript char(1),
	addl_ins_wrap char(1),
	mot_carr_fill char(1),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	broad_form_comp_ope char(1),
	auto_dlr_err_omissions char(1),
	garage_wtrcrft_phy_dam char(1),
	multiple_ded_coordinat char(1),
	brd_form_copied varchar(128),
	gkpr_copied varchar(128),
	bawrap_copied varchar(128),
	pickup_delivery char(1),
	misc_coverage char(1),
	oth_than_cov_auto char(1),
	pickup_del_copied varchar(128),
	prior_waived_adjustment numeric(22,0),
	is_cov_manually_rated char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	is_cov_prorated char(1),
	extendttca12_fel varchar(1),
	extendttca12_loss varchar(1),
	c_heading_addi_sch varchar(1),
	c_addi_noti_canc varchar(1),
	business_interruption varchar(1),
	liab_bi_pd_limit numeric(22,0),
	count varchar(3),
	display_name varchar(32),
	sup_death_ben varchar(1)
);

ALTER TABLE mic_policy_aw.rt_mis_ca_additional_coverages DROP CONSTRAINT IF EXISTS rt_mis_ca_additional_coverages_gid;
ALTER TABLE mic_policy_aw.rt_mis_ca_additional_coverages ADD CONSTRAINT rt_mis_ca_additional_coverages_gid PRIMARY KEY (gid);

