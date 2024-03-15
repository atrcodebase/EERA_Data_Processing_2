apply_log_r <- function (data, log,
                       data_KEY = "KEY",
                       log_columns = c(question = "question",
                                       old_value = "old_value",
                                       new_value = "new_value",
                                       KEY = "KEY")
){
  if(nrow(log) == 0){
    print(paste0("No logs under: ", deparse(substitute(data))))
    return(data)
  } else {
    tryCatch(
      # Specifying expression
      expr = {
        for (rowi in 1:nrow(log)) {
          var_i <- log[[log_columns[["question"]]]][rowi]
          old_i <- log[[log_columns[["old_value"]]]][rowi]
          new_i <- log[[log_columns[["new_value"]]]][rowi]
          uuid_i <- log[[log_columns[["KEY"]]]][rowi]
          if (var_i %in% colnames(data)) {
            var_type <- class(data[[var_i]])
            # check data type and apply log
            # if(any(var_type %in% c("POSIXct", "POSIXt")) & is.na(new_i)){
            if(any(var_type %in% c("POSIXct", "POSIXt"))){
              data[data[[data_KEY]] %in% uuid_i, var_i] <- as.Date(new_i)
            } else if (var_type %in% "character") {
              data[data[[data_KEY]] %in% uuid_i, var_i] <- as.character(new_i)
            } else {
              data[data[[data_KEY]] %in% uuid_i, var_i] <- as.numeric(new_i)
            }
          }
        }
        return(data)
      },
      # Specifying error message
      error = function(e){
        stop(paste("uuid:", uuid_i, "Old value: ", old_i,
                   "changed to", new_i, "for", var_i), call. = FALSE)
      }
    )
  }
}
