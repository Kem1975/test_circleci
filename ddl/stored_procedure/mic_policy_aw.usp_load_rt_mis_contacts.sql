CREATE OR REPLACE PROCEDURE mic_policy_aw.usp_load_rt_mis_contacts()
LANGUAGE plpgsql
AS $$
BEGIN

	INSERT INTO mic_policy_aw.rt_mis_contacts ( 
		GID,ENTITY_TYPE,ADD_ENTITY_TYPE,MOD_ENTITY_TYPE,DEL_ENTITY_TYPE,ENTITY_REFERENCE,FK_COLUMN_NAME,FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE,ENTITY_STATUS,ENTITY_IS_LOCKED,ID,DATE_CREATED,USER_CREATED,DATE_MODIFIED,USER_MODIFIED,DATE_DELETED,AUDIT_FLAG,CONTACT_NAME,E_MAIL,TITLE,PHONE_1,PHONE_2,FAX,WEB_SITE,PRODUCER_CONTACT,INSURED_CONTACT,LOSS_PAYEE_CONTACT,BROKER_PRODUCER,MASTER_RECORD_GID,C_SURPLUS_CONTACT,CUSTOMER_CONTACT,PRIMARY_CUSTOMER_CONTACT,CUSTOMER_CONTACT_INFO
	)
	SELECT GID,ENTITY_TYPE,ADD_ENTITY_TYPE,MOD_ENTITY_TYPE,DEL_ENTITY_TYPE,ENTITY_REFERENCE,FK_COLUMN_NAME,FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE,ENTITY_STATUS,ENTITY_IS_LOCKED,ID,DATE_CREATED,USER_CREATED,DATE_MODIFIED,USER_MODIFIED,DATE_DELETED,AUDIT_FLAG,CONTACT_NAME,E_MAIL,TITLE,PHONE_1,PHONE_2,FAX,WEB_SITE,PRODUCER_CONTACT,INSURED_CONTACT,LOSS_PAYEE_CONTACT,BROKER_PRODUCER,MASTER_RECORD_GID,C_SURPLUS_CONTACT,CUSTOMER_CONTACT,PRIMARY_CUSTOMER_CONTACT,CUSTOMER_CONTACT_INFO
	FROM mic_policy_aw_stage.stage_rt_mis_contacts
	ON CONFLICT(GID) DO UPDATE
	SET  SYS_PRORATA = EXCLUDED.SYS_PRORATA,TYPE_OF_COVERAGE = EXCLUDED.TYPE_OF_COVERAGE,ORIGINAL_COST_NEW_FACTOR = EXCLUDED.ORIGINAL_COST_NEW_FACTOR,STATED_AMNT_BASIS_FACT = EXCLUDED.STATED_AMNT_BASIS_FACT,NON_OWNED_RISK_TYPE = EXCLUDED.NON_OWNED_RISK_TYPE,RISK_TYPE = EXCLUDED.RISK_TYPE,FARM_AUTO = EXCLUDED.FARM_AUTO,MEDICAL_EXPENSES = EXCLUDED.MEDICAL_EXPENSES,FUNERAL_EXPENSES = EXCLUDED.FUNERAL_EXPENSES,ESSENTIAL_SERVICES = EXCLUDED.ESSENTIAL_SERVICES,WORK_LOSS = EXCLUDED.WORK_LOSS,ADD_ESSENTIAL_SERVICES = EXCLUDED.ADD_ESSENTIAL_SERVICES,DEATH_BENEFIT = EXCLUDED.DEATH_BENEFIT,OTHER_AGGREGATE_LIMIT = EXCLUDED.OTHER_AGGREGATE_LIMIT,IS_ENDORSED = EXCLUDED.IS_ENDORSED,IS_POWER_UNIT_COVERED = EXCLUDED.IS_POWER_UNIT_COVERED,FORM = EXCLUDED.FORM,PREMIUM_INCLUDED = EXCLUDED.PREMIUM_INCLUDED,LIABILITY_MANUAL_FACTOR = EXCLUDED.LIABILITY_MANUAL_FACTOR,PHYS_DAM_MANUAL_FACTOR = EXCLUDED.PHYS_DAM_MANUAL_FACTOR,DELIVERY = EXCLUDED.DELIVERY,INSURANCE_AGENT_EXCLU = EXCLUDED.INSURANCE_AGENT_EXCLU,IS_AOL_LIABILITY = EXCLUDED.IS_AOL_LIABILITY,LOCATION_NO = EXCLUDED.LOCATION_NO,WRITTEN_PREMIUM = EXCLUDED.WRITTEN_PREMIUM,DEDUCTIBLE = EXCLUDED.DEDUCTIBLE,NUM_SPOUSE_RELATIVE = EXCLUDED.NUM_SPOUSE_RELATIVE,IS_AGG_BAL_MIN_LIAB = EXCLUDED.IS_AGG_BAL_MIN_LIAB,SELECTED_COVERAGE = EXCLUDED.SELECTED_COVERAGE,TYPE_OF_MOBILE_HOME = EXCLUDED.TYPE_OF_MOBILE_HOME,IS_SUB_TO_FULLY_EARN = EXCLUDED.IS_SUB_TO_FULLY_EARN,PRINT_LIMITS_DESC = EXCLUDED.PRINT_LIMITS_DESC,BENEFIT_PERIOD = EXCLUDED.BENEFIT_PERIOD,TOTAL_MEDICAL_EXPENSES = EXCLUDED.TOTAL_MEDICAL_EXPENSES,TOTAL_AGGREGATE_AMOUNT = EXCLUDED.TOTAL_AGGREGATE_AMOUNT,TOT_WKLY_MAX_WORK_LOSS = EXCLUDED.TOT_WKLY_MAX_WORK_LOSS,AGGREGATE_LIMIT = EXCLUDED.AGGREGATE_LIMIT,FUNERAL_BENEFIT_LIMIT = EXCLUDED.FUNERAL_BENEFIT_LIMIT,COV_DISP_NAME = EXCLUDED.COV_DISP_NAME,COV_DISP_NAME_ACTUAL = EXCLUDED.COV_DISP_NAME_ACTUAL,SYS_COMPANY_ANN_PREMIUM = EXCLUDED.SYS_COMPANY_ANN_PREMIUM,DISPLAY_INTEREST = EXCLUDED.DISPLAY_INTEREST,SYS_START_DATE = EXCLUDED.SYS_START_DATE,INS_LESSOR = EXCLUDED.INS_LESSOR,PREMIUM_TYPE = EXCLUDED.PREMIUM_TYPE,COMP_RT_UNT_TYP = EXCLUDED.COMP_RT_UNT_TYP,DES = EXCLUDED.DES,ADDITIONAL_COVERAGE_REF_NO = EXCLUDED.ADDITIONAL_COVERAGE_REF_NO,TRANSACTION_PREMIUM = EXCLUDED.TRANSACTION_PREMIUM,BI_EACH_PERSON_LIMIT = EXCLUDED.BI_EACH_PERSON_LIMIT,SCHEDULE_MOD = EXCLUDED.SCHEDULE_MOD,EXPERIENCE_MOD = EXCLUDED.EXPERIENCE_MOD,NUM_PROP_EXEC_OFFICER = EXCLUDED.NUM_PROP_EXEC_OFFICER,DEDUCTIBLE_FACTOR = EXCLUDED.DEDUCTIBLE_FACTOR,IS_BLANKET_LIAB_COV = EXCLUDED.IS_BLANKET_LIAB_COV,VALUATION_METHOD = EXCLUDED.VALUATION_METHOD,ADD_MONTHLY_WORK_LOSS = EXCLUDED.ADD_MONTHLY_WORK_LOSS,WEEKLY = EXCLUDED.WEEKLY,TOT_AGG_INCOME_BENEFIT = EXCLUDED.TOT_AGG_INCOME_BENEFIT,SPEC_PERILS_DEDUCT = EXCLUDED.SPEC_PERILS_DEDUCT,DISP_PRIORITY = EXCLUDED.DISP_PRIORITY,SPE_UNIT_DEDUCTIBLE = EXCLUDED.SPE_UNIT_DEDUCTIBLE,TITLE_EXCLUSION = EXCLUDED.TITLE_EXCLUSION,RATING_FUNCTION = EXCLUDED.RATING_FUNCTION,VEHICLE_NO = EXCLUDED.VEHICLE_NO,TRANS_PREM_NOT_SUB_TO_AUD = EXCLUDED.TRANS_PREM_NOT_SUB_TO_AUD,LIMIT = EXCLUDED.LIMIT,DEDUCTIBLE_DESC = EXCLUDED.DEDUCTIBLE_DESC,MED_EXPENSE_BENIFITS = EXCLUDED.MED_EXPENSE_BENIFITS,DETAILED_CLASS = EXCLUDED.DETAILED_CLASS,COMM_RED_FACTOR = EXCLUDED.COMM_RED_FACTOR,REHABILITATION_EXPENSES = EXCLUDED.REHABILITATION_EXPENSES,PER_DAY = EXCLUDED.PER_DAY,TOT_AGG_ESS_SVC_BENEFIT = EXCLUDED.TOT_AGG_ESS_SVC_BENEFIT,EXCESS_PIP = EXCLUDED.EXCESS_PIP,RISK_CITY_CODE = EXCLUDED.RISK_CITY_CODE,RISK_COUNTY_CODE = EXCLUDED.RISK_COUNTY_CODE,RISK_TAX_CODE = EXCLUDED.RISK_TAX_CODE,SYS_COMPANY_PREM_FORMULA = EXCLUDED.SYS_COMPANY_PREM_FORMULA,ADDITIONAL_COVERAGE_REF_ID = EXCLUDED.ADDITIONAL_COVERAGE_REF_ID,FARM_SEASONAL_USE = EXCLUDED.FARM_SEASONAL_USE,MANUAL_PREMIUM = EXCLUDED.MANUAL_PREMIUM,L_GID = EXCLUDED.L_GID,TRUTH_EXCLUSION = EXCLUDED.TRUTH_EXCLUSION,ANNUAL_PREMIUM = EXCLUDED.ANNUAL_PREMIUM,SUB_COVERAGE = EXCLUDED.SUB_COVERAGE,NON_OWNED_COVERAGE_TYPE = EXCLUDED.NON_OWNED_COVERAGE_TYPE,IS_PARTNER_LIAB_COV = EXCLUDED.IS_PARTNER_LIAB_COV,IS_VOLUNTEER_LIAB_COV = EXCLUDED.IS_VOLUNTEER_LIAB_COV,USAGE_RADIUS = EXCLUDED.USAGE_RADIUS,IS_CONTENTS_COV = EXCLUDED.IS_CONTENTS_COV,SUB_CLASS = EXCLUDED.SUB_CLASS,AUTOMOBILE_JUNK_DEALER = EXCLUDED.AUTOMOBILE_JUNK_DEALER,DEDUCTIBLE_COVERAGE = EXCLUDED.DEDUCTIBLE_COVERAGE,INCR_WAGELOSS_MONTH_LIMIT = EXCLUDED.INCR_WAGELOSS_MONTH_LIMIT,MAX_PREMIUM_LIAB_LOC_NUM = EXCLUDED.MAX_PREMIUM_LIAB_LOC_NUM,IS_SUB_TO_SCHD_RATING = EXCLUDED.IS_SUB_TO_SCHD_RATING,COMP_RT_MANIPULATOR = EXCLUDED.COMP_RT_MANIPULATOR,SYS_PRORATA_1 = EXCLUDED.SYS_PRORATA_1,FK_COLUMN_VALUE = EXCLUDED.FK_COLUMN_VALUE,FULL_TERM_PREMIUM = EXCLUDED.FULL_TERM_PREMIUM,BI_EACH_OCC_LIMIT = EXCLUDED.BI_EACH_OCC_LIMIT,IS_PROP_EXEC_OFF_SELECTED = EXCLUDED.IS_PROP_EXEC_OFF_SELECTED,RENTAL_BASIS = EXCLUDED.RENTAL_BASIS,STATED_AMOUNT = EXCLUDED.STATED_AMOUNT,USED_TO_TRANSPORT_EMPLOYEES = EXCLUDED.USED_TO_TRANSPORT_EMPLOYEES,OWNED_BY_NAME_INSURED = EXCLUDED.OWNED_BY_NAME_INSURED,PRINT_COV_DESC = EXCLUDED.PRINT_COV_DESC,IS_SUPPRESS_PRINT = EXCLUDED.IS_SUPPRESS_PRINT,TOT_WKLY_MAX_ESS_SERVCS = EXCLUDED.TOT_WKLY_MAX_ESS_SERVCS,OTHER_EXPOSURE = EXCLUDED.OTHER_EXPOSURE,MEDICAL_BENEFIT_LIMIT = EXCLUDED.MEDICAL_BENEFIT_LIMIT,FRF_FILING_REASON = EXCLUDED.FRF_FILING_REASON,SEC_DISP_PRIORITY = EXCLUDED.SEC_DISP_PRIORITY,SYS_END_DATE = EXCLUDED.SYS_END_DATE,MISC_COV_DESCRIPTION = EXCLUDED.MISC_COV_DESCRIPTION,EXL_DMG_RENT_PREM_COV = EXCLUDED.EXL_DMG_RENT_PREM_COV,ODOMETER_EXCLUSION = EXCLUDED.ODOMETER_EXCLUSION,PROD_WRK_PERFD_AGG_LT = EXCLUDED.PROD_WRK_PERFD_AGG_LT,DB_TABLE_NAME = EXCLUDED.DB_TABLE_NAME,SEQ = EXCLUDED.SEQ,VEHICLE_TYPE_RATING = EXCLUDED.VEHICLE_TYPE_RATING,VEHICLE_SPECIAL_TYPE = EXCLUDED.VEHICLE_SPECIAL_TYPE,SPECIALITY_USE = EXCLUDED.SPECIALITY_USE,IS_FLEET = EXCLUDED.IS_FLEET,COLLISION_TYPE = EXCLUDED.COLLISION_TYPE,MAXIMUM_LIMIT = EXCLUDED.MAXIMUM_LIMIT,ADD_LIM_COM_ME_EX_WO_LO = EXCLUDED.ADD_LIM_COM_ME_EX_WO_LO,DATE_DELETED = EXCLUDED.DATE_DELETED,IS_MODIFIED_ON_ENDT = EXCLUDED.IS_MODIFIED_ON_ENDT,ID = EXCLUDED.ID,OLD_ANNUAL_PREMIUM = EXCLUDED.OLD_ANNUAL_PREMIUM,COVERAGE = EXCLUDED.COVERAGE,RATING_FORMULA = EXCLUDED.RATING_FORMULA,FK_COLUMN_NAME = EXCLUDED.FK_COLUMN_NAME,RISK_STATE = EXCLUDED.RISK_STATE,PROPERTY_DAM_LIMIT = EXCLUDED.PROPERTY_DAM_LIMIT,IS_SUB_TO_EXP_RATING = EXCLUDED.IS_SUB_TO_EXP_RATING,PASSEN_HAZARD_EXCL = EXCLUDED.PASSEN_HAZARD_EXCL,HIRED_AUTO_TYPE = EXCLUDED.HIRED_AUTO_TYPE,VEHICLE_SIZE = EXCLUDED.VEHICLE_SIZE,ZONE_RATED = EXCLUDED.ZONE_RATED,LEASE_RENT_CONCERN = EXCLUDED.LEASE_RENT_CONCERN,IS_SUB_TO_COMM_RED = EXCLUDED.IS_SUB_TO_COMM_RED,SURVIVORS_LOSS = EXCLUDED.SURVIVORS_LOSS,EXT_MEDICAL_EXP_LIMIT = EXCLUDED.EXT_MEDICAL_EXP_LIMIT,MED_EXPENSE_BENFT = EXCLUDED.MED_EXPENSE_BENFT,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,COMPOSITE_RATING_GROUP_NO = EXCLUDED.COMPOSITE_RATING_GROUP_NO,SEASONAL_USE = EXCLUDED.SEASONAL_USE,SUSPENSION_PERMITTED = EXCLUDED.SUSPENSION_PERMITTED,ENTITY_TYPE = EXCLUDED.ENTITY_TYPE,ADD_ENTITY_TYPE = EXCLUDED.ADD_ENTITY_TYPE,MOD_ENTITY_TYPE = EXCLUDED.MOD_ENTITY_TYPE,DEL_ENTITY_TYPE = EXCLUDED.DEL_ENTITY_TYPE,ENTITY_REFERENCE = EXCLUDED.ENTITY_REFERENCE,FK_COLUMN_NAME = EXCLUDED.FK_COLUMN_NAME,FK_COLUMN_VALUE = EXCLUDED.FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE = EXCLUDED.ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE = EXCLUDED.MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE = EXCLUDED.DEL_ENTITY_REFERENCE,ENTITY_STATUS = EXCLUDED.ENTITY_STATUS,ENTITY_IS_LOCKED = EXCLUDED.ENTITY_IS_LOCKED,ID = EXCLUDED.ID,DATE_CREATED = EXCLUDED.DATE_CREATED,USER_CREATED = EXCLUDED.USER_CREATED,DATE_MODIFIED = EXCLUDED.DATE_MODIFIED,USER_MODIFIED = EXCLUDED.USER_MODIFIED,DATE_DELETED = EXCLUDED.DATE_DELETED,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,RISK_STATE = EXCLUDED.RISK_STATE,RISK_STATE_STAT_CODE = EXCLUDED.RISK_STATE_STAT_CODE,RISK_CITY_CODE = EXCLUDED.RISK_CITY_CODE,PRODUCT_CODE = EXCLUDED.PRODUCT_CODE,LOB_CODE = EXCLUDED.LOB_CODE,ANNUAL_PREMIUM = EXCLUDED.ANNUAL_PREMIUM,TRANSACTION_PREMIUM = EXCLUDED.TRANSACTION_PREMIUM,WRITTEN_PREMIUM = EXCLUDED.WRITTEN_PREMIUM,BALANCE_TO_MINIMUM = EXCLUDED.BALANCE_TO_MINIMUM,DEPOSIT_PREMIUM = EXCLUDED.DEPOSIT_PREMIUM,FULL_TERM_PREMIUM = EXCLUDED.FULL_TERM_PREMIUM,TRANS_PREM_NOT_SUB_TO_AUD = EXCLUDED.TRANS_PREM_NOT_SUB_TO_AUD,VEHICLE_COVERAGE_INFO = EXCLUDED.VEHICLE_COVERAGE_INFO,HEADING_NON_PHY_DAM_COV = EXCLUDED.HEADING_NON_PHY_DAM_COV,LIABILITY = EXCLUDED.LIABILITY,LIABILITY_PD = EXCLUDED.LIABILITY_PD,TYPE_OF_COVERAGE = EXCLUDED.TYPE_OF_COVERAGE,MIGRANT_WORK_LIAB = EXCLUDED.MIGRANT_WORK_LIAB,EXTRA_MED_BENFITS = EXCLUDED.EXTRA_MED_BENFITS,PERS_INJURY_PROT_NON = EXCLUDED.PERS_INJURY_PROT_NON,PERS_INJURY_PROT = EXCLUDED.PERS_INJURY_PROT,WAGE_LOSS = EXCLUDED.WAGE_LOSS,FUNERAL_EXPENSES = EXCLUDED.FUNERAL_EXPENSES,MEDICAL_BENEFIT = EXCLUDED.MEDICAL_BENEFIT,DEATH_BENEFITS = EXCLUDED.DEATH_BENEFITS,MED_EXP_BENEFITS_COV = EXCLUDED.MED_EXP_BENEFITS_COV,CHIROPRACTOR = EXCLUDED.CHIROPRACTOR,OBEL = EXCLUDED.OBEL,EXTENDED_PIP = EXCLUDED.EXTENDED_PIP,ADD_PERS_INJURY_PROT = EXCLUDED.ADD_PERS_INJURY_PROT,VEH_PROP_PROT_INSUR = EXCLUDED.VEH_PROP_PROT_INSUR,VEH_INELIGIBLE_FOR_PIP = EXCLUDED.VEH_INELIGIBLE_FOR_PIP,LMT_PROP_DAMAGE_LIAB = EXCLUDED.LMT_PROP_DAMAGE_LIAB,MEDICAL_PAYMENTS = EXCLUDED.MEDICAL_PAYMENTS,POLICY_HIRED_NONOWN = EXCLUDED.POLICY_HIRED_NONOWN,UNINSURED_MOTORIST = EXCLUDED.UNINSURED_MOTORIST,VEH_FAULT_LIAB_LIMIT_TYPE = EXCLUDED.VEH_FAULT_LIAB_LIMIT_TYPE,UNINSURED_MOTORIST_PD = EXCLUDED.UNINSURED_MOTORIST_PD,UNDERINSURED_MOTORIST = EXCLUDED.UNDERINSURED_MOTORIST,TOWING_AND_LABOR = EXCLUDED.TOWING_AND_LABOR,HEADING_PHY_DAM_COV = EXCLUDED.HEADING_PHY_DAM_COV,FULL_GLASS_COVERAGE = EXCLUDED.FULL_GLASS_COVERAGE,OTC = EXCLUDED.OTC,COLLISION = EXCLUDED.COLLISION,AUTO_LOAN_LEASE_GAP = EXCLUDED.AUTO_LOAN_LEASE_GAP,RENTAL_REIMBURSEMENT = EXCLUDED.RENTAL_REIMBURSEMENT,AV_DATA_EQUIPMENT = EXCLUDED.AV_DATA_EQUIPMENT,TAPES_RECORDS = EXCLUDED.TAPES_RECORDS,EXCLUDE_PUBLIC_AUTO = EXCLUDED.EXCLUDE_PUBLIC_AUTO,COMPOSITE_RATE = EXCLUDED.COMPOSITE_RATE,COMPOSITE_GROUP = EXCLUDED.COMPOSITE_GROUP,INCLUDE_CONV_EMB_SEC = EXCLUDED.INCLUDE_CONV_EMB_SEC,INCLUDE_VOLUNTEERS_LIAB = EXCLUDED.INCLUDE_VOLUNTEERS_LIAB,VALUE_BASED_CONTENTS = EXCLUDED.VALUE_BASED_CONTENTS,CA_VEHICLE_COVERAGES = EXCLUDED.CA_VEHICLE_COVERAGES,RISK_TAX_CODE = EXCLUDED.RISK_TAX_CODE,RISK_COUNTY_CODE = EXCLUDED.RISK_COUNTY_CODE,COV_DISP_NAME = EXCLUDED.COV_DISP_NAME,FULL_GLASS = EXCLUDED.FULL_GLASS,VALUATION_METHOD = EXCLUDED.VALUATION_METHOD,REBUILT_STRUCT_ALT_AUTO = EXCLUDED.REBUILT_STRUCT_ALT_AUTO,STATED_AMOUNT = EXCLUDED.STATED_AMOUNT,CHASSIS_AGE = EXCLUDED.CHASSIS_AGE,ORG_COST_NEW_UNKNOWN = EXCLUDED.ORG_COST_NEW_UNKNOWN,ORG_COST_NEW_CHASSIS = EXCLUDED.ORG_COST_NEW_CHASSIS,UN_COST_NEW_FACTOR = EXCLUDED.UN_COST_NEW_FACTOR,ORG_COST_NEW = EXCLUDED.ORG_COST_NEW,BUSINESS_INCOME = EXCLUDED.BUSINESS_INCOME,WAIVED_PREMIUM = EXCLUDED.WAIVED_PREMIUM,WAIVE_INDICATOR = EXCLUDED.WAIVE_INDICATOR,PREM_COM_RED_FACTOR = EXCLUDED.PREM_COM_RED_FACTOR,COMMISSIONABLE_PREMIUM = EXCLUDED.COMMISSIONABLE_PREMIUM,ORG_COST_NEW_VIN_VERIFIED = EXCLUDED.ORG_COST_NEW_VIN_VERIFIED,HEADING_COMP_VEH_RAT = EXCLUDED.HEADING_COMP_VEH_RAT,LIAB_MISC_FACTOR = EXCLUDED.LIAB_MISC_FACTOR,PHY_DMG_MISC_FACTOR = EXCLUDED.PHY_DMG_MISC_FACTOR,ORG_COST_NEW_VIN_DUMMY = EXCLUDED.ORG_COST_NEW_VIN_DUMMY,MEDPAY_COPIED = EXCLUDED.MEDPAY_COPIED,BUS_INC_COPIED = EXCLUDED.BUS_INC_COPIED,MOUNTED_ELEVATG_ROTING = EXCLUDED.MOUNTED_ELEVATG_ROTING,MOUNT_INDICATOR = EXCLUDED.MOUNT_INDICATOR,PRIOR_WAIVED_ADJUSTMENT = EXCLUDED.PRIOR_WAIVED_ADJUSTMENT,PERS_INJURY_PEDESTRIAN = EXCLUDED.PERS_INJURY_PEDESTRIAN,VALUATION_METHOD_MA = EXCLUDED.VALUATION_METHOD_MA,HEADING_MANUAL_FTR = EXCLUDED.HEADING_MANUAL_FTR,OVERRIDE_MANUAL_FTR = EXCLUDED.OVERRIDE_MANUAL_FTR,LIABILITY_MANUAL_FTR = EXCLUDED.LIABILITY_MANUAL_FTR,PHYSICAL_DMGE_MANUAL_FTR = EXCLUDED.PHYSICAL_DMGE_MANUAL_FTR,IS_COV_MANUALLY_RATED = EXCLUDED.IS_COV_MANUALLY_RATED,COMM_ANNUAL_PREMIUM = EXCLUDED.COMM_ANNUAL_PREMIUM,COMM_FULL_TERM_PREM = EXCLUDED.COMM_FULL_TERM_PREM,CHASSIS_YEAR = EXCLUDED.CHASSIS_YEAR,IS_COV_PRORATED = EXCLUDED.IS_COV_PRORATED,OVERRIDE_OTC = EXCLUDED.OVERRIDE_OTC,OVERRIDE_COLLISION = EXCLUDED.OVERRIDE_COLLISION,PERS_INJURY_PROT_DUMMY = EXCLUDED.PERS_INJURY_PROT_DUMMY,EXTENDTTCA12 = EXCLUDED.EXTENDTTCA12,EXTENDTTCA12_TL = EXCLUDED.EXTENDTTCA12_TL,OCN_BASE_LIST_PRICE = EXCLUDED.OCN_BASE_LIST_PRICE,OCN_MOUNT_EQUIP = EXCLUDED.OCN_MOUNT_EQUIP,OCN_MOUNT_EQUIP_DES = EXCLUDED.OCN_MOUNT_EQUIP_DES,VEHICLE_TYPE_RATING_CLASS = EXCLUDED.VEHICLE_TYPE_RATING_CLASS,MEDICAL_EXPENSES = EXCLUDED.MEDICAL_EXPENSES,C_OVER_LIAB = EXCLUDED.C_OVER_LIAB,PED_PIP_CHKBX = EXCLUDED.PED_PIP_CHKBX,FR_FACTOR_END = EXCLUDED.FR_FACTOR_END,ENTITY_TYPE = EXCLUDED.ENTITY_TYPE,ADD_ENTITY_TYPE = EXCLUDED.ADD_ENTITY_TYPE,MOD_ENTITY_TYPE = EXCLUDED.MOD_ENTITY_TYPE,DEL_ENTITY_TYPE = EXCLUDED.DEL_ENTITY_TYPE,ENTITY_REFERENCE = EXCLUDED.ENTITY_REFERENCE,FK_COLUMN_NAME = EXCLUDED.FK_COLUMN_NAME,FK_COLUMN_VALUE = EXCLUDED.FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE = EXCLUDED.ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE = EXCLUDED.MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE = EXCLUDED.DEL_ENTITY_REFERENCE,ENTITY_STATUS = EXCLUDED.ENTITY_STATUS,ENTITY_IS_LOCKED = EXCLUDED.ENTITY_IS_LOCKED,ID = EXCLUDED.ID,DATE_CREATED = EXCLUDED.DATE_CREATED,USER_CREATED = EXCLUDED.USER_CREATED,DATE_MODIFIED = EXCLUDED.DATE_MODIFIED,USER_MODIFIED = EXCLUDED.USER_MODIFIED,DATE_DELETED = EXCLUDED.DATE_DELETED,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,COMP_RATING_COV_SUMMARY = EXCLUDED.COMP_RATING_COV_SUMMARY,COVERAGE_TYPE = EXCLUDED.COVERAGE_TYPE,EXPOSURE_BASE = EXCLUDED.EXPOSURE_BASE,EXPOSURE_UNIT = EXCLUDED.EXPOSURE_UNIT,EXPOSURE = EXCLUDED.EXPOSURE,AUDITED_EXPOSURE = EXCLUDED.AUDITED_EXPOSURE,COMPOSITE_RATE = EXCLUDED.COMPOSITE_RATE,OVERRIDE_COMPOSITE_RATE = EXCLUDED.OVERRIDE_COMPOSITE_RATE,OVERRIDE_REASON = EXCLUDED.OVERRIDE_REASON,COMP_RATE_FORMULA = EXCLUDED.COMP_RATE_FORMULA,EXPOSURE_BASE_INDICATOR = EXCLUDED.EXPOSURE_BASE_INDICATOR,SYS_START_DATE = EXCLUDED.SYS_START_DATE,SYS_END_DATE = EXCLUDED.SYS_END_DATE,SYS_EXPOSURE_IS_UNITS = EXCLUDED.SYS_EXPOSURE_IS_UNITS,SYS_PRORATA = EXCLUDED.SYS_PRORATA,SYS_IS_AUDITABLE = EXCLUDED.SYS_IS_AUDITABLE,SYS_IS_SPLIT_ON_AUDIT = EXCLUDED.SYS_IS_SPLIT_ON_AUDIT,EXPOSURE_COMMENT = EXCLUDED.EXPOSURE_COMMENT,IS_EXPOSURE_DOLLAR = EXCLUDED.IS_EXPOSURE_DOLLAR,COMP_RISK_CLASS_CODE = EXCLUDED.COMP_RISK_CLASS_CODE,C_OVERRIDE_COMP_RATE_VAL = EXCLUDED.C_OVERRIDE_COMP_RATE_VAL,C_TERMEXPOSURE = EXCLUDED.C_TERMEXPOSURE,ENTITY_TYPE = EXCLUDED.ENTITY_TYPE,ADD_ENTITY_TYPE = EXCLUDED.ADD_ENTITY_TYPE,MOD_ENTITY_TYPE = EXCLUDED.MOD_ENTITY_TYPE,DEL_ENTITY_TYPE = EXCLUDED.DEL_ENTITY_TYPE,ENTITY_REFERENCE = EXCLUDED.ENTITY_REFERENCE,FK_COLUMN_NAME = EXCLUDED.FK_COLUMN_NAME,FK_COLUMN_VALUE = EXCLUDED.FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE = EXCLUDED.ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE = EXCLUDED.MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE = EXCLUDED.DEL_ENTITY_REFERENCE,ENTITY_STATUS = EXCLUDED.ENTITY_STATUS,ENTITY_IS_LOCKED = EXCLUDED.ENTITY_IS_LOCKED,ID = EXCLUDED.ID,DATE_CREATED = EXCLUDED.DATE_CREATED,USER_CREATED = EXCLUDED.USER_CREATED,DATE_MODIFIED = EXCLUDED.DATE_MODIFIED,USER_MODIFIED = EXCLUDED.USER_MODIFIED,DATE_DELETED = EXCLUDED.DATE_DELETED,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,CONTACT_NAME = EXCLUDED.CONTACT_NAME,E_MAIL = EXCLUDED.E_MAIL,TITLE = EXCLUDED.TITLE,PHONE_1 = EXCLUDED.PHONE_1,PHONE_2 = EXCLUDED.PHONE_2,FAX = EXCLUDED.FAX,WEB_SITE = EXCLUDED.WEB_SITE,PRODUCER_CONTACT = EXCLUDED.PRODUCER_CONTACT,INSURED_CONTACT = EXCLUDED.INSURED_CONTACT,LOSS_PAYEE_CONTACT = EXCLUDED.LOSS_PAYEE_CONTACT,BROKER_PRODUCER = EXCLUDED.BROKER_PRODUCER,MASTER_RECORD_GID = EXCLUDED.MASTER_RECORD_GID,C_SURPLUS_CONTACT = EXCLUDED.C_SURPLUS_CONTACT,CUSTOMER_CONTACT = EXCLUDED.CUSTOMER_CONTACT,PRIMARY_CUSTOMER_CONTACT = EXCLUDED.PRIMARY_CUSTOMER_CONTACT,CUSTOMER_CONTACT_INFO = EXCLUDED.CUSTOMER_CONTACT_INFO;
	
	COMMIT;
	
END;
$$;