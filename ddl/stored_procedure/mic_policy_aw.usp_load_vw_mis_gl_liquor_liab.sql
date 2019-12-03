CREATE OR REPLACE PROCEDURE mic_policy_aw.usp_load_vw_mis_gl_liquor_liab()
LANGUAGE plpgsql
AS $$
BEGIN

	INSERT INTO mic_policy_aw.vw_mis_gl_liquor_liab ( 
		GID,ENTITY_TYPE,ADD_ENTITY_TYPE,MOD_ENTITY_TYPE,DEL_ENTITY_TYPE,ENTITY_REFERENCE,FK_COLUMN_NAME,FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE,ENTITY_STATUS,ENTITY_IS_LOCKED,ID,DATE_CREATED,USER_CREATED,DATE_MODIFIED,USER_MODIFIED,DATE_DELETED,AUDIT_FLAG,RISK_STATE,RISK_STATE_STAT_CODE,RISK_CITY_CODE,PRODUCT_CODE,LOB_CODE,ANNUAL_PREMIUM,TRANSACTION_PREMIUM,WRITTEN_PREMIUM,BALANCE_TO_MINIMUM,DEPOSIT_PREMIUM,FULL_TERM_PREMIUM,TRANS_PREM_NOT_SUB_TO_AUD,LOB_GL_LIQUOR_LIAB,OCC_COVERAGE_BASIS,CLAIMS_MADE_COV_BASIS,YEAR_IN_CLAIMS_MADE,RETRO_DATE_SET_CLMS_MD,RETROACTIVE_DATE,SUP_EXT_REP_PERIOD_COV,COV_BASIS_CODE,HEADING_LIMITS,PER_PERS_BOD_INJ_LIM,DISP_PER_PERS_BOD_INJ_LIM,EAC_COMM_BOD_INJ_LIM,DISP_EAC_COMM_BOD_INJ_LIM,EAC_PER_LOSS_SUP_LIM,DISP_EAC_PER_LOSS_SUP_LIM,EA_COM_CA_LOS_SUP_LMT,DISP_EA_COM_CA_LOS_SUP_LMT,PER_PERSON_LIMIT,EACH_COMM_CAU_LIMIT,DISP_EACH_COMM_CAU_LIMIT,AGGREGATE_LIMIT,DISP_AGGREGATE_LIMIT,POLICY_LIMITS_CODE,LIMITS_IDENTIFIER_CODE,CGL_COV_PART_LMT_R_APPL,HEADING_DEDUCTIBLES,CGL_COV_PART_DEDUCT_APP,DED_LIAB_INSURANCE,DEDUCTIBLE_APPLICATION,DEDUCTIBLE_TYPE,PER_CLAIM_DEDUCTIBLE,PER_COMMON_CAUSE_DED,BI_DEDUCT_AMOUNT,BI_DEDUCT_CODE,PROP_DAMAG_DEDUCT_AMOUNT,PROP_DAMAG_DEDUCT_CODE,BI_PD_COMB_DEDUCT_AMOUNT,DEDUCTIBLE_CODE,RISK_TAX_CODE,RISK_COUNTY_CODE,WAIVED_PREMIUM,WAIVE_INDICATOR,PREM_COM_RED_FACTOR,COMMISSIONABLE_PREMIUM,PRIOR_WAIVED_ADJUSTMENT,IS_COV_MANUALLY_RATED,COMM_ANNUAL_PREMIUM,COMM_FULL_TERM_PREM,IS_COV_PRORATED,C_LIQ_DED_APP,C_BIPD_COMB_SIR_LIQ_AMT,C_SIR_LIAB_INSURANCE
	)
	SELECT GID,ENTITY_TYPE,ADD_ENTITY_TYPE,MOD_ENTITY_TYPE,DEL_ENTITY_TYPE,ENTITY_REFERENCE,FK_COLUMN_NAME,FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE,ENTITY_STATUS,ENTITY_IS_LOCKED,ID,DATE_CREATED,USER_CREATED,DATE_MODIFIED,USER_MODIFIED,DATE_DELETED,AUDIT_FLAG,RISK_STATE,RISK_STATE_STAT_CODE,RISK_CITY_CODE,PRODUCT_CODE,LOB_CODE,ANNUAL_PREMIUM,TRANSACTION_PREMIUM,WRITTEN_PREMIUM,BALANCE_TO_MINIMUM,DEPOSIT_PREMIUM,FULL_TERM_PREMIUM,TRANS_PREM_NOT_SUB_TO_AUD,LOB_GL_LIQUOR_LIAB,OCC_COVERAGE_BASIS,CLAIMS_MADE_COV_BASIS,YEAR_IN_CLAIMS_MADE,RETRO_DATE_SET_CLMS_MD,RETROACTIVE_DATE,SUP_EXT_REP_PERIOD_COV,COV_BASIS_CODE,HEADING_LIMITS,PER_PERS_BOD_INJ_LIM,DISP_PER_PERS_BOD_INJ_LIM,EAC_COMM_BOD_INJ_LIM,DISP_EAC_COMM_BOD_INJ_LIM,EAC_PER_LOSS_SUP_LIM,DISP_EAC_PER_LOSS_SUP_LIM,EA_COM_CA_LOS_SUP_LMT,DISP_EA_COM_CA_LOS_SUP_LMT,PER_PERSON_LIMIT,EACH_COMM_CAU_LIMIT,DISP_EACH_COMM_CAU_LIMIT,AGGREGATE_LIMIT,DISP_AGGREGATE_LIMIT,POLICY_LIMITS_CODE,LIMITS_IDENTIFIER_CODE,CGL_COV_PART_LMT_R_APPL,HEADING_DEDUCTIBLES,CGL_COV_PART_DEDUCT_APP,DED_LIAB_INSURANCE,DEDUCTIBLE_APPLICATION,DEDUCTIBLE_TYPE,PER_CLAIM_DEDUCTIBLE,PER_COMMON_CAUSE_DED,BI_DEDUCT_AMOUNT,BI_DEDUCT_CODE,PROP_DAMAG_DEDUCT_AMOUNT,PROP_DAMAG_DEDUCT_CODE,BI_PD_COMB_DEDUCT_AMOUNT,DEDUCTIBLE_CODE,RISK_TAX_CODE,RISK_COUNTY_CODE,WAIVED_PREMIUM,WAIVE_INDICATOR,PREM_COM_RED_FACTOR,COMMISSIONABLE_PREMIUM,PRIOR_WAIVED_ADJUSTMENT,IS_COV_MANUALLY_RATED,COMM_ANNUAL_PREMIUM,COMM_FULL_TERM_PREM,IS_COV_PRORATED,C_LIQ_DED_APP,C_BIPD_COMB_SIR_LIQ_AMT,C_SIR_LIAB_INSURANCE
	FROM mic_policy_aw_stage.stage_vw_mis_gl_liquor_liab
	ON CONFLICT(GID) DO UPDATE
	SET  IMDT_RELF_CONTESTS_TYPE = EXCLUDED.IMDT_RELF_CONTESTS_TYPE,CLAIMS_MADE_COV_BASIS = EXCLUDED.CLAIMS_MADE_COV_BASIS,ADD_ID = EXCLUDED.ADD_ID,NAME_ADDR_GV_AUTH_CNTR_PRT = EXCLUDED.NAME_ADDR_GV_AUTH_CNTR_PRT,CLASSIFICATION_ID = EXCLUDED.CLASSIFICATION_ID,TYPE_OF_COVERAGE = EXCLUDED.TYPE_OF_COVERAGE,CLASSIFICATION_AUDITED_EXP = EXCLUDED.CLASSIFICATION_AUDITED_EXP,IS_FORM_SELECTED = EXCLUDED.IS_FORM_SELECTED,RATING_EXP = EXCLUDED.RATING_EXP,EMP_EXT_COV_FACT = EXCLUDED.EMP_EXT_COV_FACT,CLASS_KEY_WORD = EXCLUDED.CLASS_KEY_WORD,COMBINED_DEDUCTIBLE_FTR = EXCLUDED.COMBINED_DEDUCTIBLE_FTR,RISK_TYPE = EXCLUDED.RISK_TYPE,FORM = EXCLUDED.FORM,PRIMARY_STATE_CODE = EXCLUDED.PRIMARY_STATE_CODE,LIMIT_2 = EXCLUDED.LIMIT_2,LIMIT_4 = EXCLUDED.LIMIT_4,LIMIT_12 = EXCLUDED.LIMIT_12,LIMIT_16 = EXCLUDED.LIMIT_16,DEDUCTIBLE_4 = EXCLUDED.DEDUCTIBLE_4,DEDUCTIBLE_7 = EXCLUDED.DEDUCTIBLE_7,LOCATION_ADDRESS = EXCLUDED.LOCATION_ADDRESS,PREMIUM_BASIS = EXCLUDED.PREMIUM_BASIS,OPT_PROVISION = EXCLUDED.OPT_PROVISION,CONTESTS_PREMISES = EXCLUDED.CONTESTS_PREMISES,LOC_NAME = EXCLUDED.LOC_NAME,GOV_SUB_DIV_STATE = EXCLUDED.GOV_SUB_DIV_STATE,SYS_COMPANY_ANN_PREMIUM = EXCLUDED.SYS_COMPANY_ANN_PREMIUM,SYS_START_DATE = EXCLUDED.SYS_START_DATE,LIMIT_19 = EXCLUDED.LIMIT_19,CONSENT_EXCESS_RATE = EXCLUDED.CONSENT_EXCESS_RATE,PROJECT_DESCRIPTIONS = EXCLUDED.PROJECT_DESCRIPTIONS,SUBLINE_CODE = EXCLUDED.SUBLINE_CODE,WRITTEN_PREMIUM = EXCLUDED.WRITTEN_PREMIUM,CALC_BY_FACT_OR_SELCT_PREM = EXCLUDED.CALC_BY_FACT_OR_SELCT_PREM,EXPOSURE = EXCLUDED.EXPOSURE,PRIMARY_STATE = EXCLUDED.PRIMARY_STATE,LIMIT_7 = EXCLUDED.LIMIT_7,DEDUCTIBLE_2 = EXCLUDED.DEDUCTIBLE_2,DEDUCTIBLE_5 = EXCLUDED.DEDUCTIBLE_5,LOCATION_NO = EXCLUDED.LOCATION_NO,STATE_DESC = EXCLUDED.STATE_DESC,CLASSIFICATION_FK_COLUMN_NAME = EXCLUDED.CLASSIFICATION_FK_COLUMN_NAME,SIC_CODE = EXCLUDED.SIC_CODE,LIAB_CONTESTS_TYPE = EXCLUDED.LIAB_CONTESTS_TYPE,CONTRACT_MAIL_ADD = EXCLUDED.CONTRACT_MAIL_ADD,COV_IND = EXCLUDED.COV_IND,CONT_ADDT_ADD_GID = EXCLUDED.CONT_ADDT_ADD_GID,ESTIMATED_EXPOSURE = EXCLUDED.ESTIMATED_EXPOSURE,FINAL_RATE = EXCLUDED.FINAL_RATE,LIMIT_23 = EXCLUDED.LIMIT_23,STATUS = EXCLUDED.STATUS,DEDUCTIBLE_8 = EXCLUDED.DEDUCTIBLE_8,SUBLINE = EXCLUDED.SUBLINE,DES = EXCLUDED.DES,TRANSACTION_PREMIUM = EXCLUDED.TRANSACTION_PREMIUM,ADJ_BASE_RATE = EXCLUDED.ADJ_BASE_RATE,COVERAGE_CHECKED = EXCLUDED.COVERAGE_CHECKED,CUT_OFF_DATE = EXCLUDED.CUT_OFF_DATE,LIMIT_13 = EXCLUDED.LIMIT_13,LIMIT_17 = EXCLUDED.LIMIT_17,DEDUCTIBLE_3 = EXCLUDED.DEDUCTIBLE_3,MANUAL_PREMIUM = EXCLUDED.MANUAL_PREMIUM,ADJ_BASE_MANUAL_RATE = EXCLUDED.ADJ_BASE_MANUAL_RATE,COMM_RED_FACTOR = EXCLUDED.COMM_RED_FACTOR,IRPM_FACT = EXCLUDED.IRPM_FACT,SYS_COMPANY_PREM_FORMULA = EXCLUDED.SYS_COMPANY_PREM_FORMULA,COMP_RATING_AUD_EXPOSURE = EXCLUDED.COMP_RATING_AUD_EXPOSURE,RISK_CITY_CODE = EXCLUDED.RISK_CITY_CODE,RISK_COUNTY_CODE = EXCLUDED.RISK_COUNTY_CODE,RISK_TAX_CODE = EXCLUDED.RISK_TAX_CODE,COV_START_DATE = EXCLUDED.COV_START_DATE,LIMIT_25 = EXCLUDED.LIMIT_25,LIMIT_26 = EXCLUDED.LIMIT_26,LIMIT_29 = EXCLUDED.LIMIT_29,MANUAL_FTR = EXCLUDED.MANUAL_FTR,RATING_FUNCTION = EXCLUDED.RATING_FUNCTION,PREMISES_OPERATIONS = EXCLUDED.PREMISES_OPERATIONS,LIMIT_11 = EXCLUDED.LIMIT_11,LIMIT_15 = EXCLUDED.LIMIT_15,DEDUCTIBLE_APPLICATION = EXCLUDED.DEDUCTIBLE_APPLICATION,OPT_PROV_TYPE = EXCLUDED.OPT_PROV_TYPE,LIAB_COV_B = EXCLUDED.LIAB_COV_B,BAL_TO_MIN_TOT_ANNUAL_PREM = EXCLUDED.BAL_TO_MIN_TOT_ANNUAL_PREM,POLLUTION_COV_FORM = EXCLUDED.POLLUTION_COV_FORM,DEDUCTIBLE_APPLIES = EXCLUDED.DEDUCTIBLE_APPLIES,LOC_ID = EXCLUDED.LOC_ID,IS_SUB_TO_SCHD_RATING = EXCLUDED.IS_SUB_TO_SCHD_RATING,EXPERIENCE_MOD_FACT = EXCLUDED.EXPERIENCE_MOD_FACT,LEAD_FTR = EXCLUDED.LEAD_FTR,LIMIT_24 = EXCLUDED.LIMIT_24,TERR_CALC_PREMIUM_FLAG = EXCLUDED.TERR_CALC_PREMIUM_FLAG,DEDUCTIBLE_10 = EXCLUDED.DEDUCTIBLE_10,DEDUCTIBLE_9 = EXCLUDED.DEDUCTIBLE_9,DEDUCTIBLE_CREDIT_AMT = EXCLUDED.DEDUCTIBLE_CREDIT_AMT,ANNUAL_PREMIUM = EXCLUDED.ANNUAL_PREMIUM,DEDUCTIBLE_TYPE = EXCLUDED.DEDUCTIBLE_TYPE,PARTICIPATION_PERCENT = EXCLUDED.PARTICIPATION_PERCENT,CLASS_DESCRIPTION = EXCLUDED.CLASS_DESCRIPTION,ADD_INT_NAME = EXCLUDED.ADD_INT_NAME,ADD_COV_PART = EXCLUDED.ADD_COV_PART,ADD_FORM = EXCLUDED.ADD_FORM,COV_FORM = EXCLUDED.COV_FORM,TERR_EXP_CLASS_TYPE = EXCLUDED.TERR_EXP_CLASS_TYPE,BAL_TO_MIN_SUBLINE_MIN_PREM = EXCLUDED.BAL_TO_MIN_SUBLINE_MIN_PREM,COMBINED_SINGLE_LIMIT = EXCLUDED.COMBINED_SINGLE_LIMIT,LOC_DESCRIPTION = EXCLUDED.LOC_DESCRIPTION,DESC_OF_CNTRCT_OPERATION = EXCLUDED.DESC_OF_CNTRCT_OPERATION,SYS_END_DATE = EXCLUDED.SYS_END_DATE,LIMIT_27 = EXCLUDED.LIMIT_27,INC_LIMIT_TABLE_ASSIGNMENT = EXCLUDED.INC_LIMIT_TABLE_ASSIGNMENT,GL_POLICY_TYPE = EXCLUDED.GL_POLICY_TYPE,OVERRIDE_DEDUCTIBLE = EXCLUDED.OVERRIDE_DEDUCTIBLE,DISP_COVERAGE_NAME = EXCLUDED.DISP_COVERAGE_NAME,BAL_LEVEL = EXCLUDED.BAL_LEVEL,FULL_TERM_PREMIUM = EXCLUDED.FULL_TERM_PREMIUM,COVERAGE_PART = EXCLUDED.COVERAGE_PART,RETROACTIVE_DATE = EXCLUDED.RETROACTIVE_DATE,LIMIT_3 = EXCLUDED.LIMIT_3,LIMIT_5 = EXCLUDED.LIMIT_5,LIMIT_14 = EXCLUDED.LIMIT_14,DEDUCTIBLE_1 = EXCLUDED.DEDUCTIBLE_1,DEDUCTIBLE_6 = EXCLUDED.DEDUCTIBLE_6,CLASSIFICATION_GID = EXCLUDED.CLASSIFICATION_GID,RATE_ID = EXCLUDED.RATE_ID,OPT_PROV_NAME = EXCLUDED.OPT_PROV_NAME,ADD_INTEREST_TYPE = EXCLUDED.ADD_INTEREST_TYPE,EXP_COV_A = EXCLUDED.EXP_COV_A,ID = EXCLUDED.ID,CLASS_RATING_ID = EXCLUDED.CLASS_RATING_ID,IS_MODIFIED_ON_ENDT = EXCLUDED.IS_MODIFIED_ON_ENDT,IS_SUB_TO_IRPM_RATING = EXCLUDED.IS_SUB_TO_IRPM_RATING,LOCATION_ADDRESS_GID = EXCLUDED.LOCATION_ADDRESS_GID,COMP_RATING_EST_EXPOSURE = EXCLUDED.COMP_RATING_EST_EXPOSURE,LIMIT_20 = EXCLUDED.LIMIT_20,LIMIT_22 = EXCLUDED.LIMIT_22,COV_END_DATE = EXCLUDED.COV_END_DATE,SUB_COVERAGE_DESC = EXCLUDED.SUB_COVERAGE_DESC,CONTRACT_NO = EXCLUDED.CONTRACT_NO,RATE = EXCLUDED.RATE,DB_TABLE_NAME = EXCLUDED.DB_TABLE_NAME,DATE_DELETED = EXCLUDED.DATE_DELETED,SEQ = EXCLUDED.SEQ,ENTITY_REFERENCE = EXCLUDED.ENTITY_REFERENCE,LOB_CODE = EXCLUDED.LOB_CODE,LIMIT_1 = EXCLUDED.LIMIT_1,LIMIT_6 = EXCLUDED.LIMIT_6,LIMIT_10 = EXCLUDED.LIMIT_10,CLASS_CODE = EXCLUDED.CLASS_CODE,ADD_INT_LOCATION = EXCLUDED.ADD_INT_LOCATION,TERRORISM_COV_TYPE = EXCLUDED.TERRORISM_COV_TYPE,DESIGN_CONTRACT = EXCLUDED.DESIGN_CONTRACT,IS_SUB_TO_COMM_RED = EXCLUDED.IS_SUB_TO_COMM_RED,IS_SUB_TO_EXP_RATING = EXCLUDED.IS_SUB_TO_EXP_RATING,SCHEDULE_MOD_FACT = EXCLUDED.SCHEDULE_MOD_FACT,LIMIT_18 = EXCLUDED.LIMIT_18,COMPOSITE_RATING_GROUP_NO = EXCLUDED.COMPOSITE_RATING_GROUP_NO,LIMIT_21 = EXCLUDED.LIMIT_21,RES_TANK_LAW = EXCLUDED.RES_TANK_LAW,CLASSIFICATION_COMPOSITE_GRP = EXCLUDED.CLASSIFICATION_COMPOSITE_GRP,EXCESS_ADJ_BR = EXCLUDED.EXCESS_ADJ_BR,BOIL_PRS_VES_STATE = EXCLUDED.BOIL_PRS_VES_STATE,COMM_PEST_APP_STATE = EXCLUDED.COMM_PEST_APP_STATE,LIMIT_28 = EXCLUDED.LIMIT_28,PREM_PROD_A_RATE_FLAG = EXCLUDED.PREM_PROD_A_RATE_FLAG,COVERAGE_PARENT_ID = EXCLUDED.COVERAGE_PARENT_ID,DEDUCTIBLE_PLAN = EXCLUDED.DEDUCTIBLE_PLAN,INT_COVERAGE = EXCLUDED.INT_COVERAGE,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,COVERAGE = EXCLUDED.COVERAGE,RATING_FORMULA = EXCLUDED.RATING_FORMULA,ENTITY_TYPE = EXCLUDED.ENTITY_TYPE,RISK_STATE = EXCLUDED.RISK_STATE,PACKAGE_POLICY = EXCLUDED.PACKAGE_POLICY,COVERAGE_TYPE = EXCLUDED.COVERAGE_TYPE,YEAR_IN_CLAIMS_MADE = EXCLUDED.YEAR_IN_CLAIMS_MADE,LIMIT_8 = EXCLUDED.LIMIT_8,LIMIT_9 = EXCLUDED.LIMIT_9,TERRITORY_CODE = EXCLUDED.TERRITORY_CODE,ENTITY_TYPE = EXCLUDED.ENTITY_TYPE,ADD_ENTITY_TYPE = EXCLUDED.ADD_ENTITY_TYPE,MOD_ENTITY_TYPE = EXCLUDED.MOD_ENTITY_TYPE,DEL_ENTITY_TYPE = EXCLUDED.DEL_ENTITY_TYPE,ENTITY_REFERENCE = EXCLUDED.ENTITY_REFERENCE,FK_COLUMN_NAME = EXCLUDED.FK_COLUMN_NAME,FK_COLUMN_VALUE = EXCLUDED.FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE = EXCLUDED.ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE = EXCLUDED.MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE = EXCLUDED.DEL_ENTITY_REFERENCE,ENTITY_STATUS = EXCLUDED.ENTITY_STATUS,ENTITY_IS_LOCKED = EXCLUDED.ENTITY_IS_LOCKED,ID = EXCLUDED.ID,DATE_CREATED = EXCLUDED.DATE_CREATED,USER_CREATED = EXCLUDED.USER_CREATED,DATE_MODIFIED = EXCLUDED.DATE_MODIFIED,USER_MODIFIED = EXCLUDED.USER_MODIFIED,DATE_DELETED = EXCLUDED.DATE_DELETED,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,RISK_STATE = EXCLUDED.RISK_STATE,RISK_STATE_STAT_CODE = EXCLUDED.RISK_STATE_STAT_CODE,RISK_CITY_CODE = EXCLUDED.RISK_CITY_CODE,PRODUCT_CODE = EXCLUDED.PRODUCT_CODE,LOB_CODE = EXCLUDED.LOB_CODE,ANNUAL_PREMIUM = EXCLUDED.ANNUAL_PREMIUM,TRANSACTION_PREMIUM = EXCLUDED.TRANSACTION_PREMIUM,WRITTEN_PREMIUM = EXCLUDED.WRITTEN_PREMIUM,BALANCE_TO_MINIMUM = EXCLUDED.BALANCE_TO_MINIMUM,DEPOSIT_PREMIUM = EXCLUDED.DEPOSIT_PREMIUM,FULL_TERM_PREMIUM = EXCLUDED.FULL_TERM_PREMIUM,TRANS_PREM_NOT_SUB_TO_AUD = EXCLUDED.TRANS_PREM_NOT_SUB_TO_AUD,LOB_GL_EDL_LIAB = EXCLUDED.LOB_GL_EDL_LIAB,OCC_COVERAGE_BASIS = EXCLUDED.OCC_COVERAGE_BASIS,CLAIMS_MADE_COV_BASIS = EXCLUDED.CLAIMS_MADE_COV_BASIS,YEARS_IN_CLAIM_MADE_EDL = EXCLUDED.YEARS_IN_CLAIM_MADE_EDL,RETRO_DATE_SET_CLAIM_EDL = EXCLUDED.RETRO_DATE_SET_CLAIM_EDL,RETROACTIVE_DATE_EDL = EXCLUDED.RETROACTIVE_DATE_EDL,EXT_REPORT_PRD_EDL = EXCLUDED.EXT_REPORT_PRD_EDL,COVERAGE_BASIS_CODE_EDL = EXCLUDED.COVERAGE_BASIS_CODE_EDL,LIMITS = EXCLUDED.LIMITS,DISP_EAC_ELE_DAT_IN_LI_EDL = EXCLUDED.DISP_EAC_ELE_DAT_IN_LI_EDL,DISP_AGGREGATE_LIMIT_EDL = EXCLUDED.DISP_AGGREGATE_LIMIT_EDL,EACH_ELECT_DATA_IN_LI_EDL = EXCLUDED.EACH_ELECT_DATA_IN_LI_EDL,AGGREGATE_LIMIT_EDL = EXCLUDED.AGGREGATE_LIMIT_EDL,POLICY_LIMITS_CODE = EXCLUDED.POLICY_LIMITS_CODE,LIMITS_IDENTIFIER_CODE = EXCLUDED.LIMITS_IDENTIFIER_CODE,DISP_LOSS_ELEC_DT_LMT_EDL = EXCLUDED.DISP_LOSS_ELEC_DT_LMT_EDL,LOSS_ELEC_DT_LMT_EDL = EXCLUDED.LOSS_ELEC_DT_LMT_EDL,HEADING_DEDUCTIBLES = EXCLUDED.HEADING_DEDUCTIBLES,CGL_COV_PART_DEDUCT_APP = EXCLUDED.CGL_COV_PART_DEDUCT_APP,DEDUCT_LIAB_INSURANCE = EXCLUDED.DEDUCT_LIAB_INSURANCE,DEDUCTIBLE_APPLICATION = EXCLUDED.DEDUCTIBLE_APPLICATION,DEDUCTIBLE_TYPE = EXCLUDED.DEDUCTIBLE_TYPE,BI_DEDUCT_AMOUNT = EXCLUDED.BI_DEDUCT_AMOUNT,BI_DEDUCT_CODE = EXCLUDED.BI_DEDUCT_CODE,PD_DEDUCT_AMOUNT = EXCLUDED.PD_DEDUCT_AMOUNT,PD_DEDUCT_CODE = EXCLUDED.PD_DEDUCT_CODE,BI_PD_COMB_DEDUCT_AMOUNT = EXCLUDED.BI_PD_COMB_DEDUCT_AMOUNT,RISK_TAX_CODE = EXCLUDED.RISK_TAX_CODE,RISK_COUNTY_CODE = EXCLUDED.RISK_COUNTY_CODE,WAIVED_PREMIUM = EXCLUDED.WAIVED_PREMIUM,WAIVE_INDICATOR = EXCLUDED.WAIVE_INDICATOR,PREM_COM_RED_FACTOR = EXCLUDED.PREM_COM_RED_FACTOR,COMMISSIONABLE_PREMIUM = EXCLUDED.COMMISSIONABLE_PREMIUM,PRIOR_WAIVED_ADJUSTMENT = EXCLUDED.PRIOR_WAIVED_ADJUSTMENT,IS_COV_MANUALLY_RATED = EXCLUDED.IS_COV_MANUALLY_RATED,COMM_ANNUAL_PREMIUM = EXCLUDED.COMM_ANNUAL_PREMIUM,COMM_FULL_TERM_PREM = EXCLUDED.COMM_FULL_TERM_PREM,IS_COV_PRORATED = EXCLUDED.IS_COV_PRORATED,C_POL_DED_APP = EXCLUDED.C_POL_DED_APP,C_SIR_LIAB_INSURANCE = EXCLUDED.C_SIR_LIAB_INSURANCE,C_BIPD_COMB_SIR_EDL_AMT = EXCLUDED.C_BIPD_COMB_SIR_EDL_AMT,ENTITY_TYPE = EXCLUDED.ENTITY_TYPE,ADD_ENTITY_TYPE = EXCLUDED.ADD_ENTITY_TYPE,MOD_ENTITY_TYPE = EXCLUDED.MOD_ENTITY_TYPE,DEL_ENTITY_TYPE = EXCLUDED.DEL_ENTITY_TYPE,ENTITY_REFERENCE = EXCLUDED.ENTITY_REFERENCE,FK_COLUMN_NAME = EXCLUDED.FK_COLUMN_NAME,FK_COLUMN_VALUE = EXCLUDED.FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE = EXCLUDED.ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE = EXCLUDED.MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE = EXCLUDED.DEL_ENTITY_REFERENCE,ENTITY_STATUS = EXCLUDED.ENTITY_STATUS,ENTITY_IS_LOCKED = EXCLUDED.ENTITY_IS_LOCKED,ID = EXCLUDED.ID,DATE_CREATED = EXCLUDED.DATE_CREATED,USER_CREATED = EXCLUDED.USER_CREATED,DATE_MODIFIED = EXCLUDED.DATE_MODIFIED,USER_MODIFIED = EXCLUDED.USER_MODIFIED,DATE_DELETED = EXCLUDED.DATE_DELETED,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,RISK_STATE = EXCLUDED.RISK_STATE,RISK_STATE_STAT_CODE = EXCLUDED.RISK_STATE_STAT_CODE,RISK_CITY_CODE = EXCLUDED.RISK_CITY_CODE,PRODUCT_CODE = EXCLUDED.PRODUCT_CODE,LOB_CODE = EXCLUDED.LOB_CODE,ANNUAL_PREMIUM = EXCLUDED.ANNUAL_PREMIUM,TRANSACTION_PREMIUM = EXCLUDED.TRANSACTION_PREMIUM,WRITTEN_PREMIUM = EXCLUDED.WRITTEN_PREMIUM,BALANCE_TO_MINIMUM = EXCLUDED.BALANCE_TO_MINIMUM,DEPOSIT_PREMIUM = EXCLUDED.DEPOSIT_PREMIUM,FULL_TERM_PREMIUM = EXCLUDED.FULL_TERM_PREMIUM,TRANS_PREM_NOT_SUB_TO_AUD = EXCLUDED.TRANS_PREM_NOT_SUB_TO_AUD,LOB_GL_EBL_DTL = EXCLUDED.LOB_GL_EBL_DTL,DISP_EACH_EMP_LIMIT_EBL = EXCLUDED.DISP_EACH_EMP_LIMIT_EBL,DISP_AGGREGATE_LIMIT_EBL = EXCLUDED.DISP_AGGREGATE_LIMIT_EBL,EACH_EMP_DEDUCT_EBL = EXCLUDED.EACH_EMP_DEDUCT_EBL,RETROACTIVE_DATE_EBP_EBL = EXCLUDED.RETROACTIVE_DATE_EBP_EBL,RETROACTIVE_DATE_EBL = EXCLUDED.RETROACTIVE_DATE_EBL,EXT_REPORT_PRD_OPT_EBL = EXCLUDED.EXT_REPORT_PRD_OPT_EBL,COVERAGE_BASIS_CODE_EBL = EXCLUDED.COVERAGE_BASIS_CODE_EBL,EACH_EMP_LIMIT_EBL = EXCLUDED.EACH_EMP_LIMIT_EBL,AGGREGATE_LIMIT_EBL = EXCLUDED.AGGREGATE_LIMIT_EBL,RISK_TAX_CODE = EXCLUDED.RISK_TAX_CODE,RISK_COUNTY_CODE = EXCLUDED.RISK_COUNTY_CODE,WAIVED_PREMIUM = EXCLUDED.WAIVED_PREMIUM,WAIVE_INDICATOR = EXCLUDED.WAIVE_INDICATOR,PREM_COM_RED_FACTOR = EXCLUDED.PREM_COM_RED_FACTOR,COMMISSIONABLE_PREMIUM = EXCLUDED.COMMISSIONABLE_PREMIUM,PRIOR_WAIVED_ADJUSTMENT = EXCLUDED.PRIOR_WAIVED_ADJUSTMENT,IS_COV_MANUALLY_RATED = EXCLUDED.IS_COV_MANUALLY_RATED,COMM_ANNUAL_PREMIUM = EXCLUDED.COMM_ANNUAL_PREMIUM,COMM_FULL_TERM_PREM = EXCLUDED.COMM_FULL_TERM_PREM,IS_COV_PRORATED = EXCLUDED.IS_COV_PRORATED,RECORD_DATE = EXCLUDED.RECORD_DATE,SUPP_EXT_REPORTING = EXCLUDED.SUPP_EXT_REPORTING,ENTITY_TYPE = EXCLUDED.ENTITY_TYPE,ADD_ENTITY_TYPE = EXCLUDED.ADD_ENTITY_TYPE,MOD_ENTITY_TYPE = EXCLUDED.MOD_ENTITY_TYPE,DEL_ENTITY_TYPE = EXCLUDED.DEL_ENTITY_TYPE,ENTITY_REFERENCE = EXCLUDED.ENTITY_REFERENCE,FK_COLUMN_NAME = EXCLUDED.FK_COLUMN_NAME,FK_COLUMN_VALUE = EXCLUDED.FK_COLUMN_VALUE,ADD_ENTITY_REFERENCE = EXCLUDED.ADD_ENTITY_REFERENCE,MOD_ENTITY_REFERENCE = EXCLUDED.MOD_ENTITY_REFERENCE,DEL_ENTITY_REFERENCE = EXCLUDED.DEL_ENTITY_REFERENCE,ENTITY_STATUS = EXCLUDED.ENTITY_STATUS,ENTITY_IS_LOCKED = EXCLUDED.ENTITY_IS_LOCKED,ID = EXCLUDED.ID,DATE_CREATED = EXCLUDED.DATE_CREATED,USER_CREATED = EXCLUDED.USER_CREATED,DATE_MODIFIED = EXCLUDED.DATE_MODIFIED,USER_MODIFIED = EXCLUDED.USER_MODIFIED,DATE_DELETED = EXCLUDED.DATE_DELETED,AUDIT_FLAG = EXCLUDED.AUDIT_FLAG,RISK_STATE = EXCLUDED.RISK_STATE,RISK_STATE_STAT_CODE = EXCLUDED.RISK_STATE_STAT_CODE,RISK_CITY_CODE = EXCLUDED.RISK_CITY_CODE,PRODUCT_CODE = EXCLUDED.PRODUCT_CODE,LOB_CODE = EXCLUDED.LOB_CODE,ANNUAL_PREMIUM = EXCLUDED.ANNUAL_PREMIUM,TRANSACTION_PREMIUM = EXCLUDED.TRANSACTION_PREMIUM,WRITTEN_PREMIUM = EXCLUDED.WRITTEN_PREMIUM,BALANCE_TO_MINIMUM = EXCLUDED.BALANCE_TO_MINIMUM,DEPOSIT_PREMIUM = EXCLUDED.DEPOSIT_PREMIUM,FULL_TERM_PREMIUM = EXCLUDED.FULL_TERM_PREMIUM,TRANS_PREM_NOT_SUB_TO_AUD = EXCLUDED.TRANS_PREM_NOT_SUB_TO_AUD,LOB_GL_LIQUOR_LIAB = EXCLUDED.LOB_GL_LIQUOR_LIAB,OCC_COVERAGE_BASIS = EXCLUDED.OCC_COVERAGE_BASIS,CLAIMS_MADE_COV_BASIS = EXCLUDED.CLAIMS_MADE_COV_BASIS,YEAR_IN_CLAIMS_MADE = EXCLUDED.YEAR_IN_CLAIMS_MADE,RETRO_DATE_SET_CLMS_MD = EXCLUDED.RETRO_DATE_SET_CLMS_MD,RETROACTIVE_DATE = EXCLUDED.RETROACTIVE_DATE,SUP_EXT_REP_PERIOD_COV = EXCLUDED.SUP_EXT_REP_PERIOD_COV,COV_BASIS_CODE = EXCLUDED.COV_BASIS_CODE,HEADING_LIMITS = EXCLUDED.HEADING_LIMITS,PER_PERS_BOD_INJ_LIM = EXCLUDED.PER_PERS_BOD_INJ_LIM,DISP_PER_PERS_BOD_INJ_LIM = EXCLUDED.DISP_PER_PERS_BOD_INJ_LIM,EAC_COMM_BOD_INJ_LIM = EXCLUDED.EAC_COMM_BOD_INJ_LIM,DISP_EAC_COMM_BOD_INJ_LIM = EXCLUDED.DISP_EAC_COMM_BOD_INJ_LIM,EAC_PER_LOSS_SUP_LIM = EXCLUDED.EAC_PER_LOSS_SUP_LIM,DISP_EAC_PER_LOSS_SUP_LIM = EXCLUDED.DISP_EAC_PER_LOSS_SUP_LIM,EA_COM_CA_LOS_SUP_LMT = EXCLUDED.EA_COM_CA_LOS_SUP_LMT,DISP_EA_COM_CA_LOS_SUP_LMT = EXCLUDED.DISP_EA_COM_CA_LOS_SUP_LMT,PER_PERSON_LIMIT = EXCLUDED.PER_PERSON_LIMIT,EACH_COMM_CAU_LIMIT = EXCLUDED.EACH_COMM_CAU_LIMIT,DISP_EACH_COMM_CAU_LIMIT = EXCLUDED.DISP_EACH_COMM_CAU_LIMIT,AGGREGATE_LIMIT = EXCLUDED.AGGREGATE_LIMIT,DISP_AGGREGATE_LIMIT = EXCLUDED.DISP_AGGREGATE_LIMIT,POLICY_LIMITS_CODE = EXCLUDED.POLICY_LIMITS_CODE,LIMITS_IDENTIFIER_CODE = EXCLUDED.LIMITS_IDENTIFIER_CODE,CGL_COV_PART_LMT_R_APPL = EXCLUDED.CGL_COV_PART_LMT_R_APPL,HEADING_DEDUCTIBLES = EXCLUDED.HEADING_DEDUCTIBLES,CGL_COV_PART_DEDUCT_APP = EXCLUDED.CGL_COV_PART_DEDUCT_APP,DED_LIAB_INSURANCE = EXCLUDED.DED_LIAB_INSURANCE,DEDUCTIBLE_APPLICATION = EXCLUDED.DEDUCTIBLE_APPLICATION,DEDUCTIBLE_TYPE = EXCLUDED.DEDUCTIBLE_TYPE,PER_CLAIM_DEDUCTIBLE = EXCLUDED.PER_CLAIM_DEDUCTIBLE,PER_COMMON_CAUSE_DED = EXCLUDED.PER_COMMON_CAUSE_DED,BI_DEDUCT_AMOUNT = EXCLUDED.BI_DEDUCT_AMOUNT,BI_DEDUCT_CODE = EXCLUDED.BI_DEDUCT_CODE,PROP_DAMAG_DEDUCT_AMOUNT = EXCLUDED.PROP_DAMAG_DEDUCT_AMOUNT,PROP_DAMAG_DEDUCT_CODE = EXCLUDED.PROP_DAMAG_DEDUCT_CODE,BI_PD_COMB_DEDUCT_AMOUNT = EXCLUDED.BI_PD_COMB_DEDUCT_AMOUNT,DEDUCTIBLE_CODE = EXCLUDED.DEDUCTIBLE_CODE,RISK_TAX_CODE = EXCLUDED.RISK_TAX_CODE,RISK_COUNTY_CODE = EXCLUDED.RISK_COUNTY_CODE,WAIVED_PREMIUM = EXCLUDED.WAIVED_PREMIUM,WAIVE_INDICATOR = EXCLUDED.WAIVE_INDICATOR,PREM_COM_RED_FACTOR = EXCLUDED.PREM_COM_RED_FACTOR,COMMISSIONABLE_PREMIUM = EXCLUDED.COMMISSIONABLE_PREMIUM,PRIOR_WAIVED_ADJUSTMENT = EXCLUDED.PRIOR_WAIVED_ADJUSTMENT,IS_COV_MANUALLY_RATED = EXCLUDED.IS_COV_MANUALLY_RATED,COMM_ANNUAL_PREMIUM = EXCLUDED.COMM_ANNUAL_PREMIUM,COMM_FULL_TERM_PREM = EXCLUDED.COMM_FULL_TERM_PREM,IS_COV_PRORATED = EXCLUDED.IS_COV_PRORATED,C_LIQ_DED_APP = EXCLUDED.C_LIQ_DED_APP,C_BIPD_COMB_SIR_LIQ_AMT = EXCLUDED.C_BIPD_COMB_SIR_LIQ_AMT,C_SIR_LIAB_INSURANCE = EXCLUDED.C_SIR_LIAB_INSURANCE;
	
	COMMIT;
	
END;
$$;