# Ndivhuwo Nyase
# Practical 7

# Question 1
library(readxl)
counts <- read_excel("~/Desktop/statistics-computing-R/datasets/counts.xlsx")
head(counts)

# Question 2
Tortoise_data <- read_excel("~/Downloads/Tortoise data.xls")
head(Tortoise_data)

# Question 3
global_cluster_URL <- "https://physics.mcmaster.ca/~harris/GCS_table.txt"
global_cluster <- read.table(global_cluster_URL, sep = ",", header = T)
head(global_cluster)

# Question 4

climatic_index_URL <-'https://psl.noaa.gov/enso/mei/data/meiv2.data'
climatic_index <- read.delim2(climatic_index_URL, sep ='\t', header = T)
head(climatic_index)

# Question 5

voice_URL <- 'http://www.statsci.org/data/general/ooh.txt'
voice_data <- read.table(voice_URL, sep = ",", header = T)
head(voice_data)

# Question 6
airquality_data <- read.csv("~/Desktop/statistics-computing-R/datasets/air2.dat", sep=";")
head(airquality_data)


# Question 7 

Red_cross_feb_aug_1989 <-
  read_excel("~/Desktop/statistics-computing-R/datasets/8.Red-cross-feb-aug-89-starts 20 Feb-1989.xls; filename%2A.xls")

head(Red_cross_feb_aug_1989)