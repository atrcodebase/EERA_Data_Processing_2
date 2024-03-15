# Tool 0 ----------------------------------------------------------------------
for(sh in names(clean_data.tool0)) {
  clean_data.tool0[[sh]] <- update_series_cols(data = clean_data.tool0[[sh]],
                                               tool = kobo_tool.tool0$survey,
                                               question_separator = "_")
}

# Tool 1 ----------------------------------------------------------------------
clean_data.tool1$data <- update_series_cols(data = clean_data.tool1$data, 
                                            tool = kobo_tool.tool1$survey, 
                                            question_separator = "_")

clean_data.tool1$School_Operationality <- update_series_cols(data = clean_data.tool1$School_Operationality,
                                                             tool = kobo_tool.tool1$survey, 
                                                             question_separator = "_")

clean_data.tool1$School_Operationality_Other_... <- update_series_cols(data = clean_data.tool1$School_Operationality_Other_...,
                                                                       tool = kobo_tool.tool1$survey,
                                                                       question_separator = "_")

clean_data.tool1$Shifts_Detail <- update_series_cols(data = clean_data.tool1$Shifts_Detail,
                                                     tool = kobo_tool.tool1$survey, 
                                                     question_separator = "_")

clean_data.tool1$Other_Shifts_Detail <- update_series_cols(data = clean_data.tool1$Other_Shifts_Detail,
                                                           tool = kobo_tool.tool1$survey, 
                                                           question_separator = "_")

clean_data.tool1$Headmasters <- update_series_cols(data = clean_data.tool1$Headmasters,
                                                   tool = kobo_tool.tool1$survey, 
                                                   question_separator = "_")

clean_data.tool1$Weekly_Schedule_Old <- update_series_cols(data = clean_data.tool1$Weekly_Schedule_Old,
                                                   tool = kobo_tool.tool1$survey, 
                                                   question_separator = "_")

clean_data.tool1$Weekly_Schedule_New <- update_series_cols(data = clean_data.tool1$Weekly_Schedule_New,
                                                           tool = kobo_tool.tool1$survey, 
                                                           question_separator = "_")

clean_data.tool1$Subjects_Detail <- update_series_cols(data = clean_data.tool1$Subjects_Detail,
                                                           tool = kobo_tool.tool1$survey, 
                                                           question_separator = "_")

clean_data.tool1$Additional_Subjects <- update_series_cols(data = clean_data.tool1$Additional_Subjects,
                                                       tool = kobo_tool.tool1$survey, 
                                                       question_separator = "_")

clean_data.tool1$Education_Quality <- update_series_cols(data = clean_data.tool1$Education_Quality,
                                                           tool = kobo_tool.tool1$survey, 
                                                           question_separator = "_")


# Tool 2 ----------------------------------------------------------------------
clean_data.tool2$data <- update_series_cols(data = clean_data.tool2$data, 
                                            tool = kobo_tool.tool2$survey, 
                                            question_separator = "_")

clean_data.tool2$Attendance_Sheet_Photos <- update_series_cols(data = clean_data.tool2$Attendance_Sheet_Photos, 
                                            tool = kobo_tool.tool2$survey, 
                                            question_separator = "_")

clean_data.tool2$Public_Stationary_Kit_Group <- update_series_cols(data = clean_data.tool2$Public_Stationary_Kit_Group, 
                                                                   tool = kobo_tool.tool2$survey, 
                                                                   question_separator = "_")

clean_data.tool2$Teachers_Pack_Group <- update_series_cols(data = clean_data.tool2$Teachers_Pack_Group, 
                                                           tool = kobo_tool.tool2$survey, 
                                                           question_separator = "_")

clean_data.tool2$Students_Pack_Group <- update_series_cols(data = clean_data.tool2$Students_Pack_Group, 
                                                           tool = kobo_tool.tool2$survey, 
                                                           question_separator = "_")


# Tool 3 ----------------------------------------------------------------------
clean_data.tool3$data <- update_series_cols(data = clean_data.tool3$data, 
                                            tool = kobo_tool.tool3$survey, 
                                            question_separator = "_")

clean_data.tool3$Grade_Details <- update_series_cols(data = clean_data.tool3$Grade_Details, 
                                            tool = kobo_tool.tool3$survey, 
                                            question_separator = "_")

clean_data.tool3$Todays_Attendance_Detail <- update_series_cols(data = clean_data.tool3$Todays_Attendance_Detail, 
                                                     tool = kobo_tool.tool3$survey, 
                                                     question_separator = "_")

clean_data.tool3$LastWeek_Attendance_Detail <- update_series_cols(data = clean_data.tool3$LastWeek_Attendance_Detail, 
                                                                tool = kobo_tool.tool3$survey, 
                                                                question_separator = "_")

clean_data.tool3$Student_Headcount <- update_series_cols(data = clean_data.tool3$Student_Headcount, 
                                                                  tool = kobo_tool.tool3$survey, 
                                                                  question_separator = "_")

clean_data.tool3$Tool3_Grades_Repeat <- update_series_cols(data = clean_data.tool3$Tool3_Grades_Repeat, 
                                                         tool = kobo_tool.tool3$survey, 
                                                         question_separator = "_")

# Tool 4 ---------------------------------------------------------------------- 
clean_data.tool4$data <- update_series_cols(data = clean_data.tool4$data,
                                            tool = kobo_tool.tool4$survey,
                                            question_separator = "_")

clean_data.tool4$Additional_Subjects <- update_series_cols(data = clean_data.tool4$Additional_Subjects,
                                            tool = kobo_tool.tool4$survey,
                                            question_separator = "_")

clean_data.tool4$Subjects_taught_by_this_teacher <- update_series_cols(data = clean_data.tool4$Subjects_taught_by_this_teacher,
                                                           tool = kobo_tool.tool4$survey,
                                                           question_separator = "_")

clean_data.tool4$Subjects_Not_Being_Taught <- update_series_cols(data = clean_data.tool4$Subjects_Not_Being_Taught, 
                                                                 tool = kobo_tool.tool4$survey, 
                                                                 question_separator = "_")


# Tool 5 ----------------------------------------------------------------------
clean_data.tool5$data <- update_series_cols(data = clean_data.tool5$data, 
                                            tool = kobo_tool.tool5$survey, 
                                            question_separator = "_")

clean_data.tool5$Under_Construction_Toilets <- update_series_cols(data = clean_data.tool5$Under_Construction_Toilets, 
                                            tool = kobo_tool.tool5$survey, 
                                            question_separator = "_")

clean_data.tool5$Useable_Toilets <- update_series_cols(data = clean_data.tool5$Useable_Toilets, 
                                            tool = kobo_tool.tool5$survey, 
                                            question_separator = "_")

clean_data.tool5$Non_Useable_Toilets <- update_series_cols(data = clean_data.tool5$Non_Useable_Toilets, 
                                            tool = kobo_tool.tool5$survey, 
                                            question_separator = "_")


# Tool 6 ----------------------------------------------------------------------
clean_data.tool6$data <- update_series_cols(data = clean_data.tool6$data, 
                                            tool = kobo_tool.tool6$survey, 
                                            question_separator = "_")



# Tool 7 ----------------------------------------------------------------------
clean_data.tool7$data <- update_series_cols(data = clean_data.tool7$data, 
                                            tool = kobo_tool.tool7$survey, 
                                            question_separator = "_")



# Tool 8 ----------------------------------------------------------------------
clean_data.tool8$data <- update_series_cols(data = clean_data.tool8$data, 
                                            tool = kobo_tool.tool8$survey, 
                                            question_separator = "_")

clean_data.tool8$Classes <- update_series_cols(data = clean_data.tool8$Classes, 
                                               tool = kobo_tool.tool8$survey, 
                                               question_separator = "_")

clean_data.tool8$Adults_At_The_CBE <- update_series_cols(data = clean_data.tool8$Adults_At_The_CBE, 
                                               tool = kobo_tool.tool8$survey, 
                                               question_separator = "_")

clean_data.tool8$Section_2_2_3_Attendance_Rec <- update_series_cols(data = clean_data.tool8$Section_2_2_3_Attendance_Rec, 
                                                         tool = kobo_tool.tool8$survey, 
                                                         question_separator = "_")

clean_data.tool8$Section_2_2_4_Headcount <- update_series_cols(data = clean_data.tool8$Section_2_2_4_Headcount, 
                                                         tool = kobo_tool.tool8$survey, 
                                                         question_separator = "_")

clean_data.tool8$Students_Enrolment_Book <- update_series_cols(data = clean_data.tool8$Students_Enrolment_Book, 
                                                         tool = kobo_tool.tool8$survey, 
                                                         question_separator = "_")

clean_data.tool8$Section_2_4_Student_Ages <- update_series_cols(data = clean_data.tool8$Section_2_4_Student_Ages, 
                                                         tool = kobo_tool.tool8$survey, 
                                                         question_separator = "_")

clean_data.tool8$Classroom_Materials <- update_series_cols(data = clean_data.tool8$Classroom_Materials, 
                                                           tool = kobo_tool.tool8$survey, 
                                                           question_separator = "_")

clean_data.tool8$Teacher_Kit <- update_series_cols(data = clean_data.tool8$Teacher_Kit, 
                                                   tool = kobo_tool.tool8$survey, 
                                                   question_separator = "_")

clean_data.tool8$Student_Kit <- update_series_cols(data = clean_data.tool8$Student_Kit, 
                                                   tool = kobo_tool.tool8$survey, 
                                                   question_separator = "_")

clean_data.tool8$V_list_of_all_members <- update_series_cols(data = clean_data.tool8$V_list_of_all_members, 
                                                   tool = kobo_tool.tool8$survey, 
                                                   question_separator = "_")

clean_data.tool8$Subjects_Added <- update_series_cols(data = clean_data.tool8$Subjects_Added, 
                                                   tool = kobo_tool.tool8$survey, 
                                                   question_separator = "_")


# Tool 9 ----------------------------------------------------------------------
clean_data.tool9$data <- update_series_cols(data = clean_data.tool9$data, 
                                            tool = kobo_tool.tool9$survey, 
                                            question_separator = "_")


# removing extra elements from the environment
rm(list = c(
  objects(pattern = ".sm_vars$")
))



