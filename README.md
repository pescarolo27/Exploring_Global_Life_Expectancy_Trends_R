# Exploring Global Life Expectancy Trends (R)

**Background:** Life expectancy can vary significantly over time and across different countries due to numerous factors including advancements in medicine, a country's development level, and the impacts of conflicts. Interestingly, data consistently shows that women tend to live longer than men, raising intriguing questions. Could this be due to biological factors or perhaps because women generally care for their health better?  
The _United Nations_ has established an initiative focused on understanding global health trends. As a data analyst, your latest assignment is to explore and visualize life expectancy data from around the world, specifically focusing on gender differences.

**The Data:** The dataset contains information about life expectancy in various countries or areas broken down by gender and time periods. The data is sourced from the _United Nations Population Division, Gender Statistics, Life Expectancy at Birth_.

This project was done in June, 2025. As an important note, this project is coded for a R environment. Files were attached both for code based in R as well as a project write-up done in Python containing code meant for R. The R files correspond to the three main analysis sections in the Python file (e.g. "q1.R" relates to **Analysis I**). Running the Python notebook will produce errors in the code cells & destroy the results that are currently contained in it.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Brief Summary
This project examined information on life expectancies of people across the globe between 2000-2005. In particular, differences in life expectancies of females & males were evaluated overall & by country. Countries were also assessed depending on how often one gender had a higher life expectancy as well as where the most significant disparities were between genders.  
Before then, the data was examined to look for inconsistencies, particularly missing values, that could inhibit such analyses. Of the 1,560 data points in the dataset, there were no missing data points.

#### Life Expectancy by Gender
Firstly, life expectancies of males & females were evaluated overall during this time period to look for more general differences & trends that may be more indicative of biological or habitual differences between these genders.

Of the 195 countries with data points for both genders during this 2000-2005 period, the typical life expectancy of females & males was around 72 & 66 years respectively. Other statistics in these distributions also corroborate this trend.  
Additional analyses determined for how many countries one gender had a higher usual life expectancy as well as the average difference. 190 countries reported that females typically lived longer than males, whereas only one country reported the opposite. The average discrepancy in life expectancy of these 190 countries was nearly five years.

As such, it is evident that females typically lived longer than males across most of the globe during 2000-2005.

#### Differences in Life Expectancy by Gender, Country
Life expectancies by gender were evaluated further by incorporating specific countries. Such analyses can potentially help identify where living conditions or other circumstances might be the most impactful in regard to peoples' longevity.

Data was retrieved to find the countries in which the disparity in life expectancies between genders was the most significant during the 2000-2005 period. The five countries with the largest differences were the Russian Federation, Belarus, Estonia, Kazakhstan, & Lithuania, all of which saw a discrepancy of 12-14 years. Females typically lived longer than males for all five. Based on the usual life expectancies observed across the globe (reference previous section), females from Kazakhstan were the only group of females, of these five countries, who lived to ages younger than the typical value (72). On the other hand, males of four of these five countries lived to ages less than the typical value (66).  
As such, it appears that when life expectancies differ the most between males & females, males are slightly more affected in that they generally have less longevity than females.

Interestingly, these five countries are all in the region of Eastern Europe & North Asia. In fact, a rough circle or oval could be drawn on a map that encompasses these five countries whilst only including Latvia & part of Ukraine (reference the "an3_map.jpg" file). Obviously, Russia is a very large country in terms of geographical area, but the fact that these five countries are within such a confined location indicates that this general region may be a relevant factor in the observed differences in life expectancy between males & females. Whether these differences are due more to living/environmental conditions or working conditions that are a part of daily life in these countries would require additional research.
