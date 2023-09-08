#metadata Genevieve, 6 September 2023, MECH 476 at 12, CH 3
# pathnames and data import

# working directory
getwd()

# path 
ozone_data <- readr::read_csv(file = "data/ftc_o3.csv")

# absolute path, not recommended 
# ozone_abs_path <- base::paste0("/Users/genevieve/Reyland-MECH476/data/ftc_o3.csv)

# possible functions for initial data view and check 
tibble::glimpse(ozone_data)
head(ozone_data)
tail(ozone_data)
str(ozone_data)
summary(ozone_data)
dim(ozone_data)
nrow(ozone_data)
ncol(ozone_data)
length(ozone_data)
colnames(ozone_data)
# class(ozone_data$[selected_colname]) # example structure; will not run
