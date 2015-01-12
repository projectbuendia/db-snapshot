/*!40014 SET SESSION FOREIGN_KEY_CHECKS=0 */;
select 'Creating tables...' as ' ';
source active_list_allergy.sql;
source active_list_problem.sql;
source active_list.sql;
source active_list_type.sql;
source calculation_registration.sql;
source care_setting.sql;
source clob_datatype_storage.sql;
source cohort_member.sql;
source cohort.sql;
source concept_answer.sql;
source concept_class.sql;
source concept_complex.sql;
source concept_datatype.sql;
source concept_description.sql;
source concept_map_type.sql;
source concept_name.sql;
source concept_name_tag_map.sql;
source concept_name_tag.sql;
source concept_numeric.sql;
source concept_proposal.sql;
source concept_proposal_tag_map.sql;
source concept_reference_map.sql;
source concept_reference_source.sql;
source concept_reference_term_map.sql;
source concept_reference_term.sql;
source concept_set_derived.sql;
source concept_set.sql;
source concept.sql;
source concept_state_conversion.sql;
source concept_stop_word.sql;
source concept_word.sql;
source drug_ingredient.sql;
source drug_order.sql;
source drug_reference_map.sql;
source drug.sql;
source encounter_provider.sql;
source encounter_role.sql;
source encounter.sql;
source encounter_type.sql;
source field_answer.sql;
source field.sql;
source field_type.sql;
source form_field.sql;
source form_resource.sql;
source form.sql;
source global_property.sql;
source hl7_in_archive.sql;
source hl7_in_error.sql;
source hl7_in_queue.sql;
source hl7_source.sql;
source liquibasechangeloglock.sql;
source liquibasechangelog.sql;
source location_attribute.sql;
source location_attribute_type.sql;
source location.sql;
source location_tag_map.sql;
source location_tag.sql;
source metadatasharing_exported_package.sql;
source metadatasharing_imported_item.sql;
source metadatasharing_imported_package.sql;
source note.sql;
source notification_alert_recipient.sql;
source notification_alert.sql;
source notification_template.sql;
source obs.sql;
source order_frequency.sql;
source orders.sql;
source order_type_class_map.sql;
source order_type.sql;
source patient_identifier.sql;
source patient_identifier_type.sql;
source patient_program.sql;
source patient.sql;
source patient_state.sql;
source person_address.sql;
source person_attribute.sql;
source person_attribute_type.sql;
source person_merge_log.sql;
source person_name.sql;
source person.sql;
source privilege.sql;
source program.sql;
source program_workflow.sql;
source program_workflow_state.sql;
source provider_attribute.sql;
source provider_attribute_type.sql;
source provider.sql;
source relationship.sql;
source relationship_type.sql;
source reporting_report_design_resource.sql;
source reporting_report_design.sql;
source reporting_report_processor.sql;
source reporting_report_request.sql;
source report_object.sql;
source report_schema_xml.sql;
source role_privilege.sql;
source role_role.sql;
source role.sql;
source scheduler_task_config_property.sql;
source scheduler_task_config.sql;
source serialized_object.sql;
source test_order.sql;
source user_property.sql;
source user_role.sql;
source users.sql;
source visit_attribute.sql;
source visit_attribute_type.sql;
source visit.sql;
source visit_type.sql;
source xforms_medical_history_field.sql;
source xforms_person_repeat_attribute.sql;
source xforms_xform.sql;
select 'Loading active_list_allergy.txt...' as ' ';
load data local infile 'active_list_allergy.txt' into table active_list_allergy character set utf8;
select 'Loading active_list_problem.txt...' as ' ';
load data local infile 'active_list_problem.txt' into table active_list_problem character set utf8;
select 'Loading active_list.txt...' as ' ';
load data local infile 'active_list.txt' into table active_list character set utf8;
select 'Loading active_list_type.txt...' as ' ';
load data local infile 'active_list_type.txt' into table active_list_type character set utf8;
select 'Loading calculation_registration.txt...' as ' ';
load data local infile 'calculation_registration.txt' into table calculation_registration character set utf8;
select 'Loading care_setting.txt...' as ' ';
load data local infile 'care_setting.txt' into table care_setting character set utf8;
select 'Loading clob_datatype_storage.txt...' as ' ';
load data local infile 'clob_datatype_storage.txt' into table clob_datatype_storage character set utf8;
select 'Loading cohort_member.txt...' as ' ';
load data local infile 'cohort_member.txt' into table cohort_member character set utf8;
select 'Loading cohort.txt...' as ' ';
load data local infile 'cohort.txt' into table cohort character set utf8;
select 'Loading concept_answer.txt...' as ' ';
load data local infile 'concept_answer.txt' into table concept_answer character set utf8;
select 'Loading concept_class.txt...' as ' ';
load data local infile 'concept_class.txt' into table concept_class character set utf8;
select 'Loading concept_complex.txt...' as ' ';
load data local infile 'concept_complex.txt' into table concept_complex character set utf8;
select 'Loading concept_datatype.txt...' as ' ';
load data local infile 'concept_datatype.txt' into table concept_datatype character set utf8;
select 'Loading concept_description.txt...' as ' ';
load data local infile 'concept_description.txt' into table concept_description character set utf8;
select 'Loading concept_map_type.txt...' as ' ';
load data local infile 'concept_map_type.txt' into table concept_map_type character set utf8;
select 'Loading concept_name_tag_map.txt...' as ' ';
load data local infile 'concept_name_tag_map.txt' into table concept_name_tag_map character set utf8;
select 'Loading concept_name_tag.txt...' as ' ';
load data local infile 'concept_name_tag.txt' into table concept_name_tag character set utf8;
select 'Loading concept_name.txt...' as ' ';
load data local infile 'concept_name.txt' into table concept_name character set utf8;
select 'Loading concept_numeric.txt...' as ' ';
load data local infile 'concept_numeric.txt' into table concept_numeric character set utf8;
select 'Loading concept_proposal_tag_map.txt...' as ' ';
load data local infile 'concept_proposal_tag_map.txt' into table concept_proposal_tag_map character set utf8;
select 'Loading concept_proposal.txt...' as ' ';
load data local infile 'concept_proposal.txt' into table concept_proposal character set utf8;
select 'Loading concept_reference_map.txt...' as ' ';
load data local infile 'concept_reference_map.txt' into table concept_reference_map character set utf8;
select 'Loading concept_reference_source.txt...' as ' ';
load data local infile 'concept_reference_source.txt' into table concept_reference_source character set utf8;
select 'Loading concept_reference_term_map.txt...' as ' ';
load data local infile 'concept_reference_term_map.txt' into table concept_reference_term_map character set utf8;
select 'Loading concept_reference_term.txt...' as ' ';
load data local infile 'concept_reference_term.txt' into table concept_reference_term character set utf8;
select 'Loading concept_set_derived.txt...' as ' ';
load data local infile 'concept_set_derived.txt' into table concept_set_derived character set utf8;
select 'Loading concept_set.txt...' as ' ';
load data local infile 'concept_set.txt' into table concept_set character set utf8;
select 'Loading concept_state_conversion.txt...' as ' ';
load data local infile 'concept_state_conversion.txt' into table concept_state_conversion character set utf8;
select 'Loading concept_stop_word.txt...' as ' ';
load data local infile 'concept_stop_word.txt' into table concept_stop_word character set utf8;
select 'Loading concept.txt...' as ' ';
load data local infile 'concept.txt' into table concept character set utf8;
select 'Loading concept_word.txt...' as ' ';
load data local infile 'concept_word.txt' into table concept_word character set utf8;
select 'Loading drug_ingredient.txt...' as ' ';
load data local infile 'drug_ingredient.txt' into table drug_ingredient character set utf8;
select 'Loading drug_order.txt...' as ' ';
load data local infile 'drug_order.txt' into table drug_order character set utf8;
select 'Loading drug_reference_map.txt...' as ' ';
load data local infile 'drug_reference_map.txt' into table drug_reference_map character set utf8;
select 'Loading drug.txt...' as ' ';
load data local infile 'drug.txt' into table drug character set utf8;
select 'Loading encounter_provider.txt...' as ' ';
load data local infile 'encounter_provider.txt' into table encounter_provider character set utf8;
select 'Loading encounter_role.txt...' as ' ';
load data local infile 'encounter_role.txt' into table encounter_role character set utf8;
select 'Loading encounter.txt...' as ' ';
load data local infile 'encounter.txt' into table encounter character set utf8;
select 'Loading encounter_type.txt...' as ' ';
load data local infile 'encounter_type.txt' into table encounter_type character set utf8;
select 'Loading field_answer.txt...' as ' ';
load data local infile 'field_answer.txt' into table field_answer character set utf8;
select 'Loading field.txt...' as ' ';
load data local infile 'field.txt' into table field character set utf8;
select 'Loading field_type.txt...' as ' ';
load data local infile 'field_type.txt' into table field_type character set utf8;
select 'Loading form_field.txt...' as ' ';
load data local infile 'form_field.txt' into table form_field character set utf8;
select 'Loading form_resource.txt...' as ' ';
load data local infile 'form_resource.txt' into table form_resource character set utf8;
select 'Loading form.txt...' as ' ';
load data local infile 'form.txt' into table form character set utf8;
select 'Loading global_property.txt...' as ' ';
load data local infile 'global_property.txt' into table global_property character set utf8;
select 'Loading hl7_in_archive.txt...' as ' ';
load data local infile 'hl7_in_archive.txt' into table hl7_in_archive character set utf8;
select 'Loading hl7_in_error.txt...' as ' ';
load data local infile 'hl7_in_error.txt' into table hl7_in_error character set utf8;
select 'Loading hl7_in_queue.txt...' as ' ';
load data local infile 'hl7_in_queue.txt' into table hl7_in_queue character set utf8;
select 'Loading hl7_source.txt...' as ' ';
load data local infile 'hl7_source.txt' into table hl7_source character set utf8;
select 'Loading liquibasechangeloglock.txt...' as ' ';
load data local infile 'liquibasechangeloglock.txt' into table liquibasechangeloglock character set utf8;
select 'Loading liquibasechangelog.txt...' as ' ';
load data local infile 'liquibasechangelog.txt' into table liquibasechangelog character set utf8;
select 'Loading location_attribute.txt...' as ' ';
load data local infile 'location_attribute.txt' into table location_attribute character set utf8;
select 'Loading location_attribute_type.txt...' as ' ';
load data local infile 'location_attribute_type.txt' into table location_attribute_type character set utf8;
select 'Loading location_tag_map.txt...' as ' ';
load data local infile 'location_tag_map.txt' into table location_tag_map character set utf8;
select 'Loading location_tag.txt...' as ' ';
load data local infile 'location_tag.txt' into table location_tag character set utf8;
select 'Loading location.txt...' as ' ';
load data local infile 'location.txt' into table location character set utf8;
select 'Loading metadatasharing_exported_package.txt...' as ' ';
load data local infile 'metadatasharing_exported_package.txt' into table metadatasharing_exported_package character set utf8;
select 'Loading metadatasharing_imported_item.txt...' as ' ';
load data local infile 'metadatasharing_imported_item.txt' into table metadatasharing_imported_item character set utf8;
select 'Loading metadatasharing_imported_package.txt...' as ' ';
load data local infile 'metadatasharing_imported_package.txt' into table metadatasharing_imported_package character set utf8;
select 'Loading note.txt...' as ' ';
load data local infile 'note.txt' into table note character set utf8;
select 'Loading notification_alert_recipient.txt...' as ' ';
load data local infile 'notification_alert_recipient.txt' into table notification_alert_recipient character set utf8;
select 'Loading notification_alert.txt...' as ' ';
load data local infile 'notification_alert.txt' into table notification_alert character set utf8;
select 'Loading notification_template.txt...' as ' ';
load data local infile 'notification_template.txt' into table notification_template character set utf8;
select 'Loading obs.txt...' as ' ';
load data local infile 'obs.txt' into table obs character set utf8;
select 'Loading order_frequency.txt...' as ' ';
load data local infile 'order_frequency.txt' into table order_frequency character set utf8;
select 'Loading orders.txt...' as ' ';
load data local infile 'orders.txt' into table orders character set utf8;
select 'Loading order_type_class_map.txt...' as ' ';
load data local infile 'order_type_class_map.txt' into table order_type_class_map character set utf8;
select 'Loading order_type.txt...' as ' ';
load data local infile 'order_type.txt' into table order_type character set utf8;
select 'Loading patient_identifier.txt...' as ' ';
load data local infile 'patient_identifier.txt' into table patient_identifier character set utf8;
select 'Loading patient_identifier_type.txt...' as ' ';
load data local infile 'patient_identifier_type.txt' into table patient_identifier_type character set utf8;
select 'Loading patient_program.txt...' as ' ';
load data local infile 'patient_program.txt' into table patient_program character set utf8;
select 'Loading patient_state.txt...' as ' ';
load data local infile 'patient_state.txt' into table patient_state character set utf8;
select 'Loading patient.txt...' as ' ';
load data local infile 'patient.txt' into table patient character set utf8;
select 'Loading person_address.txt...' as ' ';
load data local infile 'person_address.txt' into table person_address character set utf8;
select 'Loading person_attribute.txt...' as ' ';
load data local infile 'person_attribute.txt' into table person_attribute character set utf8;
select 'Loading person_attribute_type.txt...' as ' ';
load data local infile 'person_attribute_type.txt' into table person_attribute_type character set utf8;
select 'Loading person_merge_log.txt...' as ' ';
load data local infile 'person_merge_log.txt' into table person_merge_log character set utf8;
select 'Loading person_name.txt...' as ' ';
load data local infile 'person_name.txt' into table person_name character set utf8;
select 'Loading person.txt...' as ' ';
load data local infile 'person.txt' into table person character set utf8;
select 'Loading privilege.txt...' as ' ';
load data local infile 'privilege.txt' into table privilege character set utf8;
select 'Loading program.txt...' as ' ';
load data local infile 'program.txt' into table program character set utf8;
select 'Loading program_workflow_state.txt...' as ' ';
load data local infile 'program_workflow_state.txt' into table program_workflow_state character set utf8;
select 'Loading program_workflow.txt...' as ' ';
load data local infile 'program_workflow.txt' into table program_workflow character set utf8;
select 'Loading provider_attribute.txt...' as ' ';
load data local infile 'provider_attribute.txt' into table provider_attribute character set utf8;
select 'Loading provider_attribute_type.txt...' as ' ';
load data local infile 'provider_attribute_type.txt' into table provider_attribute_type character set utf8;
select 'Loading provider.txt...' as ' ';
load data local infile 'provider.txt' into table provider character set utf8;
select 'Loading relationship.txt...' as ' ';
load data local infile 'relationship.txt' into table relationship character set utf8;
select 'Loading relationship_type.txt...' as ' ';
load data local infile 'relationship_type.txt' into table relationship_type character set utf8;
select 'Loading reporting_report_design_resource.txt...' as ' ';
load data local infile 'reporting_report_design_resource.txt' into table reporting_report_design_resource character set utf8;
select 'Loading reporting_report_design.txt...' as ' ';
load data local infile 'reporting_report_design.txt' into table reporting_report_design character set utf8;
select 'Loading reporting_report_processor.txt...' as ' ';
load data local infile 'reporting_report_processor.txt' into table reporting_report_processor character set utf8;
select 'Loading reporting_report_request.txt...' as ' ';
load data local infile 'reporting_report_request.txt' into table reporting_report_request character set utf8;
select 'Loading report_object.txt...' as ' ';
load data local infile 'report_object.txt' into table report_object character set utf8;
select 'Loading report_schema_xml.txt...' as ' ';
load data local infile 'report_schema_xml.txt' into table report_schema_xml character set utf8;
select 'Loading role_privilege.txt...' as ' ';
load data local infile 'role_privilege.txt' into table role_privilege character set utf8;
select 'Loading role_role.txt...' as ' ';
load data local infile 'role_role.txt' into table role_role character set utf8;
select 'Loading role.txt...' as ' ';
load data local infile 'role.txt' into table role character set utf8;
select 'Loading scheduler_task_config_property.txt...' as ' ';
load data local infile 'scheduler_task_config_property.txt' into table scheduler_task_config_property character set utf8;
select 'Loading scheduler_task_config.txt...' as ' ';
load data local infile 'scheduler_task_config.txt' into table scheduler_task_config character set utf8;
select 'Loading serialized_object.txt...' as ' ';
load data local infile 'serialized_object.txt' into table serialized_object character set utf8;
select 'Loading test_order.txt...' as ' ';
load data local infile 'test_order.txt' into table test_order character set utf8;
select 'Loading user_property.txt...' as ' ';
load data local infile 'user_property.txt' into table user_property character set utf8;
select 'Loading user_role.txt...' as ' ';
load data local infile 'user_role.txt' into table user_role character set utf8;
select 'Loading users.txt...' as ' ';
load data local infile 'users.txt' into table users character set utf8;
select 'Loading visit_attribute.txt...' as ' ';
load data local infile 'visit_attribute.txt' into table visit_attribute character set utf8;
select 'Loading visit_attribute_type.txt...' as ' ';
load data local infile 'visit_attribute_type.txt' into table visit_attribute_type character set utf8;
select 'Loading visit.txt...' as ' ';
load data local infile 'visit.txt' into table visit character set utf8;
select 'Loading visit_type.txt...' as ' ';
load data local infile 'visit_type.txt' into table visit_type character set utf8;
select 'Loading xforms_medical_history_field.txt...' as ' ';
load data local infile 'xforms_medical_history_field.txt' into table xforms_medical_history_field character set utf8;
select 'Loading xforms_person_repeat_attribute.txt...' as ' ';
load data local infile 'xforms_person_repeat_attribute.txt' into table xforms_person_repeat_attribute character set utf8;
select 'Loading xforms_xform.txt...' as ' ';
load data local infile 'xforms_xform.txt' into table xforms_xform character set utf8;
select 'Done.' as ' ';
