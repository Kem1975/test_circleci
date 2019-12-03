CREATE TABLE IF NOT EXISTS mic_policy_aw.vw_mis_policy_comms_fees (
	mpm_id numeric(22,0),
	mpm_type varchar(20),
	mpm_policy_reference varchar(30),
	mpm_producer_code varchar(20),
	mpm_comm_plan_id numeric(22,0),
	mpm_comm_plan_name varchar(32),
	mpm_comm_plan_desc varchar(256),
	mpm_comm_plan_comm numeric(22,0),
	mpm_is_comm_plan_percent varchar(1),
	mpm_comm_plan_adjustment numeric(22,0),
	mpm_commission numeric(22,0),
	mpm_adjusted_commission numeric(22,0),
	mpm_net_commission numeric(22,0),
	mpm_is_comm_plan_tired varchar(1),
	mpm_sub_policy_reference varchar(30),
	mpm_comm_avg_percentage numeric(22,0),
	mpm_date_created date,
	mpm_user_created varchar(512),
	mpm_date_modified date,
	mpm_user_modified varchar(512),
	mpm_audit_flag varchar(1)
);

ALTER TABLE mic_policy_aw.vw_mis_policy_comms_fees DROP CONSTRAINT IF EXISTS vw_mis_policy_comms_fees_mpm_id;
ALTER TABLE mic_policy_aw.vw_mis_policy_comms_fees ADD CONSTRAINT vw_mis_policy_comms_fees_mpm_id PRIMARY KEY (mpm_id);

