## CS301 - Final Project Code
# Group Members: Christian Lussier, Dillon Thoma, Nick Tocci, Ben Watto

# Imports the needed libraries:
# Run the below only if the library is already installed.

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

#######################################################
#### Food Production - foodProduction ####
#######################################################

# Import Data

foodProduction <- read.csv("../data/usedData/foodProduction.csv")
years <- colnames(foodProduction[,c(5:62)])
yearData <- foodProduction %>% filter(Country.Name == "United States")
alteredDf <- data.frame(gather(key = Year, value = Value, yearData[,5:62]))
alteredDf$Year <- substring(alteredDf$Year, 2)
alteredDf$Year <- sapply(alteredDf$Year, as.numeric)
ggplot(data = alteredDf, aes(Year, Value)) + 
  geom_point() +
  geom_smooth() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

#######################################################
#### overall salmonella over time - salmonella_CDC ####
#######################################################

# Import Data
salmonellaCounts <- read.csv("../data/usedData/salmonella_CDC.csv")
# Filter by less than 5000 cases to remove outliers
salmonellaCounts <- filter(salmonellaCounts, Cases < 5000)
# Plot by a regression of years to cases to show increase
ggplot(data = salmonellaCounts, aes(Year, Cases)) + 
  geom_point() +
  geom_smooth() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

#######################################################
#### overall illness over time - NORSFoodborneInfo ####
#######################################################

# Import Data
overallIllnessCounts <- read.csv("../data/usedData/NORSFoodborneInfo.csv")
# Plot by regression of years to illnesses to show current decline with a slight 
# increase over the past 3-4 years
ggplot(data = overallIllnessCounts, aes(Year, Illnesses)) + 
  geom_point() +
  geom_smooth() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

####################################################################
#### Breakdown of places - table3a_2016_FoodBorneOutbreaks_data ####
####################################################################

# Import Data
restaurantData <- read.csv("../data/usedData/table3a_2016_FoodBorneOutbreaks_data.csv")
categoryData <- restaurantData[c(1,7,8,9,15,16,21,23), c(1,5)]
bp<- ggplot(categoryData, aes(x="", y=No..Illnesses.., fill=Location)) +
  geom_bar(width = 1, stat = "identity")
pie <- bp + coord_polar("y", start=0)
plot(pie)

#######################################################################
#### Breakdown of etiology - table1_2016_FoodBorneOutbreaks_data####
#######################################################################

# Import Data
foodData <- read.csv("../data/usedData/table3a_2016_FoodBorneOutbreaks_data.csv")

###########################################################################
#### Breakdowon of food category - table2_2016_FoodBorneOutbreaks_data ####
###########################################################################
# Import Data
foodData <- read.csv("../data/usedData/table3a_2016_FoodBorneOutbreaks_data.csv")
