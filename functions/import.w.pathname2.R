function(file_path) {
  df2 <- import.w.name(pathname) 
  df2 <- df2 %>%
    mutate(date_created = str_extract(pathname,
                                      "(?<=_)[:alnum:]+(?=\\.)")) %>%
    dplyr::select(UTCDateTime,
                  current_temp_f,
                  current_humidity,
                  pressure,
                  pm2_5_atm,
                  sensor_ID,
                  date_created) %>%
    na.omit()
  return(df2)
}
