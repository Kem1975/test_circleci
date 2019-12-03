CREATE OR REPLACE PROCEDURE mic_policy_aw.usp_load_mis_ca_schedule_rating()
LANGUAGE plpgsql
AS $$
BEGIN

	INSERT INTO mic_policy_aw.mis_ca_schedule_rating ( 
		SCR_GID,SCR_SCHEDULE_RATING_COV,SCR_ENTITY_TYPE,SCR_ADD_ENTITY_TYPE,SCR_MOD_ENTITY_TYPE,SCR_DEL_ENTITY_TYPE,SCR_ENTITY_REFERENCE,SCR_FK_COLUMN_NAME,SCR_FK_COLUMN_VALUE,SCR_ADD_ENTITY_REFERENCE,SCR_MOD_ENTITY_REFERENCE,SCR_DEL_ENTITY_REFERENCE,SCR_ENTITY_STATUS,SCR_ENTITY_IS_LOCKED,SCR_ID,SCR_DATE_CREATED,SCR_USER_CREATED,SCR_DATE_MODIFIED,SCR_USER_MODIFIED,SCR_DATE_DELETED,SCR_AUDIT_FLAG,SCR_DISPLAY_ORDER,SCR_FACTOR_TYPE,SCR_MIN_VALUE,SCR_MAX_VALUE,SCR_DEFAULT_VALUE,SCR_OVERRIDE_MODIFIER,SCR_OVERRIDE_REASON,SCR_EXPENCE_REDUCTION,SCR_TOTAL_MODIFIER,SCR_SCHDL_UK_NAME,SCR_RISK_STATE,SCR_CUST_MIN,SCR_CUST_MAX,SCR_PRI_OVERRIDE_MODIFIER,SCR_ELIGIBILITY_MSG,SCR_FACTOR_MSG,SCR_SCH_RATE_FACTOR
	)
	SELECT SCR_GID,SCR_SCHEDULE_RATING_COV,SCR_ENTITY_TYPE,SCR_ADD_ENTITY_TYPE,SCR_MOD_ENTITY_TYPE,SCR_DEL_ENTITY_TYPE,SCR_ENTITY_REFERENCE,SCR_FK_COLUMN_NAME,SCR_FK_COLUMN_VALUE,SCR_ADD_ENTITY_REFERENCE,SCR_MOD_ENTITY_REFERENCE,SCR_DEL_ENTITY_REFERENCE,SCR_ENTITY_STATUS,SCR_ENTITY_IS_LOCKED,SCR_ID,SCR_DATE_CREATED,SCR_USER_CREATED,SCR_DATE_MODIFIED,SCR_USER_MODIFIED,SCR_DATE_DELETED,SCR_AUDIT_FLAG,SCR_DISPLAY_ORDER,SCR_FACTOR_TYPE,SCR_MIN_VALUE,SCR_MAX_VALUE,SCR_DEFAULT_VALUE,SCR_OVERRIDE_MODIFIER,SCR_OVERRIDE_REASON,SCR_EXPENCE_REDUCTION,SCR_TOTAL_MODIFIER,SCR_SCHDL_UK_NAME,SCR_RISK_STATE,SCR_CUST_MIN,SCR_CUST_MAX,SCR_PRI_OVERRIDE_MODIFIER,SCR_ELIGIBILITY_MSG,SCR_FACTOR_MSG,SCR_SCH_RATE_FACTOR
	FROM mic_policy_aw_stage.stage_mis_ca_schedule_rating
	ON CONFLICT(SCR_GID) DO UPDATE
	SET  MAD_ENTITY_TYPE = EXCLUDED.MAD_ENTITY_TYPE,MAD_ADD_ENTITY_TYPE = EXCLUDED.MAD_ADD_ENTITY_TYPE,MAD_MOD_ENTITY_TYPE = EXCLUDED.MAD_MOD_ENTITY_TYPE,MAD_DEL_ENTITY_TYPE = EXCLUDED.MAD_DEL_ENTITY_TYPE,MAD_ENTITY_REFERENCE = EXCLUDED.MAD_ENTITY_REFERENCE,MAD_FK_COLUMN_NAME = EXCLUDED.MAD_FK_COLUMN_NAME,MAD_FK_COLUMN_VALUE = EXCLUDED.MAD_FK_COLUMN_VALUE,MAD_ADD_ENTITY_REFERENCE = EXCLUDED.MAD_ADD_ENTITY_REFERENCE,MAD_MOD_ENTITY_REFERENCE = EXCLUDED.MAD_MOD_ENTITY_REFERENCE,MAD_DEL_ENTITY_REFERENCE = EXCLUDED.MAD_DEL_ENTITY_REFERENCE,MAD_ENTITY_STATUS = EXCLUDED.MAD_ENTITY_STATUS,MAD_ENTITY_IS_LOCKED = EXCLUDED.MAD_ENTITY_IS_LOCKED,MAD_ID = EXCLUDED.MAD_ID,MAD_DATE_CREATED = EXCLUDED.MAD_DATE_CREATED,MAD_USER_CREATED = EXCLUDED.MAD_USER_CREATED,MAD_DATE_MODIFIED = EXCLUDED.MAD_DATE_MODIFIED,MAD_USER_MODIFIED = EXCLUDED.MAD_USER_MODIFIED,MAD_DATE_DELETED = EXCLUDED.MAD_DATE_DELETED,MAD_AUDIT_FLAG = EXCLUDED.MAD_AUDIT_FLAG,MAD_COUNTRY_CODE = EXCLUDED.MAD_COUNTRY_CODE,MAD_COUNTRY = EXCLUDED.MAD_COUNTRY,MAD_ADDRESS_TYPE = EXCLUDED.MAD_ADDRESS_TYPE,MAD_LINE_1 = EXCLUDED.MAD_LINE_1,MAD_LINE_2 = EXCLUDED.MAD_LINE_2,MAD_CITY = EXCLUDED.MAD_CITY,MAD_STATE_CODE = EXCLUDED.MAD_STATE_CODE,MAD_STATE_DESC = EXCLUDED.MAD_STATE_DESC,MAD_ZIP_CODE = EXCLUDED.MAD_ZIP_CODE,MAD_PROVINCE = EXCLUDED.MAD_PROVINCE,MAD_POSTAL_CODE = EXCLUDED.MAD_POSTAL_CODE,MAD_COUNTY = EXCLUDED.MAD_COUNTY,MAD_REGION_CODE = EXCLUDED.MAD_REGION_CODE,MAD_TOWNSHIP = EXCLUDED.MAD_TOWNSHIP,MAD_LONGITUDE = EXCLUDED.MAD_LONGITUDE,MAD_LATITUDE = EXCLUDED.MAD_LATITUDE,MAD_CITY_CODE = EXCLUDED.MAD_CITY_CODE,MAD_MASTER_RECORD_GID = EXCLUDED.MAD_MASTER_RECORD_GID,MAD_GEO_REF_ID = EXCLUDED.MAD_GEO_REF_ID,MAD_SYS_START_DATE = EXCLUDED.MAD_SYS_START_DATE,MAD_SYS_END_DATE = EXCLUDED.MAD_SYS_END_DATE,MAD_SYS_IS_AUDITABLE = EXCLUDED.MAD_SYS_IS_AUDITABLE,MAD_SYS_IS_SPLIT_ON_AUDIT = EXCLUDED.MAD_SYS_IS_SPLIT_ON_AUDIT,MAD_SYS_EXPOSURE_IS_UNITS = EXCLUDED.MAD_SYS_EXPOSURE_IS_UNITS,MAD_SYS_PRORATA = EXCLUDED.MAD_SYS_PRORATA,MAD_ZIP_EXTENSION = EXCLUDED.MAD_ZIP_EXTENSION,MAD_LOCATION_ADDRESS = EXCLUDED.MAD_LOCATION_ADDRESS,MAD_INSURED_ADDRESS = EXCLUDED.MAD_INSURED_ADDRESS,MAD_PRODUCER_ADDRESS = EXCLUDED.MAD_PRODUCER_ADDRESS,MAD_LOSS_PAYEE_ADDRESS = EXCLUDED.MAD_LOSS_PAYEE_ADDRESS,MAD_BROKER_ADDRESS = EXCLUDED.MAD_BROKER_ADDRESS,MAD_BROKER_PRODUCER_ADDRESS = EXCLUDED.MAD_BROKER_PRODUCER_ADDRESS,MAD_DRIVER_ADDRESS = EXCLUDED.MAD_DRIVER_ADDRESS,MAD_ADDNL_ADDRESS = EXCLUDED.MAD_ADDNL_ADDRESS,MAD_BILLING_ADDRESS = EXCLUDED.MAD_BILLING_ADDRESS,MAD_PIOR_AGENCY_ADDRESS = EXCLUDED.MAD_PIOR_AGENCY_ADDRESS,MAD_VEHICLE_ADDRESS = EXCLUDED.MAD_VEHICLE_ADDRESS,MAD_MOTOR_ADDRESS = EXCLUDED.MAD_MOTOR_ADDRESS,MAD_CONTRACT_MAIL_ADD = EXCLUDED.MAD_CONTRACT_MAIL_ADD,MAD_RR_CONTRACT_MAIL_ADD = EXCLUDED.MAD_RR_CONTRACT_MAIL_ADD,MAD_NY_CONTRACT_MAIL_ADD = EXCLUDED.MAD_NY_CONTRACT_MAIL_ADD,MAD_INSURED_AW_MAIL_ADD = EXCLUDED.MAD_INSURED_AW_MAIL_ADD,MAD_C_VEH_ADD_LOC_NO = EXCLUDED.MAD_C_VEH_ADD_LOC_NO,MAD_C_SURPLUS_ADDRESS = EXCLUDED.MAD_C_SURPLUS_ADDRESS,MAD_ADD_INT_SITE_ADDRESS = EXCLUDED.MAD_ADD_INT_SITE_ADDRESS,MAD_POLICY_MAIL_ADDR_FK = EXCLUDED.MAD_POLICY_MAIL_ADDR_FK,MAD_STATUS_CODE = EXCLUDED.MAD_STATUS_CODE,MAD_REQUEST_ID = EXCLUDED.MAD_REQUEST_ID,MAD_RESPONSE_RECEIVED = EXCLUDED.MAD_RESPONSE_RECEIVED,MAD_SUGG_ADD = EXCLUDED.MAD_SUGG_ADD,MAD_ACPT_NEWADD = EXCLUDED.MAD_ACPT_NEWADD,MAD_DUMMY_STATE_DESC = EXCLUDED.MAD_DUMMY_STATE_DESC,MAD_DUMMY_STATUS_CODE = EXCLUDED.MAD_DUMMY_STATUS_CODE,MAD_D_GEO_RANGE_IND = EXCLUDED.MAD_D_GEO_RANGE_IND,MAD_C_LOC_ADD_PREFIL = EXCLUDED.MAD_C_LOC_ADD_PREFIL,MAD_C_LOC_OF_PREM = EXCLUDED.MAD_C_LOC_OF_PREM,MAD_C_ST_AS_PRE = EXCLUDED.MAD_C_ST_AS_PRE,MAD_C_SI_ADR = EXCLUDED.MAD_C_SI_ADR,MAD_POLICY_INS_WRAPUP_ADDRESS = EXCLUDED.MAD_POLICY_INS_WRAPUP_ADDRESS,MAD_LOC_VERIFICATION_ID = EXCLUDED.MAD_LOC_VERIFICATION_ID,MAD_LOC_VERIFICATION_RESPONSE = EXCLUDED.MAD_LOC_VERIFICATION_RESPONSE,MAD_LOC_SUGGESTION_ID = EXCLUDED.MAD_LOC_SUGGESTION_ID,MAD_LOC_SUGGESTION_RES = EXCLUDED.MAD_LOC_SUGGESTION_RES,MAD_CUSTOMER_ADDRESS = EXCLUDED.MAD_CUSTOMER_ADDRESS,MAD_ADDRESS_VERIFICATION = EXCLUDED.MAD_ADDRESS_VERIFICATION,SCR_SCHEDULE_RATING_COV = EXCLUDED.SCR_SCHEDULE_RATING_COV,SCR_ENTITY_TYPE = EXCLUDED.SCR_ENTITY_TYPE,SCR_ADD_ENTITY_TYPE = EXCLUDED.SCR_ADD_ENTITY_TYPE,SCR_MOD_ENTITY_TYPE = EXCLUDED.SCR_MOD_ENTITY_TYPE,SCR_DEL_ENTITY_TYPE = EXCLUDED.SCR_DEL_ENTITY_TYPE,SCR_ENTITY_REFERENCE = EXCLUDED.SCR_ENTITY_REFERENCE,SCR_FK_COLUMN_NAME = EXCLUDED.SCR_FK_COLUMN_NAME,SCR_FK_COLUMN_VALUE = EXCLUDED.SCR_FK_COLUMN_VALUE,SCR_ADD_ENTITY_REFERENCE = EXCLUDED.SCR_ADD_ENTITY_REFERENCE,SCR_MOD_ENTITY_REFERENCE = EXCLUDED.SCR_MOD_ENTITY_REFERENCE,SCR_DEL_ENTITY_REFERENCE = EXCLUDED.SCR_DEL_ENTITY_REFERENCE,SCR_ENTITY_STATUS = EXCLUDED.SCR_ENTITY_STATUS,SCR_ENTITY_IS_LOCKED = EXCLUDED.SCR_ENTITY_IS_LOCKED,SCR_ID = EXCLUDED.SCR_ID,SCR_DATE_CREATED = EXCLUDED.SCR_DATE_CREATED,SCR_USER_CREATED = EXCLUDED.SCR_USER_CREATED,SCR_DATE_MODIFIED = EXCLUDED.SCR_DATE_MODIFIED,SCR_USER_MODIFIED = EXCLUDED.SCR_USER_MODIFIED,SCR_DATE_DELETED = EXCLUDED.SCR_DATE_DELETED,SCR_AUDIT_FLAG = EXCLUDED.SCR_AUDIT_FLAG,SCR_DISPLAY_ORDER = EXCLUDED.SCR_DISPLAY_ORDER,SCR_FACTOR_TYPE = EXCLUDED.SCR_FACTOR_TYPE,SCR_MIN_VALUE = EXCLUDED.SCR_MIN_VALUE,SCR_MAX_VALUE = EXCLUDED.SCR_MAX_VALUE,SCR_DEFAULT_VALUE = EXCLUDED.SCR_DEFAULT_VALUE,SCR_OVERRIDE_MODIFIER = EXCLUDED.SCR_OVERRIDE_MODIFIER,SCR_OVERRIDE_REASON = EXCLUDED.SCR_OVERRIDE_REASON,SCR_EXPENCE_REDUCTION = EXCLUDED.SCR_EXPENCE_REDUCTION,SCR_TOTAL_MODIFIER = EXCLUDED.SCR_TOTAL_MODIFIER,SCR_SCHDL_UK_NAME = EXCLUDED.SCR_SCHDL_UK_NAME,SCR_RISK_STATE = EXCLUDED.SCR_RISK_STATE,SCR_CUST_MIN = EXCLUDED.SCR_CUST_MIN,SCR_CUST_MAX = EXCLUDED.SCR_CUST_MAX,SCR_PRI_OVERRIDE_MODIFIER = EXCLUDED.SCR_PRI_OVERRIDE_MODIFIER,SCR_ELIGIBILITY_MSG = EXCLUDED.SCR_ELIGIBILITY_MSG,SCR_FACTOR_MSG = EXCLUDED.SCR_FACTOR_MSG,SCR_SCH_RATE_FACTOR = EXCLUDED.SCR_SCH_RATE_FACTOR;
	
	COMMIT;
	
END;
$$;