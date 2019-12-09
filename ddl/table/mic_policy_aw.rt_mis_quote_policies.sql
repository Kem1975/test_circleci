CREATE TABLE IF NOT EXISTS mic_policy_aw.rt_mis_quote_policies (
	gid numerix(22,0),
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
	control_date_basis varchar(30),
	reevaluate_all varchar(2),
	policy_info_heading varchar(1),
	application_id numeric(22,0),
	application_name varchar(30),
	product_name varchar(128),
	reverse_to numeric(22,0),
	override_product_code varchar(128),
	market_segment_code varchar(20),
	market_group_description varchar(128),
	program_code varchar(10),
	program_name varchar(128),
	custom_program_code varchar(20),
	custom_association_code varchar(20),
	line_of_business varchar(128),
	company_code varchar(2),
	company_name varchar(128),
	lapse_policy varchar(32),
	effective_date date,
	expiration_date date,
	short_term_reason_code varchar(2),
	short_term_reason_desc varchar(128),
	paper_type varchar(1),
	binder_expiration_date date,
	cancel_date date,
	control_date date,
	trans_effective_date date,
	primary_risk_state varchar(128),
	audit_frequency varchar(15),
	audit_frequency_stat_code varchar(8),
	deposit_percentage numeric(22,0),
	override_deposit_pct numeric(22,0),
	override_deposit_premium numeric(22,0),
	is_subject_to_audit char(1),
	audit_number numeric(22,0),
	audit_revision_number numeric(22,0),
	audit_start_date date,
	audit_end_date date,
	notice_date date,
	cancel_type varchar(1),
	cancel_method varchar(1),
	cancel_code varchar(2),
	risk_transfer_qual varchar(512),
	cancel_description varchar(4000),
	org_entity_reference varchar(64),
	lose_reason_code varchar(128),
	lose_reason_desc varchar(4000),
	declination_reason_code varchar(32),
	declination_reason_desc varchar(4000),
	endorsement_reason varchar(4000),
	manuscript_endorsement varchar(4000),
	master_quote varchar(32),
	child_quote varchar(32),
	underwriter_code varchar(20),
	underwriter_name varchar(128),
	submission_id numeric(22,0),
	submission_status varchar(128),
	submission_status_desc varchar(4000),
	policy_quote_indicator varchar(1),
	policy_number numeric(22,0),
	custom_policy_number numeric(22,0),
	alpha_policy_number varchar(15),
	is_rewrite char(1),
	renewal_indicator varchar(1),
	renewal_counter numeric(22,0),
	renewal_counter_2 numeric(22,0),
	renewal_of_display_no varchar(128),
	revision_number numeric(22,0),
	renewal_of_number varchar(64),
	display_policy_number varchar(128),
	binder_flag char(1),
	jurisdiction_state varchar(2),
	transaction_action varchar(128),
	transaction_code varchar(8),
	old_entity_type varchar(64),
	old_entity_reference varchar(64),
	new_entity_type varchar(64),
	new_entity_reference varchar(64),
	binder_number numeric(22,0),
	tail_coverage varchar(2),
	ext_rept_period numeric(22,0),
	originating_role varchar(128),
	"current_role" varchar(128),
	broker_email varchar(256),
	is_rebind char(1),
	product_version varchar(128),
	trans_display_name varchar(128),
	reversed_by_rev_number numeric(22,0),
	roll_forward_from numeric(22,0),
	roll_forward_to numeric(22,0),
	no_conflict_on_rollfwd char(1),
	transaction_factor numeric(22,0),
	non_renewal varchar(1),
	rewrite_of_display_no varchar(128),
	rewrite_of_number varchar(64),
	prorata_rounding numeric(22,0),
	risk_tax_code varchar(5),
	risk_county_code varchar(5),
	service_center_number numeric(22,0),
	service_center_name varchar(30),
	on_demand_reorder char(1),
	pred_model_process_type varchar(1),
	total_annual_surcharge numeric(22,0),
	total_trans_surcharge numeric(22,0),
	total_surcharge numeric(22,0),
	district_number numeric(22,0),
	oos_number numeric(22,0),
	oos_total numeric(22,0),
	next_gen_audited char(1),
	composite_rating char(1),
	stat_transaction_id varchar(8),
	total_surcharge_fterm numeric(22,0),
	booking_user varchar(128),
	booking_date date,
	booking_status varchar(32),
	total_annual_col_fee numeric(22,0),
	total_annual_tax numeric(22,0),
	total_fterm_col_fee numeric(22,0),
	total_fterm_surcharge numeric(22,0),
	total_fterm_taxes numeric(22,0),
	total_trans_col_fee numeric(22,0),
	total_transaction_tax numeric(22,0),
	source_system varchar(128),
	waive_premium varchar(2),
	can_waive_premium varchar(2),
	waived_premium numeric(22,0),
	waive_indicator varchar(2),
	is_com_reduct char(1),
	prem_com_red_factor numeric(22,0),
	commissionable_premium numeric(22,0),
	source_system_id varchar(128),
	total_annual_fee numeric(22,0),
	total_trans_fee numeric(22,0),
	total_fterm_fee numeric(22,0),
	mic_version varchar(128),
	prior_waived_adjustment numeric(22,0),
	is_cov_manually_rated char(1),
	comm_annual_premium numeric(22,0),
	comm_full_term_prem numeric(22,0),
	reinstatement_reason_desc varchar(128),
	reinstatement_reason_code varchar(2),
	is_non_cooperative_audit varchar(1),
	custom_revision_number numeric(22,0),
	is_comp_rate_by_cov varchar(128),
	is_cov_prorated char(1),
	original_eff_date date,
	rev_to_renewal_cntr numeric(22,0),
	rev_by_renewal_cntr numeric(22,0),
	roll_fwd_frm_renewal_cntr numeric(22,0),
	roll_fwd_to_renewal_cntr numeric(22,0),
	backdated_endorsement_no numeric(22,0),
	oose_void_indicator varchar(2),
	display_reverse_to numeric(22,0),
	subject_audit_copy_flag varchar(128),
	cancel_type_code varchar(128),
	cancel_reason_desc varchar(4000),
	cancel_reason_desc_code varchar(128),
	prem_adj_reason_desc varchar(4000),
	prem_adj_reason_code varchar(128),
	cancel_comments varchar(4000),
	cancel_print varchar(2),
	pca_reinst_reason_code varchar(128),
	btm_missed_by_amount numeric(22,0),
	rewrite_of_effective_date date,
	rewrite_of_company_code varchar(2),
	renewal char(1),
	elp_type varchar(4000),
	elp_type_code varchar(128),
	peo_client_code varchar(128),
	cancellation_mail_date date,
	cancellation_wording varchar(4000),
	custom_pack_version varchar(128),
	c_product_seg varchar(64),
	c_defns_insd_outsd varchar(32),
	c_decl_reason varchar(100),
	audit_code_desc varchar(256),
	audit_code varchar(2),
	c_min_prem_per numeric(22,0),
	c_quote_expiration_date date,
	c_branch_name varchar(64),
	c_min_earned_per numeric(22,0),
	c_aw_policy_type varchar(4),
	c_aw_construction_type varchar(15),
	c_aw_world_wide varchar(1),
	c_reinsured_desig varchar(250),
	c_company_paper_type varchar(1),
	c_revision_name varchar(250),
	c_transaction_comment varchar(4000),
	c_invoice_comment varchar(4000),
	c_transaction_reason varchar(250),
	c_policy_issue_date date,
	c_pol_issue_comment varchar(4000),
	c_date_headings varchar(1),
	c_policy_proof_date date,
	c_subj_satisfd_date date,
	c_note_compltd_date date,
	c_subj_followup_date date,
	c_cancel_req_by varchar(256),
	c_part_layer numeric(22,0),
	c_cedant_carrier varchar(250),
	c_is_policy_quota_share varchar(2),
	c_is_policy_captive varchar(2),
	c_is_policy_reins_only varchar(2),
	c_acc_coordinator varchar(250),
	entity_view_mode varchar(250),
	rate_clicked varchar(1),
	lose_carrier varchar(128),
	lose_premium_amount numeric(22,0),
	not_written_lose_carrier varchar(128),
	not_written_reason_code varchar(32),
	not_written_reason_desc varchar(4000),
	nw_lost_premium_amount numeric(22,0),
	proposal_entity_reference varchar(64),
	rating_mode varchar(128),
	quote_trans_prm numeric(22,0),
	is_qp_hidden varchar(1),
	is_qp_read_only varchar(1),
	can_non_renew_type varchar(100),
	remove_lost_reason_desc varchar(4000),
	rem_not_wrten_rasn_desc varchar(4000),
	naic_code varchar(20),
	issue_qfe varchar(5),
	cancel_method_desc varchar(256),
	non_renew_reason varchar(128),
	non_renew_reason_code varchar(128),
	disable_view_mode varchar(1),
	print_revision numeric(22,0),
	issued_revision varchar(20),
	currency_code varchar(20),
	currency_format varchar(50),
	retain_btm_flt_endr varchar(100),
	trans_accounting_month numeric(22,0),
	trans_accounting_year numeric(22,0),
	trans_accounting_date date,
	c_invoice_number varchar(20),
	is_comp_rate_dpndt_cov varchar(1),
	revision_name varchar(256),
	pol_term varchar(100),
	pol_term_code varchar(30),
	coinsured_flag varchar(4),
	coinsured_information varchar(1),
	task_entity_reference varchar(64),
	c_language varchar(20),
	batch_rev_end_no numeric(22,0),
	batch_rev_end_total numeric(22,0),
	skip_prorate_btm varchar(1),
	hidden_transaction_premium numeric(22,0),
	c_dummy_field varchar(15),
	c_deposite_prem numeric(22,0),
	c_minimum_prem numeric(22,0),
	c_min_earned_pct numeric(22,0),
	c_prev_pol_number numeric(22,0),
	c_pre_pol_no varchar(16),
	cancel_factor numeric(22,0),
	wrap_up_indicator varchar(1),
	wrap_up_level varchar(30),
	master_policy_no varchar(128),
	wrap_up_level_desc varchar(256),
	master_policy_name varchar(256),
	physical_audit varchar(1),
	co_insured varchar(250),
	wrap_up_expiration_date date,
	forms_custom_control_date date,
	c_display_pol_num varchar(128),
	address_ver_eco_chk varchar(1)
);

ALTER TABLE mic_policy_aw.rt_mis_quote_policies DROP CONSTRAINT IF EXISTS rt_mis_quote_policies_gid;
ALTER TABLE mic_policy_aw.rt_mis_quote_policies ADD CONSTRAINT rt_mis_quote_policies_gid PRIMARY KEY (gid);

