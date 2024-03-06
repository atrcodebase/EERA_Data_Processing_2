# Organization:   ATR
# Date:           Feb 2024
# Script:         EERA Data Processing (Round 2)
# Author:         ATR Data Management Department

# Load required packages -------------------------------------------------------
rm(list = ls())
if(!require(tidyverse)) install.packages("tidyverse")
if(!require(googlesheets4)) install.packages("googlesheets4")
if(!require(openxlsx)) install.packages("openxlsx")
if(!require(readxl)) install.packages("readxl")
if(!require(readxl)) install.packages("lubridate")
if(!require(readxl)) install.packages("janitor")
if(!require(remotes)) install.packages("remotes")
if(!require(atRfunctions)) remotes::install_github("atrcodebase/atRfunctions")
`%notin%` <- Negate(`%in%`)

# source("R/functions/read_xlsx_all_sheets.R")
# source("R/functions/convert_numbers_to_date.R")

# Declaring Global Variables ---------------------------------------------------
data_collection_start_date = as.Date("24.02.2024", format("%d.%m.%Y"))
qa_sheet_url_ps = "https://docs.google.com/spreadsheets/d/1D4fFibHsl19ya_NzUMrOAlcaMIvGv7MB5ZN-e0_4quI/edit#gid=1005923888"


output_data_path = "output/"
sample_files_path = "input/sample_files/"

raw_data_path = list.files("input/raw_data/", full.names = T) %>% .[!grepl("/\\~\\$", .)] |> as.list() %>% setNames(gsub(".*Tool (\\d).*", "tool\\1", .))
kobo_tools_path = list.files("input/tools/", full.names = T) %>% .[!grepl("/\\~\\$", .)] |> as.list() %>% setNames(gsub(".*Tool (\\d).*", "tool\\1", .))
relevancy_files_path = list.files("input/relevancy_files/", full.names = T) %>% .[!grepl("/\\~\\$", .)] |> as.list() %>% setNames(gsub(".*tool(\\d).*", "tool\\1", .))
meta_cols <- c("Site_Visit_ID", "starttime", "Region", "Province", "District", "Area_Type")
meta_cols.qa_sheet <- c(Visit_ID = "Site_Visit_ID", "School Code", "Sample_Type", Survey_Date = "SubmissionDate", Region = "Region", "KEY")

# Read inputs --------------------------------------------------------------
# Data sets
raw_data.tool1 = read_xlsx_sheets(raw_data_path$tool1)
raw_data.tool2 = read_xlsx_sheets(raw_data_path$tool2)
raw_data.tool3 = read_xlsx_sheets(raw_data_path$tool3)
raw_data.tool4 = read_xlsx_sheets(raw_data_path$tool4)
raw_data.tool5 = read_xlsx_sheets(raw_data_path$tool5)
raw_data.tool6 = read_xlsx_sheets(raw_data_path$tool6)
raw_data.tool7 = read_xlsx_sheets(raw_data_path$tool7)
raw_data.tool8 = read_xlsx_sheets(raw_data_path$tool8)
raw_data.tool9 = read_xlsx_sheets(raw_data_path$tool9)

# Tools
kobo_tool.tool1 = read_xlsx_sheets(kobo_tools_path$tool1)
kobo_tool.tool2 = read_xlsx_sheets(kobo_tools_path$tool2)
kobo_tool.tool3 = read_xlsx_sheets(kobo_tools_path$tool3)
kobo_tool.tool4 = read_xlsx_sheets(kobo_tools_path$tool4)
kobo_tool.tool5 = read_xlsx_sheets(kobo_tools_path$tool5)
kobo_tool.tool6 = read_xlsx_sheets(kobo_tools_path$tool6)
kobo_tool.tool7 = read_xlsx_sheets(kobo_tools_path$tool7)
kobo_tool.tool8 = read_xlsx_sheets(kobo_tools_path$tool8)
kobo_tool.tool9 = read_xlsx_sheets(kobo_tools_path$tool9)


# Relevancy files
relevancy_file.tool1 = read_xlsx_sheets(relevancy_files_path$tool1)
relevancy_file.tool2 = read_xlsx_sheets(relevancy_files_path$tool2)
relevancy_file.tool3 = read_xlsx_sheets(relevancy_files_path$tool3)
relevancy_file.tool4 = read_xlsx_sheets(relevancy_files_path$tool4)
relevancy_file.tool5 = read_xlsx_sheets(relevancy_files_path$tool5)
relevancy_file.tool6 = read_xlsx_sheets(relevancy_files_path$tool6)
relevancy_file.tool7 = read_xlsx_sheets(relevancy_files_path$tool7)
relevancy_file.tool8 = read_xlsx_sheets(relevancy_files_path$tool8)
relevancy_file.tool9 = read_xlsx_sheets(relevancy_files_path$tool9)


# Sampling
sample_file_ps = read.xlsx(paste0(sample_files_path, "EERA Sampling R2.xlsx")) |> filter(Sample == "Public School")
sample_file_cbe = read.xlsx(paste0(sample_files_path, "EERA Sampling R2.xlsx")) |> filter(Sample == "CBE")
sample_file_census = read.xlsx(paste0(sample_files_path, "EERA Sampling Census R2.xlsx"))
sample_file_ip = read.xlsx(paste0(sample_files_path, "EERA IP Sampling R2.xlsx"))


# Read QA log from Google sheet ------------------------------------------------
qa_sheet_ps = read_sheet(qa_sheet_url_ps, sheet = "QA_Log") |> filter(Sample_Type == "Public School")
# To select the user to authenticate
2
qa_sheet_cbe = read_sheet(qa_sheet_url_ps, sheet = "QA_Log") |> filter(Sample_Type == "CBE")

correction_log = plyr::rbind.fill(
  read_sheet(qa_sheet_url_ps, sheet = "Correction_Log Headmaster") |> mutate(Tool = "Tool 1 - Headmaster", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value),
                                                                              Key = as.character(Key)),
  read_sheet(qa_sheet_url_ps, sheet = "Correction_Log Light") |> mutate(Tool = "Tool 2 - Light", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value), Key = as.character(Key)),
  read_sheet(qa_sheet_url_ps, sheet = "Correction_Log Headcount") |> mutate(Tool = "Tool 3 - Headcount", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value)),
  read_sheet(qa_sheet_url_ps, sheet = "Correction_Log Teacher") |> mutate(Tool = "Tool 4 - Teacher", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value),
                                                                          Key = as.character(Key)),
  read_sheet(qa_sheet_url_ps, sheet = "Correction_Log WASH") |> mutate(Tool = "Tool 5 - WASH", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value), Key = as.character(Key)),
  read_sheet(qa_sheet_url_ps, sheet = "Correction_Log Parent") |> rename(Key = KEY) |> mutate(Tool = "Tool 6 - Parent", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value), Remarks = as.character(Remarks)),
  read_sheet(qa_sheet_url_ps, sheet = "Correction _Log Shura") |> mutate(Tool = "Tool 7 - Shura", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value), Key = as.character(Key))
)

# Turn NULL values to NA for old and new value columns
correction_log <- correction_log %>% 
  mutate(
    New_Value = case_when(
      is.null(New_Value) | New_Value == "NULL" ~ NA_character_,
      TRUE ~ New_Value
    ),
    old_value = case_when(
      is.null(old_value) | old_value == "NULL" ~ NA_character_,
      TRUE ~ old_value
    )
  ) %>% 
  # Exclude if Unique_key, question, and old value combo is NA
  filter(!is.na(KEY_Unique) & !is.na(New_Value) & !is.na(old_value))


correction_log_ps <- correction_log |> filter(is.na(Sample_Type) | Sample_Type == "Public School")

correction_log_cbe <- plyr::rbind.fill(
  correction_log |> filter(Sample_Type == "CBE"),
  read_sheet(qa_sheet_url_ps, sheet = "Correction _Log Class") |> mutate(Tool = "Tool 8 - Class", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value), Key = as.character(Key)),
  read_sheet(qa_sheet_url_ps, sheet = "Correction _Log IP") |> mutate(Tool = "Tool 9 - IP", Index = as.character(Index), old_value = as.character(old_value), New_Value = as.character(New_Value), KEY_Unique = as.character(KEY_Unique),
                                                                      Key = as.character(Key))
)

# Turn NULL values to NA for old and new value columns
correction_log_cbe <- correction_log_cbe %>% 
  mutate(
    New_Value = case_when(
      is.null(New_Value) | New_Value == "NULL" ~ NA_character_,
      TRUE ~ New_Value
    ),
    old_value = case_when(
      is.null(old_value) | old_value == "NULL" ~ NA_character_,
      TRUE ~ old_value
    )
  ) %>% 
  # Exclude if Unique_key, question, and old value combo is NA
  filter(!is.na(KEY_Unique) & !is.na(New_Value) & !is.na(old_value))

# Remove extra object
rm(correction_log)

deletion_log <- read_sheet(qa_sheet_url_ps, sheet = "To be removed from dataset")

# Prepare Data sets - Public School --------------------------------------------
qa_sheet_ps <- qa_sheet_ps |>
  rename(
    qa_status = "QA Status",
    tool = `Tool`) |>
  mutate(
    qa_status = toupper(qa_status), 
    qa_status = case_when(
      is.na(qa_status) ~ "PENDING",
      TRUE ~ qa_status
    )
  )

table(qa_sheet_ps$qa_status, qa_sheet_ps$tool, useNA = "always") %>% 
  addmargins(2)

# Extract Approved Interviews
approved_keys_ps = qa_sheet_ps |> 
  filter(qa_status %in% c("APPROVED", "APPROVED (EXCEL CHECK ONLY)")) |> 
  pull(KEY) |> unique()

length(approved_keys_ps) == length(which(qa_sheet_ps$qa_status == "APPROVED" | qa_sheet_ps$qa_status == "APPROVED (EXCEL CHECK ONLY)"))

# Extract Pending interview to be included for weekly report
pending_key_ps = qa_sheet_ps |>
  filter(qa_status == "PENDING") |>
  pull(KEY) |> unique()

length(pending_key_ps) == length(which(qa_sheet_ps$qa_status == "PENDING"))

# Extract deleted KEYs to be removed from data sets
deleted_keys_ps = deletion_log |> filter(Sample_Type == "Public School") |> pull(KEY_Unique)

# Align column names
correction_log_ps <- correction_log_ps %>% 
  mutate(across(everything(), as.character)) |> 
  rename(
    KEY = "KEY_Unique",
    # KEY = "Key",
    question = "Question",
    new_value = "New_Value",
    tool = "Tool"
  )


# Prepare Data sets - CBE ------------------------------------------------------
qa_sheet_cbe <- qa_sheet_cbe |>
  rename(
    qa_status = "QA Status",
    tool = `Tool`) |>
  mutate(
    qa_status = toupper(qa_status), 
    qa_status = case_when(
      is.na(qa_status) ~ "PENDING",
      TRUE ~ qa_status
    )
  )

table(qa_sheet_cbe$qa_status, qa_sheet_cbe$tool, useNA = "always") %>% 
  addmargins(2)


# Extract Approved Interviews
approved_keys_cbe = qa_sheet_cbe |> 
  filter(qa_status %in% c("APPROVED", "APPROVED (EXCEL CHECK ONLY)")) |> 
  pull(KEY) |> unique()

length(approved_keys_cbe) == length(which(qa_sheet_cbe$qa_status == "APPROVED" | qa_sheet_cbe$qa_status == "APPROVED (EXCEL CHECK ONLY)"))

 # Extract Pending interview to be included for weekly report
pending_key_cbe = qa_sheet_cbe |>
  filter(qa_status == "PENDING") |>
  pull(KEY) |> unique()

length(pending_key_cbe) == length(which(qa_sheet_cbe$qa_status == "PENDING"))

# Extract deleted KEYs to be removed from data sets
deleted_keys_cbe = deletion_log |> filter(Sample_Type == "CBE") |> pull(KEY_Unique)

# Align column names
correction_log_cbe <- correction_log_cbe %>% 
  mutate(across(everything(), as.character)) |> 
  rename(
    KEY = "KEY_Unique",
    # KEY = "Key",
    question = "Question",
    new_value = "New_Value",
    tool = "Tool"
  )


# convert numeric dates to date and time formats -------------------------------
source("R/convert_numbers_to_date_time.R")


# Not QAed Interviews (Except 'Approved Excel Check only') ------------- PENDING
# source("R/log_qa_log_inconsistencies.R")


# Apply correction log ------------------------------------------------ Last Part
if(nrow(correction_log_ps) > 0 | nrow(correction_log_cbe)) source("R/apply_correction_log.R")


# Merge meta data from main sheet to repeating groups --------------------------
source("R/main_sheet_to_repeat_sheets.R")


# Data for Weekly Report -------------------------------------------------------
# source("R/data_for_weekly_report.R")


# Remove the rejected and pilot interviews -------------------------------------
source("R/remove_rejected_interviews.R")


# Check repeat sheet count --------------------------------------------- PENDING
# file.edit("R/check_repeat_sheet_counts.R")


# Missing translations (for QA)----------------------------------------- PENDING
# file.edit("R/create_translation_log.R")


# Missing qa (for QA)--------------------------------------------------- PENDING
# file.edit("R/missing_qa.R") # New script


# Update select multiple binary variables ---------------------------------
source("R/fix_select_multiple_questions.R") 


# Check select multiple variables -------------------------------------- PENDING
# file.edit("R/check_select_multiple_questions.R")


# Calculation column checks -------------------------------------------- PENDING
# file.edit("R/calculate_cols_check.R")


# Outlier Check -------------------------------------------------------- PENDING
# file.edit("R/check_outliers.R")


# Compare Number of Interviews with Sample ----------------------------- Last ONE
# source("R/compare_sample_vs_df.R")


# Relevancy Check --------------------------------------------------------------
source("R/check_relevancies.R") 


# Check the responses with the tool --------------------------------------------
source("R/compare_df_values_with_tool.R")


# attach value labels  ---------------------------------------------------------
source("R/attach_labels.R")


# re-code variables ---------------------------------------------------- PENDING
# file.edit("R/recoded_vars.R") 


# Logical inconsistencies ---------------------------------------------- PENDING
# file.edit("R/logical_checks.R")


# prepare data sets to export  -------------------------------------------- NOW
## remove extra columns
source("R/remove_extra_columns.R")


# attach labels to calculates cols ---------------------------------------- PENDING
# file.edit("R/attach_calculate_label.R")


# change 7777, 8888, 9999 to Labels  -------------------------------------- PENDING
# file.edit("R/recode_to_na.R")


# export data sets and issues --------------------------------------------- NOW
source("R/export_outputs.R")
