# Exporting unsterilized version of clean datasets -----------------------------
write.xlsx(clean_data.tool1, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool1_EERA_R2_Public_School_Headmaster_Interview_cleaned_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool2, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool2_EERA_R2_Public_School_Light_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool3, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool3_EERA_R2_Public_School_Student_Document_Headcount_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool4, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool4_EERA_R2_Public_School_Teacher_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool5, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool5_EERA_R2_Public_School_WASH_Observation_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool6, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool6_EERA_R2_Public_School_Parent_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool7, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool7_EERA_R2_Public_School_Shura_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool8, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool8_EERA_R2_CBE_Class_Level_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool9, paste0(output_data_path, "cleaned_dfs/unsterilized/only_approved/Tool9_EERA_R2_CBE_IP_Level_Tool_", Sys.Date(),".xlsx"))

# Exporting sterilized version of clean datasets -------------------------------
# write.xlsx(clean_data.tool1_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool1_EERA_R2_Public_School_Headmaster_Interview_Unlabeled__", Sys.Date(),".xlsx"))
# write.xlsx(clean_data.tool2_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool2_EERA_R2_Public_School_Light_Tool_Unlabeled__", Sys.Date(),".xlsx"))
# write.xlsx(clean_data.tool3_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool3_EERA_R2_Public_School_Student_Document_Headcount_Unlabeled__", Sys.Date(),".xlsx"))
# write.xlsx(clean_data.tool4_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool4_EERA_R2_Public_School_Teacher_Tool_Unlabeled__", Sys.Date(),".xlsx"))
# write.xlsx(clean_data.tool5_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool5_EERA_R2_Public_School_WASH_Observation_Unlabeled__", Sys.Date(),".xlsx"))
# 
# # Public School
# clean_data.tool6_PS_for_client_ulabeled <- clean_data.tool6_for_client_ulabeled
# clean_data.tool6_PS_for_client_ulabeled$data <- clean_data.tool6_PS_for_client_ulabeled$data |>
#   filter(Sample_Type == "Public School")
# clean_data.tool6_PS_for_client_ulabeled$Subjects_Added <- clean_data.tool6_PS_for_client_ulabeled$Subjects_Added |>
#   filter(Sample_Type == "Public School")
# 
# write.xlsx(clean_data.tool6_PS_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool6_EERA_R2_Public_School_Parent_Tool_Public_School_Unlabeled_", Sys.Date(),".xlsx"))
# 
# # CBE
# clean_data.tool6_CBE_for_client_ulabeled <- clean_data.tool6_for_client_ulabeled
# clean_data.tool6_CBE_for_client_ulabeled$data <- clean_data.tool6_CBE_for_client_ulabeled$data |>
#   filter(Sample_Type == "CBE")
# clean_data.tool6_CBE_for_client_ulabeled$Subjects_Added <- clean_data.tool6_CBE_for_client_ulabeled$Subjects_Added |>
#   filter(Sample_Type == "CBE")
# 
# write.xlsx(clean_data.tool6_CBE_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool6_EERA_R2_Public_School_Parent_Tool_CBE_Unlabeled_", Sys.Date(),".xlsx"))
# 
# # Public School
# clean_data.tool7_PS_for_client_ulabeled <- clean_data.tool7_for_client_ulabeled
# clean_data.tool7_PS_for_client_ulabeled$data <- clean_data.tool7_PS_for_client_ulabeled$data |>
#   filter(Sample_Type == "Public School")
# clean_data.tool7_PS_for_client_ulabeled$C6_list_members <- clean_data.tool7_PS_for_client_ulabeled$C6_list_members |>
#   filter(Sample_Type == "Public School")
# clean_data.tool7_PS_for_client_ulabeled$Subjects_Added <- clean_data.tool7_PS_for_client_ulabeled$Subjects_Added |>
#   filter(Sample_Type == "Public School")
# 
# write.xlsx(clean_data.tool7_PS_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool7_EERA_R2_Public_School_Shura_Tool_Public_School_Unlabeled_", Sys.Date(),".xlsx"))
# 
# # CBE
# clean_data.tool7_CBE_for_client_ulabeled <- clean_data.tool7_for_client_ulabeled
# clean_data.tool7_CBE_for_client_ulabeled$data <- clean_data.tool7_CBE_for_client_ulabeled$data |>
#   filter(Sample_Type == "CBE")
# clean_data.tool7_CBE_for_client_ulabeled$C6_list_members <- clean_data.tool7_CBE_for_client_ulabeled$C6_list_members |>
#   filter(Sample_Type == "CBE")
# clean_data.tool7_CBE_for_client_ulabeled$Subjects_Added <- clean_data.tool7_CBE_for_client_ulabeled$Subjects_Added |>
#   filter(Sample_Type == "CBE")
# 
# write.xlsx(clean_data.tool7_CBE_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool7_EERA_R2_Public_School_Shura_Tool_CBE_Unlabeled_", Sys.Date(),".xlsx"))
# write.xlsx(clean_data.tool8_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool8_EERA_R2_CBE_Class_Level_Tool_Unlabeled__", Sys.Date(),".xlsx"))
# write.xlsx(clean_data.tool9_for_client_ulabeled, paste0(output_data_path, "cleaned_dfs/sterilized/unlabeled/Tool9_EERA_R2_CBE_IP_Level_Tool_Unlabeled__", Sys.Date(),".xlsx"))
# 
# # Exporting for client version of clean datasets -------------------------------
write.xlsx(clean_data.tool1_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool1_EERA_R2_Public_School_Headmaster_Interview_cleaned_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool2_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool2_EERA_R2_Public_School_Light_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool3_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool3_EERA_R2_Public_School_Student_Document_Headcount_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool4_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool4_EERA_R2_Public_School_Teacher_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool5_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool5_EERA_R2_Public_School_WASH_Observation_", Sys.Date(),".xlsx"))

# Public School
clean_data.tool6_PS_for_client <- clean_data.tool6_for_client
clean_data.tool6_PS_for_client$data <- clean_data.tool6_PS_for_client$data |>
  filter(Sample_Type == "Public School")
clean_data.tool6_PS_for_client$Subjects_Added <- clean_data.tool6_PS_for_client$Subjects_Added |>
  filter(PARENT_KEY %in% clean_data.tool6_PS_for_client$data$KEY)

write.xlsx(clean_data.tool6_PS_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool6_EERA_R2_Public_School_Parent_Tool_Public_School_", Sys.Date(),".xlsx"))

# CBE
clean_data.tool6_CBE_for_client <- clean_data.tool6_for_client
clean_data.tool6_CBE_for_client$data <- clean_data.tool6_CBE_for_client$data |>
  filter(Sample_Type == "CBE")
clean_data.tool6_CBE_for_client$Subjects_Added <- clean_data.tool6_CBE_for_client$Subjects_Added |>
  filter(PARENT_KEY %in% clean_data.tool6_CBE_for_client$data$KEY)

write.xlsx(clean_data.tool6_CBE_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool6_EERA_R2_Public_School_Parent_Tool_CBE_", Sys.Date(),".xlsx"))


# Public School
clean_data.tool7_PS_for_client <- clean_data.tool7_for_client
clean_data.tool7_PS_for_client$data <- clean_data.tool7_PS_for_client$data |>
  filter(Sample_Type == "Public School")
clean_data.tool7_PS_for_client$C6_list_members <- clean_data.tool7_PS_for_client$C6_list_members |>
  filter(PARENT_KEY %in% clean_data.tool7_PS_for_client$data$KEY)
clean_data.tool7_PS_for_client$Subjects_Added <- clean_data.tool7_PS_for_client$Subjects_Added |>
  filter(PARENT_KEY %in% clean_data.tool7_PS_for_client$data$KEY)

write.xlsx(clean_data.tool7_PS_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool7_EERA_R2_Public_School_Shura_Tool_Public_School_", Sys.Date(),".xlsx"))


# CBE
clean_data.tool7_CBE_for_client <- clean_data.tool7_for_client
clean_data.tool7_CBE_for_client$data <- clean_data.tool7_CBE_for_client$data |>
  filter(Sample_Type == "CBE")
clean_data.tool7_CBE_for_client$C6_list_members <- clean_data.tool7_CBE_for_client$C6_list_members |>
  filter(PARENT_KEY %in% clean_data.tool7_CBE_for_client$data$KEY)
clean_data.tool7_CBE_for_client$Subjects_Added <- clean_data.tool7_CBE_for_client$Subjects_Added |>
  filter(PARENT_KEY %in% clean_data.tool7_CBE_for_client$data$KEY)

write.xlsx(clean_data.tool7_CBE_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool7_EERA_R2_Public_School_Shura_Tool_CBE_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool8_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool8_EERA_R2_CBE_Class_Level_Tool_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool9_for_client, paste0(output_data_path, "cleaned_dfs/sterilized/labeled/Tool9_EERA_R2_CBE_IP_Level_Tool_", Sys.Date(),".xlsx"))


# file.edit("./R/sample_dfs.R")

# Export other outputs ---------------------------------------------------------
# export issues in data sets
if (nrow(correction_log_discrep) > 0){
  
  write.xlsx(correction_log_discrep, paste0(output_data_path, "issues/correction_log_issues/correction_log_issues_", Sys.Date(),".xlsx"))
}

# if (nrow(repeat_sheet_issues) > 0){
#   write.xlsx(repeat_sheet_issues, paste0(output_data_path, "issues/repeat_sheet_issues/repeat_sheet_issues_", Sys.Date(),".xlsx"))
# }

# if (nrow(missing_translations) > 0){
#   write.xlsx(missing_translations, paste0(output_data_path, "issues/translation_missing/missing_translations_", Sys.Date(),".xlsx"))
# }

# if (nrow(missing_qa) > 0){
#   write.xlsx(missing_qa, paste0(output_data_path, "issues/qa_missing/missing_qa_", Sys.Date(),".xlsx"))
# }

# if (nrow(un_logged_values) > 0){
#   write.xlsx(un_logged_values, paste0(output_data_path, "issues/other_responses/unlogged_other_responses_", Sys.Date(),".xlsx"))
# }

# if (nrow(Logic_check_result) > 0){
#   write.xlsx(Logic_check_result, paste0(output_data_path, "issues/logic_checks/logic_checks_", Sys.Date(),".xlsx"))
# }

# # Logic Check Data Entry
# if(nrow(logic_check_data_entry_final) > 0){
#   write.xlsx(logic_check_data_entry_final, paste0(output_data_path, "issues/logic_checks/logic_checks_Data_Entry_Tool_", Sys.Date(),".xlsx"))
# }

# if (nrow(calculate_issues) > 0){
#   write.xlsx(calculate_issues, paste0(output_data_path, "issues/calculate_issues/calculate_issues_", Sys.Date(),".xlsx"))
# }

# sm_question_issues_dfs = list(
#   # "NA issues in select_multiple" = sm_na_issues,
#   "parent_series_inconsistencies" = sm_check_result
# )

# if (nrow(sm_check_result) > 0){
#   write.xlsx(sm_question_issues_dfs, paste0(output_data_path, "issues/sm_issues/sm_check_result_", Sys.Date(),".xlsx"))
# }

# if (nrow(outlier_check_result) > 0){
#   write.xlsx(outlier_check_result, paste0(output_data_path, "issues/outliers/outlier_check_result_", Sys.Date(),".xlsx"))
# }

# if (nrow(over_sampled_extra_ints) > 0){
#   write.xlsx(over_sampled_extra_ints, paste0(output_data_path, "issues/over_sampled/over_sampled_extra_ints_", Sys.Date(),".xlsx"))
# }

# if (nrow(missing_not_interviewed_site) > 0){
#   write.xlsx(missing_not_interviewed_site, paste0(output_data_path, "issues/interview_missing/missing_not_interviewed_Sites_", Sys.Date(),".xlsx"))
# }

if (nrow(wrong_choices_result) > 0){
  write.xlsx(wrong_choices_result, paste0(output_data_path, "issues/wrong_choices/wrong_choices_result_", Sys.Date(),".xlsx"))
}

if (nrow(relevancy_issues) > 0){
  write.xlsx(relevancy_issues, paste0(output_data_path, "issues/relevancy_checks/relevancy_issues_", Sys.Date(),".xlsx"))
}

# qa_issues_dfs = list(
#   "not QAed interviews" = not_qaed_ints,
#   "inconsistency in QA_status" = inconsistent_qa_status,
#   "inconsistency in QA interviews" = int_in_qa_sheet_not_in_df
# ) 
# 
# if (nrow(not_qaed_ints) > 0 | nrow(inconsistent_qa_status) > 0 | nrow(int_in_qa_sheet_not_in_df) > 0){
#   write.xlsx(qa_issues_dfs, paste0(output_data_path, "issues/qaed_inconsistencies/QAed_ints_inconsistencies_", Sys.Date(),".xlsx"))
# }

