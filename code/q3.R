#Q3 -- Which countries exhibit the largest disparities in life expectancy between genders, in the 2000-2005 subgroup?
  #Save the top 3 countries with the largest male-female disparities as a variable named disparities.

q3_data <- q2_data_I %>%
  #sort by largest life expectancy difference
  arrange(desc(abs_LE_diff)) %>%
  #retrieve observations with 3 largest difference in life expectancy -- this retrieves 5 countries because some are tied
  slice_max(abs_LE_diff, n=3)
q3_data
  #10 observations, 5 variables

#assign the specified variable
disparities <- c("Russian Federation", "Belarus", "Estonia")

#make a plot
q3_plot_I <- ggplot(data=q3_data, aes(x=Country_Area, y=Value, fill=Subgroup)) + 
  geom_col(position='dodge') + labs(title="Countries w/Greatest Disparity in Life Expectancy per Gender", 
                    x="Country/Area", y="Life Expectancy (yrs)") +
  theme(plot.title=element_text(size=11), axis.title.x=element_text(size=10),
        axis.title.y=element_text(size=10), legend.title=element_text(size=10),
        axis.text.x=element_text(angle=15, size=8), axis.text.y=element_text(size=8)) +
  scale_y_continuous(breaks=seq(0,80,by=10))
q3_plot_I