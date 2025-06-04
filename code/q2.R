#Q2 -- How does life expectancy differ between men and women across countries overall, in the 2000-2005 period?

#Firstly, inspect life expectancy of females & males in 2000-2005 overall (worldwide). Use a boxplot
q2_plot_I <- ggplot(data, aes(x=Subgroup, y=Value)) + geom_boxplot() + 
  labs(title="Worldwide Life Expectancy of Females/Males - 2000-2005", x="Subgroup", 
       y="Life Expectancy (yrs)") +
  theme(plot.title=element_text(size=11), axis.title.x=element_text(size=10),
        axis.title.y=element_text(size=10))
q2_plot_I


#Next, investigate countries
q2_data_I <- data %>%
  #filter for years of interest
  filter(Year == "2000-2005") %>%
  group_by(Country_Area, Subgroup) %>%
  ungroup() %>%
  #select columns of interest
  select(Country_Area, Subgroup, Value) %>%
  
  #For each country, want to indicate which Subgroup has the higher Value (age), & by how much
  #first, change shape of data
  pivot_wider(names_from=Subgroup, values_from=Value) %>%
  #indicate when the Female life expectancy is >, <, or = to that of Males; obtain the absolute difference in life expectancy
  mutate(higher_LE = case_when(Female>Male ~ "Female", Male>Female ~ "Male", Female==Male ~ "Equal"), 
         abs_LE_diff = abs(Female-Male)) %>%
  #change shape of data into original structure
  pivot_longer(cols=Female:Male, names_to=c("Subgroup")) %>%
  #rename life expectancy column to original name
  rename(Value=value) %>%
  #reorganize the columns
  select(Country_Area, Subgroup, Value, higher_LE, abs_LE_diff)
q2_data_I
  #390 observations, 5 variables


#Perform some analysis using these 2 new columns
#keep in mind that some results might be duplicated because q2_data_I has 2 rows for each country
q2_data_II <- q2_data_I %>%
  group_by(higher_LE) %>%
  #get # countries in which the life expectancy of 1 'Subgroup' exceeds that of the other; get minimum, mean, maximum
  #difference in life expectancy between 'Subgroup's
  summarize(n = n()/2, min_LE_diff = min(abs_LE_diff), avg_LE_diff = mean(abs_LE_diff), max_LE_diff = max(abs_LE_diff))
q2_data_II
  #3 observations, 5 variables

#Make a bar plot of this data, illustrating how many countries for which Females/Male have a higher life expectancy
q2_plot_II <- ggplot(q2_data_II, aes(x=higher_LE, y=n)) + geom_col() +
  labs(title="# Countries for which Females/Males have a Greater Life Expectancy", 
       x="Subgroup with Higher Life Expectancy", y="# Countries", 
       subtitle="Across 195 Countries During 2000-2005") +
  theme(plot.title=element_text(size=11), axis.title.x=element_text(size=10),
        axis.title.y=element_text(size=10), plot.subtitle=element_text(size=9))
q2_plot_II

#assign the specified variable
subgroup <- "Female"