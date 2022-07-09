---
  title: "BellabeatPDF"
author: "Oppy"
date: "`r Sys.Date()`"
output: pdf_document
---
  
  ## __Google Data Analytics Professional Certificate Capstone project. Case Study - Bellabeat__
  
  ### __Background__
  
  The [Google Data Analytics Professional certificate](https://www.coursera.org/professional-certificates/google-data-analytics#courses)is a professional Certificate offered by coursera. It is an introductory certificate aimed at delivering foundation skills to persons who are willing to start or pursue a career in data analytics. This certificate is broken into eight courses. Though optional there is a [Capstone project](https://www.coursera.org/learn/google-data-analytics-capstone?specialization=google-data-analytics) which makeup one of the eight courses. The Capstone is expected to test ones newly learned skill while experimenting using a real world data related scenario. This particular case study is on a company, bellabeat. 
                                                       Bellabeat, is a high-tech manufacturer of health-focused products for women, the company was established in 2013. The co-founder and Chief Creative Officer, Urška Sršen is confident that an analysis of non-Bellebeat consumer data (ie. FitBit fitness tracker usage data) would reveal more opportunities for growth. In this capstone project we will be analyzing a company's datasets With the aim to achieving;

### __Business Task:__
Analyze FitBit fitness tracker data to gain insights into how consumers are using the FitBit app's and discover trends for Bellabeat marketing strategy.
                                                       
                                                       ### __Business Objectives:__
                                                       What are the trends identified?
                                                         How could these trends apply to Bellabeat customers?
                                                         How could these trends help influence Bellabeat marketing strategy?
                                                         
                                                         ### __Deliverables:__
                                                         A clear summary of the business task
                                                       A description of all data sources used
                                                       Documentation of any cleaning or manipulation of data
                                                       A summary of analysis
                                                       Supporting visualizations and key findings
                                                       High-level content recommendations based on the analysis
                                                       
                                                       #### _Notable Stakeholders:_
                                                       Urška Sršen: Bellabeat’s cofounder and Chief Creative Officer
                                                       Sando Mur: Mathematician, Bellabeat’s cofounder and key member of the Bellabeat executive team
                                                       Bellabeat marketing analytics team: A team of data analysts guiding Bellabeat’s marketing strategy.
                                                       
                                                       
                                                       ### __Work Breakdown Structure (WBS) of the capstone project__ - Bellabeat
                                                       The WBS process is largely categorized into the six steps of data analytics defined by the Google data analytics professional certificate. Ask, Prepare, Process, Analyse, Share & Act. 
                                                       
                                                       ##### __Step One -Ask__
                                                       In this phase of the process relevant questions are asked to define the major parameters of the project. Also, to enable us define subsets of the entire project. This is achievable by doing a quick company review to gain insight into the company's philosophy, policies, goals etc. Hence, the following questions?
                                                         
    A   What is my role/position (i.e., how do I come in?)
    B   What is the aim and objective of the company (what exactly is the company trying to achieve)
    C   What are the company's expectations
                                                       D   Who are the main stack-holders
                                                       
                                                       ##### __Step Two - Prepare__
                                                       In this phase, we will be identifying the resources available for the project. 
                                                       
                                                       A Identify the location of the data
                                                       B Telescope the data (i.e., look through it, a broad overview of the dataset)
                                                       C Apply ROCCC to check for any bias or credibility.
                                                       __Note:__ To do a [Telescope](https://medium.com/@fadare.opeyemi/telescope-your-dataset-220bc380522b) of our data.
                                                       
                                                       ##### __Step Three - Process__
                                                       Here we will set up our working tools and work environments to enable us process our data to suit the project targets.
                                                       
                                                       A Explore data for further observations
                                                       B Check for missing values and outliers
                                                       C Wrangle data further to suit our goal
                                                       
                                                       ##### __Step Four - Analyse__
                                                       Here we do the actual analysis. This process will include but not limited to the following;
                                                       
                                                       A Aggregate our data
                                                       B Organize and re-organize our data
                                                       C Mathematical computations (statistical analysis/summaries)
                                                       D Identify trends and relationships (Employ data viz tools)
                                                       E Summarize the analysis
                                                       __Note:__ Here we will drill down by doing a microscopic view of our data. [Microscope](https://medium.com/@fadare.opeyemi/microscope-your-dataset-look-closer-219a9ad20d7e) the data.
                                                       
                                                       ##### __Step Five - Share__
                                                       
                                                       Here we will communicate our insights to the stakeholders. 
                                                       
                                                       ##### __Step Six - Act__
                                                       
                                                       Take appropriate steps to implement the gained insights. 
                                                       
                                                       
                                                       
                                                       ### __Working with R studio.__
                                                       
                                                       ##### __Load packages.__ 
                                                       Tidyverse is a group of packages that will be used for data cleaning and wrangling in this case. 
                                                       lubricate will be used for any date manipulation and or formatting. 
                                                       Other packages will be installed as required. 
                                                       
                                                       install.packages("tidyverse")   # skip this process if you have previously installed "tidyverse" into R
                                                       install.packages("lubridate")   # skip this process if you have previously installed "lubridate" into R
                                                       
                                                       ##### __Load packages.__ 
                                                       Upon successful installation of the packages into R, we will be calling out the packages into our current R session.
                                                       
                                                       library(tidyverse)
                                                       library(lubridate)
                                                       
                                                       ```{r}
                                                       library(tidyverse)
                                                       library(lubridate)
                                                       ```
                                                       
                                                       #### __Importing datasets__
                                                       ##### daily
                                                       ```{r}
                                                       dailyactivity <- read.csv("dailyActivity_merged.csv")
                                                       
                                                       dailycalories <- read.csv("dailyCalories_merged.csv")
                                                       
                                                       dailyintensities <- read.csv("dailyIntensities_merged.csv")
                                                       
                                                       dailysteps <- read.csv ("dailySteps_merged.csv")
                                                       ```
                                                       
                                                       ##### hourly
                                                       ```{r}
                                                       hourlycalories <- read.csv ("hourlyCalories_merged.csv")
                                                       
                                                       hourlyintensities <- read.csv ("hourlyIntensities_merged.csv")
                                                       
                                                       hourlysteps <- read.csv ("hourlySteps_merged.csv")
                                                       ```
                                                       
                                                       ##### minutes
                                                       ```{r}
                                                       mcaloriesn <- read.csv ("minuteCaloriesNarrow_merged.csv")
                                                       
                                                       mcaloriesw <- read.csv ("minuteCaloriesWide_merged.csv")
                                                       
                                                       mintensitiesn <- read.csv ("minuteIntensitiesNarrow_merged.csv")
                                                       
                                                       mintensitiesw <- read.csv ("minuteIntensitiesWide_merged.csv")
                                                       
                                                       msleep <- read.csv ("minuteSleep_merged.csv")
                                                       
                                                       mstepsn <- read.csv ("minuteStepsNarrow_merged.csv")
                                                       
                                                       mstepsw <- read.csv ("minuteStepsWide_merged.csv")
                                                       ```
                                                       
                                                       ##### others
                                                       ```{r}
                                                       mmetsn <- read.csv ("minuteMETsNarrow_merged.csv")
                                                       
                                                       secheartrate <- read.csv ("heartrate_seconds_merged.csv")
                                                       
                                                       sleepday <- read.csv ("sleepDay_merged.csv")
                                                       
                                                       weightinfo <- read.csv ("weightLogInfo_merged.csv")
                                                       ```
                                                       
                                                       
                                                       #### __Looking through your dataset__
                                                       daily activity
                                                       ```{r}
                                                       dailyactivity <- read.csv("dailyActivity_merged.csv")
                                                       
                                                       dim(dailyactivity)
                                                       class(dailyactivity)
                                                       colnames(dailyactivity)
                                                       head(dailyactivity)
                                                       tail(dailyactivity)
                                                       glimpse(dailyactivity)
                                                       str(dailyactivity)
                                                       view(dailyactivity) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       daily calories
                                                       ```{r}
                                                       dailycalories <- read.csv("dailyCalories_merged.csv")
                                                       
                                                       dim(dailycalories)
                                                       class(dailycalories)
                                                       colnames(dailycalories)
                                                       head(dailycalories)
                                                       tail(dailycalories)
                                                       glimpse(dailycalories)
                                                       str(dailycalories)
                                                       view(dailycalories) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       dailyintensities
                                                       ```{r}
                                                       dailyintensities <- read.csv("dailyIntensities_merged.csv")
                                                       
                                                       dim(dailyintensities)
                                                       class(dailyintensities)
                                                       colnames(dailyintensities)
                                                       head(dailyintensities)
                                                       tail(dailyintensities)
                                                       glimpse(dailyintensities)
                                                       str(dailyintensities)
                                                       view(dailyintensities) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       dailysteps
                                                       ```{r}
                                                       dailysteps <- read.csv ("dailySteps_merged.csv")
                                                       
                                                       dim(dailysteps)
                                                       class(dailysteps)
                                                       colnames(dailysteps)
                                                       head(dailysteps)
                                                       tail(dailysteps)
                                                       glimpse(dailysteps)
                                                       str(dailysteps)
                                                       view(dailysteps) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       hourlycalories
                                                       ```{r}
                                                       hourlycalories <- read.csv ("hourlyCalories_merged.csv")
                                                       
                                                       dim(hourlycalories)
                                                       class(hourlycalories)
                                                       colnames(hourlycalories)
                                                       head(hourlycalories)
                                                       tail(hourlycalories)
                                                       glimpse(hourlycalories)
                                                       str(hourlycalories)
                                                       view(hourlycalories) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       hourlyintensities
                                                       ```{r}
                                                       hourlyintensities <- read.csv ("hourlyIntensities_merged.csv")
                                                       
                                                       dim(hourlyintensities)
                                                       class(hourlyintensities)
                                                       colnames(hourlyintensities)
                                                       head(hourlyintensities)
                                                       tail(hourlyintensities)
                                                       glimpse(hourlyintensities)
                                                       str(hourlyintensities)
                                                       view(hourlyintensities) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       hourlysteps
                                                       ```{r}
                                                       hourlysteps <- read.csv ("hourlySteps_merged.csv")
                                                       
                                                       dim(hourlysteps)
                                                       class(hourlysteps)
                                                       colnames(hourlysteps)
                                                       head(hourlysteps)
                                                       tail(hourlysteps)
                                                       glimpse(hourlysteps)
                                                       str(hourlysteps)
                                                       view(hourlysteps) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       mcaloriesn
                                                       ```{r}
                                                       mcaloriesn <- read.csv ("minuteCaloriesNarrow_merged.csv")
                                                       
                                                       dim(mcaloriesn)
                                                       class(mcaloriesn)
                                                       colnames(mcaloriesn)
                                                       head(mcaloriesn)
                                                       tail(mcaloriesn)
                                                       glimpse(mcaloriesn)
                                                       str(mcaloriesn)
                                                       view(mcaloriesn) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       mcaloriesw
                                                       ```{r}
                                                       mcaloriesw <- read.csv ("minuteCaloriesWide_merged.csv")
                                                       
                                                       dim(mcaloriesw)
                                                       class(mcaloriesw)
                                                       colnames(mcaloriesw)
                                                       head(mcaloriesw)
                                                       tail(mcaloriesw)
                                                       glimpse(mcaloriesw)
                                                       str(mcaloriesw)
                                                       view(mcaloriesw) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       mintensitiesn
                                                       ```{r}
                                                       mintensitiesn <- read.csv ("minuteIntensitiesNarrow_merged.csv")
                                                       
                                                       dim(mintensitiesn)
                                                       class(mintensitiesn)
                                                       colnames(mintensitiesn)
                                                       head(mintensitiesn)
                                                       tail(mintensitiesn)
                                                       glimpse(mintensitiesn)
                                                       str(mintensitiesn)
                                                       view(mintensitiesn) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       mintensitiesw
                                                       ```{r}
                                                       mintensitiesw <- read.csv ("minuteIntensitiesWide_merged.csv")
                                                       
                                                       dim(mintensitiesw)
                                                       class(mintensitiesw)
                                                       colnames(mintensitiesw)
                                                       head(mintensitiesw)
                                                       tail(mintensitiesw)
                                                       glimpse(mintensitiesw)
                                                       str(mintensitiesw)
                                                       view(mintensitiesw) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       msleep
                                                       ```{r}
                                                       msleep <- read.csv ("minuteSleep_merged.csv")
                                                       
                                                       dim(msleep)
                                                       class(msleep)
                                                       colnames(msleep)
                                                       head(msleep)
                                                       tail(msleep)
                                                       glimpse(msleep)
                                                       str(msleep)
                                                       view(msleep) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       mstepsn
                                                       ```{r}
                                                       mstepsn <- read.csv ("minuteStepsNarrow_merged.csv")
                                                       
                                                       dim(mstepsn)
                                                       class(mstepsn)
                                                       colnames(mstepsn)
                                                       head(mstepsn)
                                                       tail(mstepsn)
                                                       glimpse(mstepsn)
                                                       str(mstepsn)
                                                       view(mstepsn) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       mstepsw
                                                       ```{r}
                                                       mstepsw <- read.csv ("minuteStepsWide_merged.csv")
                                                       
                                                       dim(mstepsw)
                                                       class(mstepsw)
                                                       colnames(mstepsw)
                                                       head(mstepsw)
                                                       tail(mstepsw)
                                                       glimpse(mstepsw)
                                                       str(mstepsw)
                                                       view(mstepsw) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       mmetsn
                                                       ```{r}
                                                       mmetsn <- read.csv ("minuteMETsNarrow_merged.csv")
                                                       
                                                       dim(mmetsn)
                                                       class(mmetsn)
                                                       colnames(mmetsn)
                                                       head(mmetsn)
                                                       tail(mmetsn)
                                                       glimpse(mmetsn)
                                                       str(mmetsn)
                                                       view(mmetsn) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       secheartrate
                                                       ```{r}
                                                       secheartrate <- read.csv ("heartrate_seconds_merged.csv")
                                                       
                                                       dim(secheartrate)
                                                       class(secheartrate)
                                                       colnames(secheartrate)
                                                       head(secheartrate)
                                                       tail(secheartrate)
                                                       glimpse(secheartrate)
                                                       str(secheartrate) 
                                                       view(secheartrate) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       sleepday
                                                       ```{r}
                                                       sleepday <- read.csv ("sleepDay_merged.csv")
                                                       
                                                       dim(sleepday)
                                                       class(sleepday)
                                                       colnames(sleepday)
                                                       head(sleepday)
                                                       tail(sleepday)
                                                       glimpse(sleepday)
                                                       str(sleepday)
                                                       view(sleepday) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       weightinfo
                                                       ```{r}
                                                       weightinfo <- read.csv ("weightLogInfo_merged.csv")
                                                       
                                                       dim(weightinfo)
                                                       class(weightinfo)
                                                       colnames(weightinfo)
                                                       head(weightinfo)
                                                       tail(weightinfo)
                                                       glimpse(weightinfo)
                                                       str(weightinfo)
                                                       view(weightinfo) # not rendered in the rmd file but gives a tabular view of data.frame in rstudio.
                                                       ```
                                                       
                                                       
                                                       #### __Data Validation__
                                                       
                                                       #### checking for duplicates in the dailyactivity data.frame
                                                       ```{r}
                                                       dailyactivity %>%         
                                                         distinct(Id) # Check for the unique number of participants by Id
                                                       ```
                                                       ##### _Inference: There are 33 unique participants in the dailyactivity dataset. Meaning an additional three to the original thirty._
                                                       
                                                       
                                                       ```{r}
                                                       duplicated(dailyactivity) # check all data points for any duplicates.
                                                       
                                                       sum(duplicated(dailyactivity)) # check and sum the number of duplicates
                                                       
                                                       dailyactivity[ duplicated(dailyactivity), ]
                                                       
                                                       dailyactivity[ , duplicated(dailyactivity) ]
                                                       
                                                       dailyactivity[ !duplicated(dailyactivity), ]
                                                       ```
                                                       ##### _Inference: There are no duplicated ID's. Meaning there were exactly 33 unique participants_
                                                       
                                                       #### Total num of participants - daily activity
                                                       ```{r}
                                                       dailyactivity %>%
                                                         summarise(n_distinct(dailyactivity$Id))
                                                       ```
                                                       
                                                       #### Total num of participants - dailycalories dataset
                                                       ```{r}
                                                       dailycalories %>%
                                                         summarise(n_distinct(dailycalories$Id))
                                                       ```
                                                       ##### _Inference: There are 33 unique participants in the dailycalories dataset. Meaning an additional three to the original thirty._
                                                       
                                                       #### duplicated daily calories 
                                                       ```{r}
                                                       sum(duplicated(dailycalories)) # checking for duplicates
                                                       ```
                                                       ##### _Inference: There are no duplicated ID's. Meaning there were exactly 33 unique participants_
                                                       
                                                       
                                                       #### Total num of participants - daily intensities
                                                       ```{r}
                                                       dailyintensities %>%
                                                         summarise(n_distinct(dailyintensities$Id))
                                                       ```
                                                       ##### _Inference: There are 33 unique participants in the dailyintensities dataset. Meaning an additional three to the original thirty._
                                                       
                                                       #### duplicated daily intensities
                                                       ```{r}
                                                       sum(duplicated(dailyintensities)) # checking for duplicates
                                                       ```
                                                       ##### _Inference: There are no duplicated ID's. Meaning there were exactly 33 unique participants_
                                                       
                                                       #### Total num of participants - daily steps
                                                       ```{r}
                                                       dailysteps %>%
                                                         summarise(n_distinct(dailysteps$Id))
                                                       ```
                                                       ##### _Inference: There are 33 unique participants in the dailysteps dataset. Meaning an additional three to the original thirty._
                                                       
                                                       
                                                       #### Duplicated daily steps
                                                       ```{r}
                                                       sum(duplicated(dailysteps)) # checking for duplicates
                                                       ```
                                                       ##### _Inference: There are no duplicated ID's. Meaning there were exactly 33 unique participants_
                                                       
                                                       
                                                       #### Total num of participants - weight
                                                       ```{r}
                                                       weightinfo %>%
                                                         summarise(n_distinct(weightinfo$Id))
                                                       ```
                                                       ##### _Inference: The sample size is too small to draw any meaningful insight and recommendations. Therefore, we will not be working with this (weightinfo) dataset._
                                                       
                                                       
                                                       #### Total num of participants - heartrate
                                                       ```{r}
                                                       secheartrate %>%
                                                         summarise(n_distinct(secheartrate$Id))
                                                       ```
                                                       ##### _Inference: The sample size is too small to draw any meaningful insight and recommendations. Therefore, we will not be working with this (secheartrate) dataset._
                                                       
                                                       
                                                       #### Total num of participants - sleep day
                                                       ```{r}
                                                       sleepday %>%
                                                         summarise(n_distinct(sleepday$Id))
                                                       ```
                                                       ##### _Inference: There are 24 unique participants in the sleepday dataset. Meaning nine participants lesser than the other datasets._
                                                       ##### _Action: To even up the number of participants, we will ultilize the "outer_join" function_
                                                       ```{r}
                                                       sleepday_outer_join <- merge(sleepday, dailyactivity, by="Id", all = TRUE)
                                                       ```
                                                       
                                                       #### Recheck Total num of participants - sleepday_outer_join
                                                       ```{r}
                                                       n_distinct(sleepday_outer_join$Id)
                                                       ```
                                                       ##### _Inference: There are 33 unique participants in the dailysteps dataset. Meaning an additional three to the original thirty._
                                                       
                                                       ###### A good idea will be to save the newly formed dataset sleepday_outer_join
                                                       write.csv(sleepday_outer_join, "sleepday_outer_join.csv")
                                                       
                                                       
                                                       
                                                       ### __Data Wrangling And Manipulation__
                                                       #### A few datasets have shown they have similar columns, we will therefore be merging them. The "merge" function will be ultilized.
                                                       
                                                       #### Combine dailyactivity dataset And dailyintensities dataset
                                                       ##### Rename ActivityDate == ActivityDay in dailyactivity
                                                       ```{r}
                                                       dailyactivity1 <- dailyactivity %>%   
                                                         select(Id, ActivityDate, TotalSteps, TotalDistance, TrackerDistance, LoggedActivitiesDistance, Calories) %>% 
                                                         rename(ActivityDay = ActivityDate)
                                                       
                                                       colnames(dailyactivity1)
                                                       ```
                                                       
                                                       
                                                       #### Now combine dailyactivity1 + dailyintensities
                                                       ```{r}
                                                       dailyactivity2 <- merge(x=dailyactivity1, y=dailyintensities, by=c("Id", "ActivityDay"))
                                                       View(dailyactivity2)
                                                       ```
                                                       
                                                       ###### Good idea will be to saved the newly merged dataset dailyactivity2
                                                       write.csv(dailyactivity2, "dailyactivity2.csv")
                                                       
                                                       ##### Now combine hourlycalories dataset And hourlyintensities dataset And hourlysteps dataset 
                                                       ###### _The merge function can only merge two datasets at a time so_
                                                       #### Firstly, we merge hourlycalories + hourlyintensities
                                                       ```{r}
                                                       hourlycombined1 <- merge(x=hourlycalories, y=hourlyintensities, by=c("Id", "ActivityHour"))
                                                       ```
                                                       
                                                       ##### Now combine hourlycombined1 + hourlysteps
                                                       ```{r}
                                                       hourlycombined2 <- merge(x=hourlycombined1, y=hourlysteps, by=c("Id", "ActivityHour"))
                                                       ```
                                                       
                                                       ###### A good idea will be to save the newly merged d.f hourlycombined2
                                                       write.csv(hourlycombined2, "hourlycombined2.csv")
                                                       
                                                       ##### Now we will combine all min d.f's
                                                       ##### Firstly, combine mmetsn + mstepsn
                                                       ```{r}
                                                       mincombined <- merge(x=mmetsn, y=mstepsn, by=c("Id", "ActivityMinute"))
                                                       ```
                                                       
                                                       ##### Secondly, combine mintensitiesn + mcaloriesn
                                                       ```{r}
                                                       mincombined1 <- merge(x=mintensitiesn, y=mcaloriesn, by=c("Id", "ActivityMinute"))
                                                       ```
                                                       
                                                       ##### Finally, combine mincombined + mincombined1
                                                       ```{r}
                                                       mincombined2 <- merge(x=mincombined, y=mincombined1, by=c("Id", "ActivityMinute"))
                                                       ```
                                                       
                                                       ###### A good idea will be to save the newly merged d.f hourlycombined2 
                                                       write.csv(mincombined2, "mincombined2.csv")
                                                       
                                                       ##### _The ActivityHour variable is stored as "chr" character which is the wrong format as this is a date&time variable. 
                                                       #### First, we need to convert this to a date$time format._
                                                       ##### _Functions in the lubridate package will be ultilized to achieve this._
                                                       
                                                       #### dailycombined2
                                                       ```{r}
                                                       dailyactivity2$ActivityDay=as.POSIXct(dailyactivity2$ActivityDay, format = "%m/%d/%Y", tz=Sys.timezone())
                                                       dailyactivity2$Date <- format (dailyactivity2$ActivityDay, format = "%m/%d/%Y")
                                                       
                                                       dailyactivity2$ActivityDay = as.Date(dailyactivity2$ActivityDay, format = "%m/%d/%Y", tz=Sys.timezone())
                                                       dailyactivity2$Date =as.Date (dailyactivity2$Date, format = "%m/%d/%Y")
                                                       
                                                       class(dailyactivity2$ActivityDay)
                                                       
                                                       str(dailyactivity2$ActivityDay)
                                                       
                                                       glimpse(dailyactivity2$ActivityDay)
                                                       ```
                                                       
                                                       #### hourlycombined
                                                       ```{r}
                                                       hourlycombined2$ActivityHour=as.POSIXct(hourlycombined2$ActivityHour, format = "%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
                                                       hourlycombined2$Date <- format (hourlycombined2$ActivityHour, format = "%m/%d/%Y %I:%M:%S %p")
                                                       
                                                       hourlycombined2$ActivityHour = as.Date(hourlycombined2$ActivityHour, format = "%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
                                                       hourlycombined2$Date = as.Date(hourlycombined2$Date, format = "%m/%d/%Y %I:%M:%S %p")
                                                       
                                                       class(hourlycombined2$ActivityHour)
                                                       
                                                       glimpse(hourlycombined2$ActivityHour)
                                                       ```
                                                       
                                                       #### sleepday_outer_join
                                                       
                                                       View(sleepday_outer_join)
                                                       ```{r}
                                                       sleepday_outer_join$SleepDay = as.POSIXct(sleepday_outer_join$SleepDay, format = "%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
                                                       sleepday_outer_join$SleepDay <- format (sleepday_outer_join$SleepDay, format = "%m/%d/%Y %I:%M:%S %p")
                                                       
                                                       sleepday_outer_join$SleepDay = as.Date (sleepday_outer_join$SleepDay, format = "%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
                                                       sleepday_outer_join$SleepDay = as.Date (sleepday_outer_join$SleepDay, format = "%m/%d/%Y %I:%M:%S %p")
                                                       
                                                       class(sleepday_outer_join$SleepDay)
                                                       
                                                       glimpse(sleepday_outer_join$SleepDay)
                                                       ```
                                                       
                                                       #### secheartrate
                                                       ```{r}
                                                       secheartrate$Time = as.POSIXct(secheartrate$Time, format = "%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
                                                       secheartrate$Date <- format (secheartrate$Time, format = "%m/%d/%Y %I:%M:%S %p")
                                                       
                                                       secheartrate$Time = as.Date (secheartrate$Time, format = "%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
                                                       secheartrate$Date = as.Date (secheartrate$Date, format = "%m/%d/%Y %I:%M:%S %p")
                                                       
                                                       class(secheartrate$Time)
                                                       
                                                       glimpse(secheartrate$Time)
                                                       ```
                                                       
                                                       
                                                       ### __Statistical summary__
                                                       #### Statistical summary of TotalSteps, TotalDistance & Calories (dataset: dailyactivity2)
                                                       ```{r}
                                                       dailyactivity2 %>%  
                                                         select(TotalSteps, TotalDistance, Calories) %>% 
                                                         summary
                                                       ```
                                                       ##### _Inference: The Average total steps per day (which is 7638) is lower than the CDC recommendation. 8,000 steps per day is the recommended steps per day by the CDC and this has been associated with a 50% lower risk for all-cause mortality. And taking 12,000 steps per day was associated with a 60% lower risk compared with taking 5,000 or lesser steps. Consequently, the amount of calories burned daily is also, lower than the recommended._
                                                       
                                                       #### Statistical summary of VeryActiveDistance ModeratelyActiveDistance LightActiveDistance SedentaryActiveDistance (dataset: dailyactivity2)
                                                       ```{r}
                                                       dailyactivity2 %>%  
                                                         select(VeryActiveDistance, ModeratelyActiveDistance, LightActiveDistance, SedentaryActiveDistance) %>% 
                                                         summary
                                                       ```
                                                       
                                                       #### Statistical summary of VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes (dataset: dailyactivity2)
                                                       ```{r}
                                                       dailyactivity2 %>%  
                                                         select(VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes) %>% 
                                                         summary()
                                                       ```
                                                       ##### _Inference: Of all the different categories of activity minutes, sedentary minutes has the highest average. This suggests to us that the Fitbit users spend more time doing nothing. (i.e., not working out or using their devices.)_
                                                       
                                                       #### Statistical summary of Calories, TotalIntensity, AverageIntensity, StepTotal (dataset: hourlycombined2)
                                                       ```{r}
                                                       hourlycombined2 %>% 
                                                         select(Calories, TotalIntensity, AverageIntensity, StepTotal) %>% 
                                                         summary()
                                                       ```
                                                       
                                                       ##### _Inference: An average of 3,500 steps per hour is the recommended steps/hour. Fitbit users have an average of 320 steps per hour which is very low and suggest the users aren't walking enough in every hour. Consequently, users burn reduced amount of calories hourly. This further suggest that most fitbit users have a sedentary lifestyle._
                                                       
                                                       #### Statistical summary of TotalTimeInBed, TotalMinutesAsleep (dataset: sleepday_outer_join)
                                                       ```{r}
                                                       sleepday_outer_join %>% 
                                                         select(TotalTimeInBed, TotalMinutesAsleep) %>% 
                                                         summary()
                                                       ```
                                                       ##### _Inference: The users spend more time in bed than they are actually asleep. This suggest to us that users are awake during bed time. Users may be working night shift, they may be students who need to stay awake at night to read._  
                                                       
                                                       
                                                       ### __visualization (ggplot2)__
                                                       #### dailyactivity2
                                                       ```{r}
                                                       ggplot(data = dailyactivity2, 
                                                              mapping = aes(x=TotalSteps, y=Calories))+
                                                         geom_point(colour = "red", alpha=5/10)+
                                                         geom_smooth(method="lm")+
                                                         labs(x="TotalSteps", y="Calories",
                                                              title="Fig 1.0 - Total Steps Vs Calories")
                                                       ```
                                                       
                                                       
                                                       ```{r}
                                                       ggplot(data = dailyactivity2, 
                                                              mapping = aes(x=TotalDistance, y=Calories))+
                                                         geom_point(colour = "green", alpha=5/10)+
                                                         geom_smooth()+
                                                         labs(x="TotalDistance", y="Calories",
                                                              title="Figure 1.1 - TotalDistance Vs Calories")
                                                       ```
                                                       
                                                       
                                                       ```{r}
                                                       ggplot(data = dailyactivity2, 
                                                              mapping = aes(x=TrackerDistance, y=Calories))+
                                                         geom_point(colour = "brown", alpha=5/10)+
                                                         geom_smooth()+
                                                         labs(x="TrackerDistance", y="Calories",
                                                              title="Figure 1.2 - TrackerDistance Vs Calories")
                                                       ```
                                                       ##### _Inference: Examining the three graphs above we can infer that an increase in TrackerDistance, TotalDistance and TotalSteps has almost equal effect on the amount of Calories burnt._
                                                       
                                                       ```{r}
                                                       ggplot(data = dailyactivity2, 
                                                              mapping = aes(x=VeryActiveDistance, y=Calories))+
                                                         geom_point(colour = "darkgreen", alpha=5/10)+
                                                         geom_smooth()+
                                                         labs(x="VeryActiveDistance", y="Calories",
                                                              title="Figure 2.0 - VeryActiveDistance Vs Calories")
                                                       ```
                                                       ##### _Inference: Most participants had very high calories burnt between the start at zero distance up to 4. The number of participants reduced reduced from 4 unward._
                                                       
                                                       ```{r}
                                                       ggplot(data = dailyactivity2, 
                                                              mapping = aes(x=VeryActiveMinutes, y=Calories))+
                                                         geom_point(colour = "darkorange", alpha=5/10)+
                                                         geom_smooth()+
                                                         labs(x="VeryActiveMinutes", y="Calories",
                                                              title="Figure 2.1 - VeryActiveMinutes Vs Calories")
                                                       ```
                                                       ##### _Inference: Examining the two graphs above we can infer that first few initial distance of (0-4) within the first few minutes (20-40 mins) is when most users burn their calories. Also, as the distance and minutes increases, the calories burnt increases but of a lesser population of users._
                                                       
                                                       ```{r}
                                                       dailyactivity2 %>%
                                                         summarise(unique_number_of_days = n_distinct(dailyactivity2$ActivityDay)) # Check total unique number of days
                                                       ```
                                                       
                                                       ```{r}
                                                       dailyactivity2 %>%         
                                                         distinct(ActivityDay) # Check for the unique number of days by Activity Days
                                                       ```
                                                       ##### _Inferance: The survey occured between Tuesday 12th April 2016 To Thursday 12th of May 2019 (Approximately one month)_
                                                       
                                                       ```{r}
                                                       ggplot(data = dailyactivity2, 
                                                              mapping = aes(x=ActivityDay, y=Calories, color=ActivityDay))+
                                                         geom_point(alpha=5/10)+
                                                         geom_smooth()+
                                                         labs(x="ActivityDay", y="Calories",
                                                              title="Figure 3.0 - ActivityDay Vs Calories")
                                                       ```
                                                       
                                                       ##### _Inference: Users don't begin to burn calories immediately. Usser's intensities are concentrated between 1400 To 3500 Calory burn levels._                                          
                                                       
                                                       ##### hourlycombined2
                                                       ```{r}
                                                       ggplot(data = hourlycombined2, 
                                                              mapping = aes(x=ActivityHour, y=StepTotal, fill=Calories))+
                                                         geom_bar(stat="identity")+
                                                         labs(x="ActivityHour", y="StepTotal",
                                                              title="Figure 4.0 - ActivityHour Vs StepTotal")
                                                       ```
                                                       
                                                       ```{r}
                                                       ggplot(data = sleepday_outer_join, 
                                                              mapping = aes(x=TotalTimeInBed, y=TotalMinutesAsleep))+
                                                         geom_point(colour = "chocolate3", alpha=5/10, na.rm =TRUE)+
                                                         geom_smooth(method="lm", na.rm = TRUE, finite = TRUE,)+
                                                         labs(x="TotalTimeInBed", y="TotalMinutesAsleep",
                                                              title="Figure 5.0 - TotalTimeInBed Vs TotalMinutesAsleep")
                                                       ```
                                                       
                                                       ##### _Inference: TotalTimeInBed Vs TotalMinutesAsleep is not perfectly liner therfore, users aren't always asleep when in bed or at bed time._
                                                       ```{r}
                                                       ggplot(data = sleepday_outer_join, 
                                                              mapping = aes(x=SleepDay, y=TotalMinutesAsleep))+
                                                         geom_point(colour = "darkgoldenrod3", alpha=5/10, na.rm = TRUE)+
                                                         geom_smooth(method="lm", na.rm = TRUE, finite = TRUE,)+
                                                         labs(x="SleepDay", y="TotalMinutesAsleep",
                                                              title="Figure 5.0a - SleepDay Vs TotalMinutesAsleep")
                                                       ```
                                                       
                                                       ```{r}
                                                       ggplot(data = sleepday_outer_join, 
                                                              mapping = aes(x=SleepDay, y=TotalTimeInBed))+
                                                         geom_point(colour = "darkmagenta", alpha=5/10, na.rm = TRUE)+
                                                         geom_smooth(method="lm", na.rm = TRUE, finite = TRUE,)+
                                                         labs(x="SleepDay", y="TotalTimeInBed",
                                                              title="Figure 5.0b - SleepDay Vs TotalTimeInBed")
                                                       ```
                                                       
                                                       ### __Conclusion and Recommendation__
                                                       
                                                       Conclusion: The dataset is from a third party. Hence has low data quality and integrity. 
                                                       Recommendation: The company needs to develop a method to generate its own users' data internally, as this will produce high-quality data.



Conclusion: Insufficient amount of total daily steps and calories burnt. 

Recommendation: The company needs to motivate its users to take more daily steps as this will lead to increased calorie burn.



Conclusion: Most users appear to carry out their activity in an indoor setting, e.g., home workout or gym. 

Recommendation: The company needs to target potential customers who are more inclined to outdoor workouts.



Conclusion: Users are in bed but not asleep, as these users may either be working from home, at the office, or students studying overnight. Recommendation: The company needs to mainly target customers who already have a day job or a 9-5. This will enable these users to have ample time to workout in the evening hours of the day and possibly outdoor.



Conclusion: The amount of calories burned is directly proportional to the total daily steps, distance, and tracked distance. In effect, the more steps, the more calories are burned.
Recommendation: The company should encourage users to take more steps daily.



Conclusion: A closer look informs us that most users have intensities after the first 20-40 minutes. 

Recommendation: The company should develop campaigns to keep the user population intensity high after these minutes. (e.g., introduce Fitbit play, a play app where users can listen to or watch their favorite songs or movies respectively, as it suits them)



Conclusion: Though some calories are burned in most of the active hours, they are distortions in the degree of calories burned from high to medium to low. Compare bars to the calories key, 750: High – 500: Medium – 250: Low. In effect, users like to take breaks between their exercises. Going by Figure 4.0.



Recommendation: The company should introduce a burn calorie hourly count so that users can easily count how many calories they burn every hour. This will help them maintain a daily target and exercise until this is met, regardless of whether they have breaks in between.