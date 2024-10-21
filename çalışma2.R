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