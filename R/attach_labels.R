### attach value labels
# source("R/functions/labeler_function.R")

# Cloning df
clean_data.tool0_ulabeled <- clean_data.tool0
clean_data.tool1_ulabeled <- clean_data.tool1
clean_data.tool2_ulabeled <- clean_data.tool2
clean_data.tool3_ulabeled <- clean_data.tool3
clean_data.tool4_ulabeled <- clean_data.tool4
clean_data.tool5_ulabeled <- clean_data.tool5
clean_data.tool6_ulabeled <- clean_data.tool6
clean_data.tool7_ulabeled <- clean_data.tool7
clean_data.tool8_ulabeled <- clean_data.tool8
clean_data.tool9_ulabeled <- clean_data.tool9

tool0_path = "./input/tools/Tool 0.EERA Public School_CBE - Data Entry Tool - R2.xlsx"
tool1_path = "./input/tools/Tool 1_EERA School Indepth Visit_Principal Interview_R2.xlsx"
tool2_path = "./input/tools/Tool 2_EERA School Light Tool_R2.xlsx"
tool3_path = "./input/tools/Tool 3_EERA School Student Documents and Headcount Monitoring_R2.xlsx"
tool4_path = "./input/tools/Tool 4_EERA School Teacher Interview_R2.xlsx"
tool5_path = "./input/tools/Tool 5_EERA School WASH Monitoring_R2.xlsx"
tool6_path = "./input/tools/Tool 6_EERA School_CBE Student Parent Interview_R2.xlsx"
tool7_path = "./input/tools/Tool 7_EERA School_CBE Shura Member Interview_R2.xlsx"
tool8_path = "./input/tools/Tool 8_EERA CBE_Teacher Interview_R2.xlsx"
tool9_path = "./input/tools/Tool 9_EERA CBE_IP Interview_R2.xlsx"

# Tool 0 ------------------------------------------------------------------
for (sh in names(clean_data.tool0)) {
  clean_data.tool0[[sh]] <- labeler(
    data = clean_data.tool0[[sh]],
    tool = tool0_path,
    survey_label = "label",
    choice_lable = "label"
  )
}


# Tool 1 ------------------------------------------------------------------
clean_data.tool1$data <- labeler(
  data = clean_data.tool1$data, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Support_Respondents <- labeler(
  data = clean_data.tool1$Support_Respondents, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$School_Operationality <- labeler(
  data = clean_data.tool1$School_Operationality, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$School_Operationality_Other_... <- labeler(
  data = clean_data.tool1$School_Operationality_Other_..., 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Shifts_Detail <- labeler(
  data = clean_data.tool1$Shifts_Detail, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Other_Shifts_Detail <- labeler(
  data = clean_data.tool1$Other_Shifts_Detail, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Headmasters <- labeler(
  data = clean_data.tool1$Headmasters, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Weekly_Schedule_Old <- labeler(
  data = clean_data.tool1$Weekly_Schedule_Old, 
  tool = tool1_path, 
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Weekly_Schedule_New <- labeler(
  data = clean_data.tool1$Weekly_Schedule_New, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Subjects_Detail <- labeler(
  data = clean_data.tool1$Subjects_Detail, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Additional_Subjects <- labeler(
  data = clean_data.tool1$Additional_Subjects, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Education_Quality <- labeler(
  data = clean_data.tool1$Education_Quality, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool1$Relevant_photos <- labeler(
  data = clean_data.tool1$Relevant_photos, 
  tool = tool1_path,
  survey_label = "label",
  choice_lable = "label")


# Tool 2 ------------------------------------------------------------------
clean_data.tool2$data <- labeler(
  data = clean_data.tool2$data, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2$Support_Respondents <- labeler(
  data = clean_data.tool2$Support_Respondents, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2$Attendance_Sheet_Photos <- labeler(
  data = clean_data.tool2$Attendance_Sheet_Photos, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2$Public_Stationary_Kit_Group <- labeler(
  data = clean_data.tool2$Public_Stationary_Kit_Group, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2$Teachers_Pack_Group <- labeler(
  data = clean_data.tool2$Teachers_Pack_Group, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2$Students_Pack_Group <- labeler(
  data = clean_data.tool2$Students_Pack_Group, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool2$Relevant_photos <- labeler(
  data = clean_data.tool2$Relevant_photos, 
  tool = tool2_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 3 ------------------------------------------------------------------
clean_data.tool3$data <- labeler(
  data = clean_data.tool3$data, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3$Support_Respondents <- labeler(
  data = clean_data.tool3$Support_Respondents, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3$Grade_Details <- labeler(
  data = clean_data.tool3$Grade_Details, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3$Todays_Attendance_Detail <- labeler(
  data = clean_data.tool3$Todays_Attendance_Detail, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3$LastWeek_Attendance_Detail <- labeler(
  data = clean_data.tool3$LastWeek_Attendance_Detail, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3$Student_Headcount <- labeler(
  data = clean_data.tool3$Student_Headcount, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3$Tool3_Grades_Repeat <- labeler(
  data = clean_data.tool3$Tool3_Grades_Repeat, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool3$Relevant_photos <- labeler(
  data = clean_data.tool3$Relevant_photos, 
  tool = tool3_path,
  survey_label = "label",
  choice_lable = "label")


# Tool 4 ------------------------------------------------------------------
clean_data.tool4$data <- labeler(
  data = clean_data.tool4$data, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4$Additional_Subjects <- labeler(
  data = clean_data.tool4$Additional_Subjects, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4$Subjects_taught_by_this_teacher <- labeler(
  data = clean_data.tool4$Subjects_taught_by_this_teacher, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4$Subjects_Not_Being_Taught <- labeler(
  data = clean_data.tool4$Subjects_Not_Being_Taught, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool4$Relevant_photos <- labeler(
  data = clean_data.tool4$Relevant_photos, 
  tool = tool4_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 5 ------------------------------------------------------------------
clean_data.tool5$data <- labeler(
  data = clean_data.tool5$data, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5$Under_Construction_Toilets <- labeler(
  data = clean_data.tool5$Under_Construction_Toilets, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5$Useable_Toilets <- labeler(
  data = clean_data.tool5$Useable_Toilets, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5$Non_Useable_Toilets <- labeler(
  data = clean_data.tool5$Non_Useable_Toilets, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool5$Relevant_photos <- labeler(
  data = clean_data.tool5$Relevant_photos, 
  tool = tool5_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 6 ------------------------------------------------------------------
clean_data.tool6$data <- labeler(
  data = clean_data.tool6$data, 
  tool = tool6_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool6$Subjects_Added <- labeler(
  data = clean_data.tool6$Subjects_Added, 
  tool = tool6_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 7 ------------------------------------------------------------------
clean_data.tool7$data <- labeler(
  data = clean_data.tool7$data, 
  tool = tool7_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool7$C6_list_members <- labeler(
  data = clean_data.tool7$C6_list_members, 
  tool = tool7_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool7$Subjects_Added <- labeler(
  data = clean_data.tool7$Subjects_Added, 
  tool = tool7_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 8 ------------------------------------------------------------------
clean_data.tool8$data <- labeler(
  data = clean_data.tool8$data, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Classes <- labeler(
  data = clean_data.tool8$Classes, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Adults_At_The_CBE <- labeler(
  data = clean_data.tool8$Adults_At_The_CBE, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Section_2_2_3_Attendance_Rec... <- labeler(
  data = clean_data.tool8$Section_2_2_3_Attendance_Rec..., 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Section_2_2_4_Headcount <- labeler(
  data = clean_data.tool8$Section_2_2_4_Headcount, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Students_Enrolment_Book <- labeler(
  data = clean_data.tool8$Students_Enrolment_Book, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Section_2_4_Student_Ages <- labeler(
  data = clean_data.tool8$Section_2_4_Student_Ages, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Classroom_Materials <- labeler(
  data = clean_data.tool8$Classroom_Materials, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Teacher_Kit <- labeler(
  data = clean_data.tool8$Teacher_Kit, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Student_Kit <- labeler(
  data = clean_data.tool8$Student_Kit, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$V_list_of_all_members <- labeler(
  data = clean_data.tool8$V_list_of_all_members, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Subjects_Added <- labeler(
  data = clean_data.tool8$Subjects_Added, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool8$Relevant_photos <- labeler(
  data = clean_data.tool8$Relevant_photos, 
  tool = tool8_path,
  survey_label = "label",
  choice_lable = "label")

# Tool 9 ------------------------------------------------------------------
clean_data.tool9$data <- labeler(
  data = clean_data.tool9$data, 
  tool = tool9_path,
  survey_label = "label",
  choice_lable = "label")

clean_data.tool9$Relevant_photos <- labeler(
  data = clean_data.tool9$Relevant_photos, 
  tool = tool9_path,
  survey_label = "label",
  choice_lable = "label")

# remove extra objects from environment  
rm(tool1_path, 
   tool2_path,
   tool3_path,
   tool4_path,
   tool5_path,
   tool6_path,
   tool7_path,
   tool8_path,
   tool9_path)
