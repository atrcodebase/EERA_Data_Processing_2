# Clone data sets --------------------------------------------------------------
clean_data.tool1.report <- clean_data.tool1
clean_data.tool2.report <- clean_data.tool2
clean_data.tool3.report <- clean_data.tool3
clean_data.tool4.report <- clean_data.tool4
clean_data.tool5.report <- clean_data.tool5
clean_data.tool6.report <- clean_data.tool6
clean_data.tool7.report <- clean_data.tool7
clean_data.tool8.report <- clean_data.tool8
clean_data.tool9.report <- clean_data.tool9

# Tool 1 - Headmaster
clean_data.tool1.report$data <- clean_data.tool1.report$data %>% filter(KEY %in% c(approved_keys_ps, pending_key_ps) & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Support_Respondents <- clean_data.tool1.report$Support_Respondents %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$School_Operationality <- clean_data.tool1.report$School_Operationality %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$School_Operationality_Other_... <- clean_data.tool1.report$School_Operationality_Other_... %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Shifts_Detail <- clean_data.tool1.report$Shifts_Detail %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Other_Shifts_Detail <- clean_data.tool1.report$Other_Shifts_Detail %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Headmasters <- clean_data.tool1.report$Headmasters %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Weekly_Schedule_Old <- clean_data.tool1.report$Weekly_Schedule_Old %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Weekly_Schedule_New <- clean_data.tool1.report$Weekly_Schedule_New %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Subjects_Detail <- clean_data.tool1.report$Subjects_Detail %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Additional_Subjects <- clean_data.tool1.report$Additional_Subjects %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Education_Quality <- clean_data.tool1.report$Education_Quality %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool1.report$Relevant_photos <- clean_data.tool1.report$Relevant_photos %>% filter(PARENT_KEY %in% clean_data.tool1.report$data$KEY & !KEY %in% deleted_keys_ps)

# Tool 2 - Light
clean_data.tool2.report$data <- clean_data.tool2.report$data %>% filter(KEY %in% approved_keys_ps & !KEY %in% deleted_keys_ps)
clean_data.tool2.report$Support_Respondents <- clean_data.tool2.report$Support_Respondents %>% filter(PARENT_KEY %in% clean_data.tool2.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool2.report$Attendance_Sheet_Photos <- clean_data.tool2.report$Attendance_Sheet_Photos %>% filter(PARENT_KEY %in% clean_data.tool2.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool2.report$Public_Stationary_Kit_Group <- clean_data.tool2.report$Public_Stationary_Kit_Group %>% filter(PARENT_KEY %in% clean_data.tool2.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool2.report$Teachers_Pack_Group <- clean_data.tool2.report$Teachers_Pack_Group %>% filter(PARENT_KEY %in% clean_data.tool2.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool2.report$Students_Pack_Group <- clean_data.tool2.report$Students_Pack_Group %>% filter(PARENT_KEY %in% clean_data.tool2.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool2.report$Relevant_photos <- clean_data.tool2.report$Relevant_photos %>% filter(PARENT_KEY %in% clean_data.tool2.report$data$KEY & !KEY %in% deleted_keys_ps)


# Tool 3 - Headcount
clean_data.tool3.report$data <- clean_data.tool3.report$data %>% filter(KEY %in% approved_keys_ps & !KEY %in% deleted_keys_ps)
clean_data.tool3.report$Support_Respondents <- clean_data.tool3.report$Support_Respondents %>% filter(PARENT_KEY %in% clean_data.tool3.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool3.report$Grade_Details <- clean_data.tool3.report$Grade_Details %>% filter(PARENT_KEY %in% clean_data.tool3.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool3.report$Todays_Attendance_Detail <- clean_data.tool3.report$Todays_Attendance_Detail %>% filter(PARENT_KEY %in% clean_data.tool3.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool3.report$LastWeek_Attendance_Detail <- clean_data.tool3.report$LastWeek_Attendance_Detail %>% filter(PARENT_KEY %in% clean_data.tool3.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool3.report$Student_Headcount <- clean_data.tool3.report$Student_Headcount %>% filter(PARENT_KEY %in% clean_data.tool3.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool3.report$Tool3_Grades_Repeat <- clean_data.tool3.report$Tool3_Grades_Repeat %>% filter(PARENT_KEY %in% clean_data.tool3.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool3.report$Relevant_photos <- clean_data.tool3.report$Relevant_photos %>% filter(PARENT_KEY %in% clean_data.tool3.report$data$KEY & !KEY %in% deleted_keys_ps)


# Tool 4 - Teacher
clean_data.tool4.report$data <- clean_data.tool4.report$data %>% filter(KEY %in% approved_keys_ps & !KEY %in% deleted_keys_ps)
clean_data.tool4.report$Additional_Subjects <- clean_data.tool4.report$Additional_Subjects %>% filter(PARENT_KEY %in% clean_data.tool4.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool4.report$Subjects_taught_by_this_teacher <- clean_data.tool4.report$Subjects_taught_by_this_teacher %>% filter(PARENT_KEY %in% clean_data.tool4.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool4.report$Subjects_Not_Being_Taught <- clean_data.tool4.report$Subjects_Not_Being_Taught %>% filter(PARENT_KEY %in% clean_data.tool4.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool4.report$Relevant_photos <- clean_data.tool4.report$Relevant_photos %>% filter(PARENT_KEY %in% clean_data.tool4.report$data$KEY & !KEY %in% deleted_keys_ps)


# Tool 5 - WASH
clean_data.tool5.report$data <- clean_data.tool5.report$data %>% filter(KEY %in% approved_keys_ps & !KEY %in% deleted_keys_ps)
clean_data.tool5.report$Under_Construction_Toilets <- clean_data.tool5.report$Under_Construction_Toilets %>% filter(PARENT_KEY %in% clean_data.tool5.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool5.report$Useable_Toilets <- clean_data.tool5.report$Useable_Toilets %>% filter(PARENT_KEY %in% clean_data.tool5.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool5.report$Non_Useable_Toilets <- clean_data.tool5.report$Non_Useable_Toilets %>% filter(PARENT_KEY %in% clean_data.tool5.report$data$KEY & !KEY %in% deleted_keys_ps)
clean_data.tool5.report$Relevant_photos <- clean_data.tool5.report$Relevant_photos %>% filter(PARENT_KEY %in% clean_data.tool5.report$data$KEY & !KEY %in% deleted_keys_ps)


# Tool 6 - Parent
clean_data.tool6.report$data <- clean_data.tool6.report$data %>% filter((KEY %in% approved_keys_ps | KEY %in% approved_keys_cbe) & !KEY %in% c(deleted_keys_ps,deleted_keys_cbe))
clean_data.tool6.report$Subjects_Added <- clean_data.tool6.report$Subjects_Added %>% filter(PARENT_KEY %in% clean_data.tool6.report$data$KEY & !KEY %in% c(deleted_keys_ps,deleted_keys_cbe))


# Tool 7 - SHURA
clean_data.tool7.report$data <- clean_data.tool7.report$data %>% filter((KEY %in% approved_keys_ps | KEY %in% approved_keys_cbe) & !KEY %in% c(deleted_keys_ps,deleted_keys_cbe))
clean_data.tool7.report$C6_list_members <- clean_data.tool7.report$C6_list_members %>% filter(PARENT_KEY %in% clean_data.tool7.report$data$KEY & !KEY %in% c(deleted_keys_ps,deleted_keys_cbe))
clean_data.tool7.report$Subjects_Added <- clean_data.tool7.report$Subjects_Added %>% filter(PARENT_KEY %in% clean_data.tool7.report$data$KEY & !KEY %in% c(deleted_keys_ps,deleted_keys_cbe))


# Tool 8 - Class
clean_data.tool8.report$data <- clean_data.tool8.report$data %>% filter(KEY %in% approved_keys_cbe & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Classes <- clean_data.tool8.report$Classes %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Adults_At_The_CBE <- clean_data.tool8.report$Adults_At_The_CBE %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Section_2_2_3_Attendance_Rec... <- clean_data.tool8.report$Section_2_2_3_Attendance_Rec... %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Section_2_2_4_Headcount <- clean_data.tool8.report$Section_2_2_4_Headcount %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Students_Enrolment_Book <- clean_data.tool8.report$Students_Enrolment_Book %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Section_2_4_Student_Ages <- clean_data.tool8.report$Section_2_4_Student_Ages %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Classroom_Materials <- clean_data.tool8.report$Classroom_Materials %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Teacher_Kit <- clean_data.tool8.report$Teacher_Kit %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Student_Kit <- clean_data.tool8.report$Student_Kit %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$V_list_of_all_members <- clean_data.tool8.report$V_list_of_all_members %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Subjects_Added <- clean_data.tool8.report$Subjects_Added %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)
clean_data.tool8.report$Relevant_photos <- clean_data.tool8.report$Relevant_photos %>% filter(PARENT_KEY %in% clean_data.tool8.report$data$KEY & !KEY %in% deleted_keys_cbe)


# Tool 9 - IP
clean_data.tool9.report$data <- clean_data.tool9.report$data %>% filter(KEY %in% approved_keys_cbe & !KEY %in% deleted_keys_cbe)
clean_data.tool9.report$Relevant_photos <- clean_data.tool9.report$Relevant_photos %>% filter(PARENT_KEY %in% clean_data.tool9.report$data$KEY & !KEY %in% deleted_keys_cbe)


# Attach Labels
tool1_path = "./input/tools/Tool 1_EERA School Indepth Visit_Principal Interview_R2.xlsx"
tool2_path = "./input/tools/Tool 2_EERA School Light Tool_R2.xlsx"
tool3_path = "./input/tools/Tool 3_EERA School Student Documents and Headcount Monitoring_R2.xlsx"
tool4_path = "./input/tools/Tool 4_EERA School Teacher Interview_R2.xlsx"
tool5_path = "./input/tools/Tool 5_EERA School WASH Monitoring_R2.xlsx"
tool6_path = "./input/tools/Tool 6_EERA School_CBE Student Parent Interview_R2.xlsx"
tool7_path = "./input/tools/Tool 7_EERA School_CBE Shura Member Interview_R2.xlsx"
tool8_path = "./input/tools/Tool 8_EERA CBE_Teacher Interview_R2.xlsx"
tool9_path = "./input/tools/Tool 9_EERA CBE_IP Interview_R2.xlsx"

# Tool 1 ------------------------------------------------------------------
clean_data.tool1.report$data <- labeler(
  data = clean_data.tool1.report$data, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Support_Respondents <- labeler(
  data = clean_data.tool1.report$Support_Respondents, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$School_Operationality <- labeler(
  data = clean_data.tool1.report$School_Operationality, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$School_Operationality_Other_... <- labeler(
  data = clean_data.tool1.report$School_Operationality_Other_..., 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Shifts_Detail <- labeler(
  data = clean_data.tool1.report$Shifts_Detail, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Other_Shifts_Detail <- labeler(
  data = clean_data.tool1.report$Other_Shifts_Detail, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Headmasters <- labeler(
  data = clean_data.tool1.report$Headmasters, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Weekly_Schedule_Old <- labeler(
  data = clean_data.tool1.report$Weekly_Schedule_Old, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Weekly_Schedule_New <- labeler(
  data = clean_data.tool1.report$Weekly_Schedule_New, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Subjects_Detail <- labeler(
  data = clean_data.tool1.report$Subjects_Detail, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Additional_Subjects <- labeler(
  data = clean_data.tool1.report$Additional_Subjects, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Education_Quality <- labeler(
  data = clean_data.tool1.report$Education_Quality, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1.report$Relevant_photos <- labeler(
  data = clean_data.tool1.report$Relevant_photos, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")


# Tool 2 ------------------------------------------------------------------
clean_data.tool2.report$data <- labeler(
  data = clean_data.tool2.report$data, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2.report$Support_Respondents <- labeler(
  data = clean_data.tool2.report$Support_Respondents, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2.report$Attendance_Sheet_Photos <- labeler(
  data = clean_data.tool2.report$Attendance_Sheet_Photos, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2.report$Public_Stationary_Kit_Group <- labeler(
  data = clean_data.tool2.report$Public_Stationary_Kit_Group, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2.report$Teachers_Pack_Group <- labeler(
  data = clean_data.tool2.report$Teachers_Pack_Group, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2.report$Students_Pack_Group <- labeler(
  data = clean_data.tool2.report$Students_Pack_Group, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2.report$Relevant_photos <- labeler(
  data = clean_data.tool2.report$Relevant_photos, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 3 ------------------------------------------------------------------
clean_data.tool3.report$data <- labeler(
  data = clean_data.tool3.report$data, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3.report$Support_Respondents <- labeler(
  data = clean_data.tool3.report$Support_Respondents, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3.report$Grade_Details <- labeler(
  data = clean_data.tool3.report$Grade_Details, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3.report$Todays_Attendance_Detail <- labeler(
  data = clean_data.tool3.report$Todays_Attendance_Detail, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3.report$LastWeek_Attendance_Detail <- labeler(
  data = clean_data.tool3.report$LastWeek_Attendance_Detail, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3.report$Student_Headcount <- labeler(
  data = clean_data.tool3.report$Student_Headcount, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3.report$Tool3_Grades_Repeat <- labeler(
  data = clean_data.tool3.report$Tool3_Grades_Repeat, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3.report$Relevant_photos <- labeler(
  data = clean_data.tool3.report$Relevant_photos, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")


# Tool 4 ------------------------------------------------------------------
clean_data.tool4.report$data <- labeler(
  data = clean_data.tool4.report$data, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4.report$Additional_Subjects <- labeler(
  data = clean_data.tool4.report$Additional_Subjects, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4.report$Subjects_taught_by_this_teacher <- labeler(
  data = clean_data.tool4.report$Subjects_taught_by_this_teacher, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4.report$Subjects_Not_Being_Taught <- labeler(
  data = clean_data.tool4.report$Subjects_Not_Being_Taught, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4.report$Relevant_photos <- labeler(
  data = clean_data.tool4.report$Relevant_photos, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 5 ------------------------------------------------------------------
clean_data.tool5.report$data <- labeler(
  data = clean_data.tool5.report$data, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5.report$Under_Construction_Toilets <- labeler(
  data = clean_data.tool5.report$Under_Construction_Toilets, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5.report$Useable_Toilets <- labeler(
  data = clean_data.tool5.report$Useable_Toilets, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5.report$Non_Useable_Toilets <- labeler(
  data = clean_data.tool5.report$Non_Useable_Toilets, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5.report$Relevant_photos <- labeler(
  data = clean_data.tool5.report$Relevant_photos, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 6 ------------------------------------------------------------------
clean_data.tool6.report$data <- labeler(
  data = clean_data.tool6.report$data, 
  tool = tool6_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool6.report$Subjects_Added <- labeler(
  data = clean_data.tool6.report$Subjects_Added, 
  tool = tool6_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 7 ------------------------------------------------------------------
clean_data.tool7.report$data <- labeler(
  data = clean_data.tool7.report$data, 
  tool = tool7_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool7.report$C6_list_members <- labeler(
  data = clean_data.tool7.report$C6_list_members, 
  tool = tool7_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool7.report$Subjects_Added <- labeler(
  data = clean_data.tool7.report$Subjects_Added, 
  tool = tool7_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 8 ------------------------------------------------------------------
clean_data.tool8.report$data <- labeler(
  data = clean_data.tool8.report$data, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Classes <- labeler(
  data = clean_data.tool8.report$Classes, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Adults_At_The_CBE <- labeler(
  data = clean_data.tool8.report$Adults_At_The_CBE, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Section_2_2_3_Attendance_Rec... <- labeler(
  data = clean_data.tool8.report$Section_2_2_3_Attendance_Rec..., 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Section_2_2_4_Headcount <- labeler(
  data = clean_data.tool8.report$Section_2_2_4_Headcount, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Students_Enrolment_Book <- labeler(
  data = clean_data.tool8.report$Students_Enrolment_Book, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Section_2_4_Student_Ages <- labeler(
  data = clean_data.tool8.report$Section_2_4_Student_Ages, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Classroom_Materials <- labeler(
  data = clean_data.tool8.report$Classroom_Materials, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Teacher_Kit <- labeler(
  data = clean_data.tool8.report$Teacher_Kit, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Student_Kit <- labeler(
  data = clean_data.tool8.report$Student_Kit, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$V_list_of_all_members <- labeler(
  data = clean_data.tool8.report$V_list_of_all_members, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Subjects_Added <- labeler(
  data = clean_data.tool8.report$Subjects_Added, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8.report$Relevant_photos <- labeler(
  data = clean_data.tool8.report$Relevant_photos, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 9 ------------------------------------------------------------------
clean_data.tool9.report$data <- labeler(
  data = clean_data.tool9.report$data, 
  tool = tool9_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool9.report$Relevant_photos <- labeler(
  data = clean_data.tool9.report$Relevant_photos, 
  tool = tool9_path,
  survey_label = "label",
  choice_lable = "label")

# Export the outputs
write.xlsx(clean_data.tool1.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool1_EERA_R2_Public_School_Headmaster_Interview_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool2.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool2_EERA_R2_Public_School_Light_Tool_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool3.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool3_EERA_R2_Public_School_Student_Document_Headcount_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool4.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool4_EERA_R2_Public_School_Teacher_Tool_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool5.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool5_EERA_R2_Public_School_WASH_Observation_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool6.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool6_EERA_R2_Public_School_Parent_Tool_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool7.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool7_EERA_R2_Public_School_Shura_Tool_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool8.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool8_EERA_R2_CBE_Class_Level_Tool_For_Reporting_", Sys.Date(),".xlsx"))
write.xlsx(clean_data.tool9.report, paste0(output_data_path, "cleaned_dfs/unsterilized/for_report/Tool9_EERA_R2_CBE_IP_Level_Tool_For_Reporting_", Sys.Date(),".xlsx"))

# remove extra objects from environment  
rm(list = 
     c(ls(pattern = ".report$")
       )
   )

rm(tool1_path, 
   tool2_path,
   tool3_path,
   tool4_path,
   tool5_path,
   tool6_path,
   tool7_path,
   tool8_path,
   tool9_path)
