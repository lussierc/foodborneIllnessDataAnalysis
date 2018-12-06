## CS301 - Final Project Code
# Group Members: Christian Lussier, Dillon Thoma, Nick Tocci, Ben Watto

# Imports the needed libraries:
# Run the below only if the library is already installed.

library(dplyr)
library(tibble)
library(tidyverse)

# --- Import Data From 2016 Foodborne Outbreaks --- #
# - Import Regular Tables From 2016 Foodborne Outbreaks - #

#######################################################
#### Food Production - foodProduction ####
#######################################################

## Import Data
foodProduction <- read.csv("../data/usedData/foodProduction.csv")

## filter by United States as that is the country we are observing
yearData <- foodProduction %>% filter(Country.Name == "United States")

## Create dataframe of years and their values
alteredDf <- data.frame(gather(key = Year, value = Value, yearData[,5:62]))

## Changing the years column from a character string to a number 
## and removing the first x
alteredDf$Year <- substring(alteredDf$Year, 2)
alteredDf$Year <- sapply(alteredDf$Year, as.numeric)

## Plotting a linear regression of dependent values, independent years
ggplot(data = alteredDf, aes(Year, Value)) + 
  geom_point() +
  geom_smooth() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

#######################################################
#### overall salmonella over time - salmonella_CDC ####
#######################################################

## Import Data
salmonellaCounts <- read.csv("../data/usedData/salmonella_CDC.csv")

## Filter by less than 5000 cases to remove outliers
salmonellaCounts <- filter(salmonellaCounts, Cases < 5000)

## Plot by a regression of years to cases to show increase
ggplot(data = salmonellaCounts, aes(Year, Cases)) + 
  geom_point() +
  geom_smooth() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

#######################################################
#### overall illness over time - NORSFoodborneInfo ####
#######################################################

## Import Data
overallIllnessCounts <- read.csv("../data/usedData/NORSFoodborneInfo.csv")

## Plot by regression of years to illnesses to show current decline with a slight 
## increase over the past 3-4 years
ggplot(data = overallIllnessCounts, aes(Year, Illnesses)) + 
  geom_point() +
  geom_smooth() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

####################################################################
#### Breakdown of places - table3a_2016_FoodBorneOutbreaks_data ####
####################################################################

## Import Data
restaurantData <- read.csv("../data/usedData/table3a_2016_FoodBorneOutbreaks_data.csv")
categoryData <- restaurantData[c(1,7,8,9,15,16,21,23), c(1,5)]
bp<- ggplot(categoryData, aes(x="", y=No..Illnesses.., fill=Location)) +
  geom_bar(width = 1, stat = "identity")
pie <- bp + coord_polar("y", start=0)
plot(pie)

#######################################################################
#### Breakdown of etiology - table1_2016_FoodBorneOutbreaks_data####
#######################################################################

## Import Data
etiologyData <- read.csv("../data/usedData/table1_2016_FoodBorneOutbreaks_data.csv")

## Create the data holding frame
etiologyTotals <- data.frame(Type = as.character(), Total = as.numeric())
# column 8 is the illness confirmed + suspected for the category number

# row 1 name for bacterial
# row 19 subtotal for bacterial

bacterialRow <- data.frame(Type = etiologyData[1,1], Total = etiologyData[19,8])
etiologyTotals <- rbind(etiologyTotals, bacterialRow)

# row 20 name for chemical and toxin
# row 25 subtotal for chemical and toxin

chemicalRow <- data.frame(Type = etiologyData[20,1], Total = etiologyData[25,8])
etiologyTotals <- rbind(etiologyTotals, chemicalRow)

# row 26 name for parasitic
# row 30 subtotal for parasitic

parasiticRow <- data.frame(Type = etiologyData[26,1], Total = etiologyData[30,8])
etiologyTotals <- rbind(etiologyTotals, parasiticRow)

# row 31 name for viral
# row 36 subtotal for viral

viralRow <- data.frame(Type = etiologyData[32,1], Total = etiologyData[36,8])
etiologyTotals <- rbind(etiologyTotals, viralRow)

## plot of a histogram for all of these

ggplot(data = etiologyTotals, aes(x = Type, y = Total, fill = Type)) +
  geom_bar(position = "dodge", stat = "identity") + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))

###########################################################################
#### Breakdowon of food category - table2_2016_FoodBorneOutbreaks_data ####
###########################################################################

## Import Data
foodData <- read.csv("../data/usedData/table2_2016_FoodBorneOutbreaks_data.csv")

## Creating storage data frame
foodTotals <- data.frame(Type = as.character(), Total = as.numeric())

aquaticAnimalsTotal <-data.frame(Type = foodData[1,1], Total = foodData[19,8])
etiologyTotals <- rbind(etiologyTotals, bacterialRow)
##############################
#### Food Sales over years####
##############################

# Import Data
foodSales <- read.csv("../data/usedData/foodSales.csv")
ggplot(data = foodSales, aes(Years, Sales)) + 
  geom_point() +
  geom_smooth() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=-0.01))





