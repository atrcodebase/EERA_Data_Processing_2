library(atRfunctions)

# Read the tools ---------------------------------------------------------------
tool1 <- read_excel("./input/tools/Tool 1_EERA School Indepth Visit_Principal Interview_R2.xlsx") %>%  mutate(name = trimws(name))
tool2 <- read_excel("./input/tools/Tool 2_EERA School Light Tool_R2.xlsx") %>%  mutate(name = trimws(name))
tool3 <- read_excel("./input/tools/Tool 3_EERA School Student Documents and Headcount Monitoring_R2.xlsx") %>%  mutate(name = trimws(name))
tool4 <- read_excel("./input/tools/Tool 4_EERA School Teacher Interview_R2.xlsx") %>%  mutate(name = trimws(name))
tool5 <- read_excel("./input/tools/Tool 5_EERA School WASH Monitoring_R2.xlsx") %>%  mutate(name = trimws(name))
tool6 <- read_excel("./input/tools/Tool 6_EERA School_CBE Student Parent Interview_R2.xlsx") %>%  mutate(name = trimws(name))
tool7 <- read_excel("./input/tools/Tool 7_EERA School_CBE Shura Member Interview_R2.xlsx") %>%  mutate(name = trimws(name))
tool8 <- read_excel("./input/tools/Tool 8_EERA CBE_Teacher Interview_R2.xlsx") %>%  mutate(name = trimws(name))
tool9 <- read_excel("./input/tools/Tool 9_EERA CBE_IP Interview_R2.xlsx") %>%  mutate(name = trimws(name))
tool0 <- read_excel("./input/tools/Tool 0.EERA Public School_CBE - Data Entry Tool - R2.xlsx") %>% mutate(name = trimws(name))

# Create the relevancy Files ---------------------------------------------------
relevancy_file1 <- create_relevancy_file(tool1, c('A32_QA', 'B19_QA', 'F2_QA', 'F4_QA', 'J24_QA', 'L2_QA', 'Please_Add_Any_Relevant_Photo_QA', 'Surveyor_Comments_Translation',
                                                  'A32_Caption', 'B19_Caption', 'F2_Caption', 'F4_Caption', 'J24_Caption', 'L2_Caption', "Please_Add_Any_Relevant_Photo_caption"))

relevancy_file2 <- create_relevancy_file(tool2, c('C14_Audio_Translation', 'Surveyor_Comments_Translation', 'B5_QA', 'Photo_closure_1_QA', 'Photo_closure_2_QA', 'G6_QA', 'H15_QA',
                                                  'H15_Not_In_Use_QA','i15_QA', 'i15_Not_In_Use_QA',
                                                  'J15_QA', 'J15_Not_In_Use_QA', 'Please_Add_Any_Relevant_Photo_QA', 'B5_Caption', 'Photo_closure_1_Caption', 'Photo_closure_2_Caption',
                                                  'G6_Caption',  'H15_Caption',  'H15_Not_In_Use_Caption', 'i15_Caption', 'i15_Not_In_Use_Caption', 'J15_Caption' , 'J15_Not_In_Use_Caption',
                                                  'Please_Add_Any_Relevant_Photo_caption'))

relevancy_file3 <- create_relevancy_file(tool3, c('No_Please_Explain_Translation', 'Surveyor_Comments_Translation', 'C1A2_QA', 'D4_QA', 'D4_2_QA', 'D8_QA',
                                                  'D8_2_QA', 'E2_QA', 'E2_2_QA', 'Please_Add_Any_Relevant_Photo_QA',
                                                  'C1A2_Caption', 'D4_Caption', 'D4_2_Caption', 'D8_Caption', 'D8_2_Caption', 'E2_Caption', 'E2_2_Caption', 'Please_Add_Any_Relevant_Photo_caption'))

relevancy_file4 <- create_relevancy_file(tool4, c('Surveyor_Comments_Translation', 'Please_Add_Any_Relevant_Photo_QA', 'Please_Add_Any_Relevant_Photo_caption',
                                                  'Respondent2_Phone_Number', 'G8_Translation', 'H3_Translation'))

relevancy_file5 <- create_relevancy_file(tool5, c('C5_Other_Audio_Translation', 'C7_Other_Audio_Translation', 'Surveyor_Comments_Translation', 'C3_QA', 'Under_Construction_Toilet_Photo_QA', 
                                                  'Useable_Toilet_Photo_QA', 'Non_Useable_Toilet_Photo_QA',
                                                  'C11_1_QA', 'Please_Add_Any_Relevant_Photo_QA', 'C3_Caption', 'Under_Construction_Toilet_Photo_Caption', 'Useable_Toilet_Photo_Caption',
                                                  'Non_Useable_Toilet_Photo_Caption', 'C11_1_Caption', 'Please_Add_Any_Relevant_Photo_caption','Respondent2_Phone_Number'
                                                  ))

relevancy_file6 <- create_relevancy_file(tool6, c('Surveyor_Comments_Translation'))

relevancy_file7 <- create_relevancy_file(tool7, c('Surveyor_Comments_Translation', 'C10_image_QA', 'C10_image_Caption'))

relevancy_file8 <- create_relevancy_file(tool8, c('Surveyor_Comments_Translation', 'B5_QA', 'B5_2_QA', 'E22_Photo1_QA', 'E22_Photo2_QA', 'E22_Photo3_QA', 'J4_Students_Enrolment_Book_Photo_QA',
                                                  'O10_QA', 'O10_Not_In_Use_QA',
                                                  'Q10_QA', 'Q10_Not_In_Use_QA', 'S10_QA', 'S10_Not_In_Use_QA', 'W15_QA', 'W18_QA', 'W21_QA', 'X6_QA', 'Please_Add_Any_Relevant_Photo_QA', 
                                                  'B5_Caption', 'B5_2_Caption',
                                                  'E22_Photo1_Caption', 'E22_Photo2_Caption', 'E22_Photo3_Caption', 'J4_Students_Enrolment_Book_Photo_Caption', 'O10_Caption' ,
                                                  'O10_Not_In_Use_Caption' , 'Q10_Caption' , 'Q10_Not_In_Use_Caption' , 'S10_Caption' , 'S10_Not_In_Use_Caption' , 'W15_Caption' ,'W18_Caption', 
                                                  'W21_Caption' ,
                                                  'X6_Caption' , 'Please_Add_Any_Relevant_Photo_caption', 'Respondent2_Phone_Number'))


relevancy_file9 <- create_relevancy_file(tool9, c('A15_Audio_Translation', 'Surveyor_Comments_Translation', 'A7_Photo1_QA', 'A7_Photo2_QA_Photo_QA', 'B2_Photo_QA', 'B6_Logbook_Photo_QA',
                                                  'Please_Add_Any_Relevant_Photo_QA', 'A7_Photo1_Caption', 'A7_Photo2_QA_Photo_Caption', 'B2_Photo_Caption' , 'B6_Logbook_Photo_Caption' ,
                                                  'Please_Add_Any_Relevant_Photo_caption', 'Respondent2_Phone_Number'))

relevancy_file0 <- create_relevancy_file(tool0)

# Export outputs ---------------------------------------------------------------
write.xlsx(relevancy_file1, "./input/relevancy_files/relevancy_file_tool1.xlsx")
write.xlsx(relevancy_file2, "./input/relevancy_files/relevancy_file_tool2.xlsx")
write.xlsx(relevancy_file3, "./input/relevancy_files/relevancy_file_tool3.xlsx")
write.xlsx(relevancy_file4, "./input/relevancy_files/relevancy_file_tool4.xlsx")
write.xlsx(relevancy_file5, "./input/relevancy_files/relevancy_file_tool5.xlsx")
write.xlsx(relevancy_file6, "./input/relevancy_files/relevancy_file_tool6.xlsx")
write.xlsx(relevancy_file7, "./input/relevancy_files/relevancy_file_tool7.xlsx")
write.xlsx(relevancy_file8, "./input/relevancy_files/relevancy_file_tool8.xlsx")
write.xlsx(relevancy_file9, "./input/relevancy_files/relevancy_file_tool9.xlsx")
write.xlsx(relevancy_file0, "./input/relevancy_files/relevancy_file_tool0.xlsx")
