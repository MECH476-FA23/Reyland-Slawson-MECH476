function(pathname) {
  #create a tibble by importing the 'pathname' file
  df <- read_csv(pathname, col_names = TRUE)
  df <- df %>%
    # use stringr::str_extract & a regex to get sensor ID from file name
    # regex translation: "look for a /, then extract all letters and numbers that follow until _"
    mutate(sensor_ID = str_extract(pathname, 
                                   "(?<=//)[:alnum:]+(?=_)")) %>%
    # return only a few salient variables to the resultant data frame using dplyr::select
    select(UTCDateTime, 
           current_temp_f, 
           current_humidity, 
           pressure,
           pm2_5_atm,
           sensor_ID) %>%
    na.omit() # remove NA values, which happens when sensor goes offline
  return(df)
}
