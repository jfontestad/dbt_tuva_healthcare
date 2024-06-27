{{ config(
     enabled = var('clinical_enabled',False)
   )
}}

WITH CTE as (
SELECT * FROM {{ ref('intelligence__condition_claim_id') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_condition_id') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_condition_rank') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_condition_type') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_encounter_id') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_normalized_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_normalized_code') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_normalized_description') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_onset_date') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_patient_id') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_present_on_admit_code') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_present_on_admit_description') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_recorded_date') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_resolved_date') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_source_code') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_source_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_source_description') }}

UNION

SELECT * FROM {{ ref('intelligence__condition_status') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_admit_source_code') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_admit_source_description') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_admit_type_code') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_admit_type_description') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_allowed_amount') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_apr_drg_code') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_apr_drg_description') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_attending_provider_id') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_charge_amount') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_discharge_disposition_code') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_discharge_disposition_description') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_encounter_end_date') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_encounter_id') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_encounter_start_date') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_encounter_type') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_facility_id') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_length_of_stay') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_ms_drg_code') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_ms_drg_description') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_paid_amount') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_patient_id') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_primary_diagnosis_code') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_primary_diagnosis_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__encounter_primary_diagnosis_description') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_practice_affiliation') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_sub_specialty') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_last_name') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_practitioner_id') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_npi') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_first_name') }}

UNION

SELECT * FROM {{ ref('intelligence__practitioner_specialty') }}

UNION

SELECT * FROM {{ ref('intelligence__location_parent_organization') }}

UNION

SELECT * FROM {{ ref('intelligence__location_latitude') }}

UNION

SELECT * FROM {{ ref('intelligence__location_facility_type') }}

UNION

SELECT * FROM {{ ref('intelligence__location_zip_code') }}

UNION

SELECT * FROM {{ ref('intelligence__location_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__location_city') }}

UNION

SELECT * FROM {{ ref('intelligence__location_npi') }}

UNION

SELECT * FROM {{ ref('intelligence__location_location_id') }}

UNION

SELECT * FROM {{ ref('intelligence__location_longitude') }}

UNION

SELECT * FROM {{ ref('intelligence__location_address') }}

UNION

SELECT * FROM {{ ref('intelligence__location_state') }}

UNION

SELECT * FROM {{ ref('intelligence__location_name') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_normalized_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_normalized_description') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_procedure_id') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_claim_id') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_source_code') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_source_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_source_description') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_practitioner_id') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_patient_id') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_procedure_date') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_encounter_id') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_modifier_5') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_modifier_4') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_normalized_code') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_modifier_1') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_modifier_3') }}

UNION

SELECT * FROM {{ ref('intelligence__procedure_modifier_2') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_abnormal_flag') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_specimen') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_reference_range_low') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_units') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_lab_result_id') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_collection_date') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_component') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_ordering_practitioner_id') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_result') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_description') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_reference_range_low') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_reference_range_high') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_code') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_description') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_status') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_accession_number') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_result_date') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_abnormal_flag') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_units') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_normalized_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_reference_range_high') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_code') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_patient_id') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_source_component') }}

UNION

SELECT * FROM {{ ref('intelligence__lab_result_encounter_id') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_sex') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_state') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_city') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_longitude') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_county') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_race') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_death_flag') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_address') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_zip_code') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_first_name') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_last_name') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_latitude') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_birth_date') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_death_date') }}

UNION

SELECT * FROM {{ ref('intelligence__patient_patient_id') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_rxnorm_code') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_source_code') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_atc_code') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_dispensing_date') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_prescribing_date') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_days_supply') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_strength') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_patient_id') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_rxnorm_description') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_encounter_id') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_atc_description') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_quantity_unit') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_source_description') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_ndc_code') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_medication_id') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_source_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_ndc_description') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_quantity') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_practitioner_id') }}

UNION

SELECT * FROM {{ ref('intelligence__medication_route') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_source_code') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_normalized_reference_range_high') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_source_units') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_observation_type') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_normalized_code') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_normalized_description') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_data_source') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_panel_id') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_observation_id') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_source_reference_range_low') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_result') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_source_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_normalized_reference_range_low') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_observation_date') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_encounter_id') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_source_description') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_source_reference_range_high') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_normalized_units') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_normalized_code_type') }}

UNION

SELECT * FROM {{ ref('intelligence__observation_patient_id') }}

)

SELECT *
,DENSE_RANK() OVER (ORDER BY DATA_SOURCE, TABLE_NAME, FIELD_NAME) as SUMMARY_SK
FROM CTE