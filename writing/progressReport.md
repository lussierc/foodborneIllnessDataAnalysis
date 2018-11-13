# CS301 Final Project Progress Report
#### Group Members: Nick Tocci, Christian Lussier, Ben Watto, Dillon Thoma
#### 11/9/18

Describe everything you have done so far in your progress report. By this point, you should have conducted necessary research on the background, examined in detail the data set you have selected, decided on the approach you will use to analyze it, and made a significant progress towards implementation. Describe anything new that you have learned so far and any unexpected challenges that you have encountered.

## Progress Report
<!-- Intro -->
Our project looks to analyze trends regarding foodborne illnesses which remain very prevalent in today's society. With this, our project is trying to answer the question, is there a correlation between the production of food and illnesses? Additionally, our project will try to look into data regarding the amount of foodborne illnesses today versus these same illnesses in the past in an attempt to see if there are differences between the two and if these illnesses are handled better today. In order to answer these questions, our group has taken a variety of steps in the last two weeks to make great progress on our project. We first researched background information about our topic to learn more about it and then found data that will be useful in our research. We have begun to heavily analyze this data using R programming concepts in order to view the data in different ways. Utilizing these different views of our data that coding in RStudio can provide us, we have begun to analyze our data in order to answer our research questions. We have made significant progress on our final project by completing background research on the topic, choosing and examining our main data set, and implementing code that will allow us to better understand this data set.

<!-- Paragraph about how we have conducted necessary research on the background -->
We have completed quite a bit of research on our project's background at this point in the research process. Foodborne illnesses are, quite simply, illnesses that are caused by food products in some capacity. According to Fein, Sara B., C-T Jordan Lin, and Alan S. Levy, "consumers play an essential role in foodborne illness prevention." This is because they handle food they prepare themselves and decide if they should eat food that could cause foodborne illnesses, like raw meat (Fein, Sara B., C-T Jordan Lin, and Alan S. Levy). Though this can help prevent foodborne illnesses it can also cause them. Most people are not professional chefs and as a result they may prepare food in a way that is more likely to cause foodborne illnesses. Additionally, consumers obviously choose whether or not to eat something, so they are essentially choosing if they want to increase their risk of catching a foodborne disease. This may be why foodborne illnesses are very common in today's society. Foodborne illnesses are very widespread, causing around 48 million cases of foodborne illnesses in the United States each year, which is equivalent to sickening 1 in 6 Americans (FDA). Moreover, there are an estimated 128,000 hospitalizations and 3,000 deaths annually from foodborne illnesses in the United States, despite it having one of the safest foods supplies in the world (FDA). Additionally, 800 foodborne disease outbreaks are reported in the United States each year (Dewey-Mattia, Daniel, et al.).

<!-- Additional paragraph about how we have conducted necessary research on the background -->
Foodborne illness outbreaks are the result of failures in the food system either to control known hazards or to anticipate novel hazards. A tool known as the RCA, which stands for the root cause analysis, is a systematic, analytical approach to identify the underlying reasons why an outbreak occurred. The ultimate goal of RCA is to uncover the systemic weaknesses in the food system that permitted its breakdown so the system can be redesigned in a way that prevents recurrence (Firestone, Hoelzer, Hedberg, Conroy, Guzewich). These types of studies are used to determine the cause of the outbreaks, and create some awareness among consumers to help prevent the same type of outbreaks from happening in the future. With the amount of foodborne illnesses that occur annually in the United States and globally, it is obvious there is still more work to be done in order to prevent these outbreaks from occurring, or at least cause them to do less damage. An additional goal of our research is to see if our data provides any conclusions as to why foodborne illnesses are still so prominent in the United States, and potentially find a way to anticipate and prevent these outbreaks from occurring.

<!-- P for What we have found from the data so far. -->


<!-- P for How we found the data, converted it, approach we have decided upon to analyze it -->
We found the data that will be used in our analysis from a variety of sources. We found what is currently our main data set by doing research in online search engines for information about foodborne diseases and their widespread impact. However, this data came in PDF format which meant we had to convert it to a CSV format in order to use it in RStudio, something we did by using zamzar.com, an online file converter. We also had to clean up the data after the fact due to unnecessary changes that occurred during the conversion. Additionally, after reviewing the feedback from our proposal, we decided to follow up with the idea of researching data on recent e coli outbreaks, and compare them to the data we found from past outbreaks to see whether there was an increase or decrease in outbreaks over time, as well as how well they are handled based on hospitalizations and deaths.

<!-- P for How we have made significant progress towards implementation. -->


<!-- P for New things we have learned and unexpected challenges we have faced. -->
As a group, we have learned a variety of new things and we have also faced a variety of unexpected challTools suchenges while working on this project. One of these challenges came when we attempted to convert a PDF version of a data set to a CSV format so it could be used in R. As mentioned previously, we used an online converter (zamzar.com) in order to convert this PDF to a CSV file. The conversion was successful but all of the regular  text still appeared in the document, some column names got combined or spread across lines, and -'s were converted to special characters. This meant that converting our PDF data to a CSV format proved to be challenging because we had to manually edit the CSV document in order to have all of the data be properly organized and correct. This took the group a few hours to complete due to the somewhat large nature of the dataset and because of the large number of issues in it that stemmed from it's conversion to a CSV file.

<!-- Conclusion -->

## References
Dewey-Mattia, Daniel, et al. "Surveillance for Foodborne Disease Outbreaks—United States, 2009–2015." MMWR Surveillance Summaries 67.10 (2018): 1.

FDA. "Foodborne Illnesses: What You Need to Know." (2018): 1.

Fein, Sara B., C-T. Jordan Lin, and Alan S. Levy. "Foodborne illness: Perceptions, experience, and preventive behaviors in the United States." Journal of Food Protection 58.12 (1995): 1405-1411.

Firestone, Hoelzer, Hedberg, Conroy, Guzewich. "Leveraging Current Opportunities to Communicate Lessons Learned from Root Cause Analysis to Prevent Foodborne Illness Outbreaks." 38.2 (2018): 134-138

Scallan, Elaine, et al. "Foodborne illness acquired in the United States—major pathogens." Emerging infectious diseases 17.1 (2011): 7.

Current Main Data Set: https://www.cdc.gov/fdoss/pdf/2016_FoodBorneOutbreaks_508.pdf

Additional Data: https://www.cdc.gov/ecoli/2018/o157h7-04-18/index.html , https://www.cdc.gov/ecoli/outbreaks.html
