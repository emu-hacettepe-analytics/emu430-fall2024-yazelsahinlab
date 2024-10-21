install.packages("dslabs")
library(dslabs)
data("murders")
class(murders)
head(murders)
ind <- which.min(murder_rate)
if (murder_rate[ind] < 0.25) {
  print (murders$state[ind])
} else {
  print("No state has murder rate that low")
}
data(murders)
murder_rate <- (murders$total/murders$population)*100000
ind <- which.min(murder_rate)
if (murder_rate[ind] < 0.25) {
  print (murders$state[ind])
} else {
  print("No state has murder rate that low")
  
a <- c(0, 1, 2, -4, 5)
ifelse(a > 0, 1/a, NA)
a

z <- c(TRUE, TRUE, TRUE)
any(z)
calculate_rect_area <- function(width, height){
  area <- width * height 
  area
}
calculate_rect_area(5,12)


library(dslabs)
data("polls_us_election_2016")

first_ten_row<-head(polls_us_election_2016,10)
print(first_ten_row)

total_na <- sum(is.na(polls_us_election_2016))
print(total_na)
data("polls_us_election_2016")
sum(is.na(polls_us_election_2016))

install.packages("dslabs")
library(dslabs)
data("polls_us_election_2016")
first_ten_row <- head(polls_us_election_2016,10)
print(first_ten_row)

options(repos = c(CRAN = "https://cloud.r-project.org/"))

birth_year<-2002
first_name<-"Yazel"
no_nas_data<-polls_us_election_2016
for (col in names(polls_us_election_2016)) {
  no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]),
                                 if (is.numeric(no_nas_data[[col]])) birth_year else first_name,
                                 no_nas_data[[col]])
}
no_nas_data


birth_year<-2002
first_name<-"Yazel"
no_nas_data<-polls_us_election_2016
for (col in names(no_nas_data)){
  if (is.numeric(no_nas_data[[col]])) {
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
  } else {
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  }
}
new_first_ten_row <- head(no_nas_data,10)
new_first_ten_row

total_na<-sum(is.na(no_nas_data))
total_na

birth_year <- 2002
first_name <- "Yazel"
no_nas_data <- polls_us_election_2016

# NA değerlerini değiştirme işlemi (Diğer sütunlara dokunulmaz)
for (col in names(no_nas_data)) { 
  if (is.numeric(no_nas_data[[col]])) { 
    # Sadece NA olan sayısal değerleri doğum yılı ile değiştir
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
  } else if (is.character(no_nas_data[[col]]) || is.factor(no_nas_data[[col]])) { 
    # Sadece NA olan karakter veya faktör değerlerini isim ile değiştir
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  } else {
    # Diğer durumlarda hiçbir şey yapma
    next
  }
}
new_first_ten_row <- head(no_nas_data,10)
new_first_ten_row


birth_year<-2002
first_name<-"Yazel"
no_nas_data<-polls_us_election_2016
for (col in names(no_nas_data)){ #Check the type of column
  if (is.numeric(no_nas_data[[col]])) { #If it is a numeric column, replace the NA with the birth year
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
  } else { #If it is a character or factor column, replace the NAS with first name
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  }
}
new_first_ten_row <- head(no_nas_data,10)
new_first_ten_row  #ödevdeki

birth_year <- 2002
first_name <- "Yazel"

# Loop through each column
for (col in names(no_nas_data)) {
  if (is.numeric(no_nas_data[[col]])) { 
    # Only replace NA in numeric columns with birth year
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
  } else if (is.character(no_nas_data[[col]]) || is.factor(no_nas_data[[col]])) { 
    # Only replace NA in character or factor columns with first name
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  } else 
}
new_first_ten_row <- head(no_nas_data,10)
new_first_ten_row


birth_year <- 2002
first_name <- "Yazel"

# Loop through each column
for (col in names(no_nas_data)) {
  if (is.numeric(no_nas_data[[col]])) { 
    # Only replace NA in numeric columns with birth year
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
  } else if (is.character(no_nas_data[[col]]) || is.factor(no_nas_data[[col]])) { 
    # Only replace NA in character or factor columns with first name
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  }
}

new_first_ten_row <- head(no_nas_data,10)
new_first_ten_row

birth_year <- 2002
first_name <- "Yazel"

# Loop through each column
for (col in names(no_nas_data)) {
  
  # Convert factors to characters first
  if (is.factor(no_nas_data[[col]])) {
    no_nas_data[[col]] <- as.character(no_nas_data[[col]])
  }
  
  # For numeric columns, replace NA with birth year
  if (is.numeric(no_nas_data[[col]])) { 
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
    
    # For character columns, replace NA with first name
  } else if (is.character(no_nas_data[[col]])) { 
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  }
}

new_first_ten_row <- head(no_nas_data, 10)
new_first_ten_row

birth_year <- 2002
first_name <- "Yazel"

# Make a copy of the original data frame to avoid altering the original
no_nas_data <- polls_us_election_2016

# Loop through each column in the data frame
for (col in names(no_nas_data)) {
  
  # Convert factor columns to character to prevent coercion issues
  if (is.factor(no_nas_data[[col]])) {
    no_nas_data[[col]] <- as.character(no_nas_data[[col]])
  }
  
  # Check if the column is numeric
  if (is.numeric(no_nas_data[[col]])) {
    # Replace NA values with the birth year
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
    
    # Check if the column is character or already a character (after conversion)
  } else if (is.character(no_nas_data[[col]])) {
    # Replace NA values with the first name
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  }
  # No need for an else statement since we do nothing for other column types
}

# Extract the first 10 rows of the modified data frame
new_first_ten_row <- head(no_nas_data, 10)

# Display the first 10 rows of the modified data frame
new_first_ten_row


birth_year <- 2002
first_name <- "Yazel"
no_nas_data <- polls_us_election_2016

for (col in names(no_nas_data)) { #Check the type of column
  if (is.numeric(no_nas_data[[col]])) { #If it is a numeric column, replace the NA with the birth year
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), birth_year, no_nas_data[[col]])
  } else if (is.character(no_nas_data[[col]]) || is.factor(no_nas_data[[col]])) { #If it is a character or factor column, replace the NAs with first name.
    no_nas_data[[col]] <- ifelse(is.na(no_nas_data[[col]]), first_name, no_nas_data[[col]])
  } else {#In other cases,do nothing.
    next
  }
}
new_first_ten_row <- head(no_nas_data,10)
new_first_ten_row