## CS301 - Final Project Code
# Group Members: Christian Lussier, Dillon Thoma, Nick Tocci, Ben Watto

# Imports the needed libraries:
# Run the below only if the library is not already installed.

library(dplyr)
library(tibble)
library(tidyverse)

# --- Import Data From 2016 Foodborne Outbreaks --- #
# - Import Regular Tables From 2016 Foodborne Outbreaks - #

table1_2016_FoodBorneOutbreaks <- read.csv("../data/usedData/table1_2016_FoodBorneOutbreaks_data.csv")

table2a_2016_FoodBorneOutbreaks <- read.csv("../data/usedData/table2_2016_FoodBorneOutbreaks_data.csv")
View(table2a_2016_FoodBorneOutbreaks) # Shows the data for the object

table2b_2016_FoodBorneOutbreaks <- read.csv("../data/usedData/table2b_2016_FoodBorneOutbreaks_data.csv")

table3a_2016_FoodBorneOutbreaks <- read.csv("../data/usedData/table3a_2016_FoodBorneOutbreaks_data.csv")

table3b_2016_FoodBorneOutbreaks <- read.csv("../data/usedData/table3b_2016_FoodBorneOutbreaks_data.csv")

table3c_2016_FoodBorneOutbreaks <- read.csv("../data/usedData/table3c_2016_FoodBorneOutbreaks_data.csv")

table4_2016_FoodBorneOutbreaks <- read.csv("../data/usedData/table4_2016_FoodBorneOutbreaks_data.csv")

# - Import Appendix Tables From 2016 Foodborne Outbreaks - #
appTable1_2016_FoodBorneOutbreaks_data <- read.csv("../data/usedData/appTable1_2016_FoodBorneOutbreaks_data.csv", header=FALSE)

appTable2_2016_FoodBorneOutbreaks_data <- read.csv("../data/usedData/appTable2_2016_FoodBorneOutbreaks_data.csv", header=FALSE)

appTable3_2016_FoodBorneOutbreaks_data <- read.csv("../data/usedData/appTable3_2016_FoodBorneOutbreaks_data.csv", header=FALSE)

appTable4_2016_FoodBorneOutbreaks_data <- read.csv("../data/usedData/appTable4_2016_FoodBorneOutbreaks_data.csv", header=FALSE)

appTable5_2016_FoodBorneOutbreaks_data <- read.csv("../data/usedData/appTable5_2016_FoodBorneOutbreaks_data.csv", header=FALSE)

appTable6_2016_FoodBorneOutbreaks_data <- read.csv("../data/usedData/appTable6_2016_FoodBorneOutbreaks_data.csv", header=FALSE)


NORS_foodborne <- read.csv("../data/usedData/NORSFoodborneInfo.csv", header=TRUE)
View(NORS_foodborne)

food_production_indicator_data <- read.csv("../data/usedData/API_AG.PRD.FOOD.XD_DS2_en_csv_v2_10231267.csv", header=TRUE)
View(food_production_indicator_data)


# --- End Data Imports --- #


# ----- PLOTTING -----:
# BY ETIOLOGY: 
# Plots scatterplot that compares the outbreaks by confirmed etiology and suspected etiology. 
ggplot(data = table1_2016_FoodBorneOutbreaks,aes(No..Outbreaks.CE, SE)) + 
  geom_point(aes(color = Etiology), position = "dodge", stat = "identity") + 
  geom_smooth() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

# Plots bar graph that shows the numbers of confirmed outbreaks by etiology.
ggplot(data = table1_2016_FoodBorneOutbreaks) + geom_bar(mapping = aes(x = Etiology, y = No..Outbreaks.CE), position = "dodge", stat = "identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

# Plots bar graph that shows the numbers of confirmed illnesses by etiology.
ggplot(data = table1_2016_FoodBorneOutbreaks) + geom_bar(mapping = aes(x = Etiology, y = No..Illnesses.CE), position = "dodge", stat = "identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

# Plots bar graph that shows the numbers of confirmed hospitalizations by etiology.
ggplot(data = table1_2016_FoodBorneOutbreaks) + geom_bar(mapping = aes(x = Etiology, y = No..Hospitalizations.CE), position = "dodge", stat = "identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

# Plots bar graph that shows the numbers of outbreaks by food type.
ggplot(data = table2a_2016_FoodBorneOutbreaks) + geom_histogram(mapping = aes(x = Food.Category., y = No..Outbreaks.Total), position = "dodge", stat = "identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

# Plots bar graph that shows the numbers of illnesses by food type.
ggplot(data = table2a_2016_FoodBorneOutbreaks) + geom_histogram(mapping = aes(x = Food.Category., y = No..Illnesses.Total), position = "dodge", stat = "identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))



# overall ecoli over time
# overall illness over time
# Breakdown of places
# Breakdown of etiology
# Breakdowon of food category


