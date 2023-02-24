COPY "cse532.dea_ny" (
    REPORTER_DEA_NO,
    REPORTER_BUS_ACT,
    REPORTER_NAME,
    REPORTER_ADDL_CO_INFO,
    REPORTER_ADDRESS1,
    REPORTER_ADDRESS2,
    REPORTER_CITY,
    REPORTER_STATE,
    REPORTER_ZIP,
    REPORTER_COUNTY,
    BUYER_DEA_NO,
    BUYER_BUS_ACT,
    BUYER_NAME,
    BUYER_ADDL_CO_INFO,
    BUYER_ADDRESS1,
    BUYER_ADDRESS2,
    BUYER_CITY,
    BUYER_STATE,
    BUYER_ZIP,
    BUYER_COUNTY,
    TRANSACTION_CODE,
    DRUG_CODE,
    NDC_NO,
    DRUG_NAME,
    QUANTITY,
    UNIT,
    ACTION_INDICATOR,
    ORDER_FORM_NO,
    CORRECTION_NO,
    STRENGTH,
    TRANSACTION_DATE,
    CALC_BASE_WT_IN_GM,
    DOSAGE_UNIT,
    TRANSACTION_ID,
    PRODUCT_NAME,
    INGREDIENT_NAME,
    MEASURE,
    MME_CONVERSION_FACTOR,
    COMBINED_LABELER_NAME,
    REPORTER_FAMILY,
    DOS_STR,
    MME
)
FROM '/Users/jp/Downloads/arcos-ny-statewide-itemized.csv' WITH (format csv, null "null", DELIMITER ',', HEADER);



ALTER TABLE "cse532.dea_ny"
ALTER COLUMN TRANSACTION_DATE TYPE DATE using to_date(TRANSACTION_DATE, 'MMDDYYYY');


