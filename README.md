# Colorado's Housing Cost Growth Quickly Outpacing Liveability

<p align='center'>
<img height='300' width'550' alt='THS table' src='https://media.consumeraffairs.com/files/cache/news/Home_prices_concept_with_money_stacks_nopparit_Getty_Images_large.jpg'>
</p>

## Purpose of Project
Anyone who has grown up in or moved to Colorado in the last two decades has experienced the wave of people moving from all over the country to settle in the Centennial State. To this day the state continues to scramble to respond to the inevitable impacts of a rapidly growing population, which has seen an increase of 1.4 million people since 2000. Despite this growth in population, and to a similar extent Colorado's economy, median income in Denver has not seen as significant of an improvement. As a result, one of the hardest hit industries is the real estate market. In this study, we take a look at Colorado's housing market over the last five years, and how the lack of personal financial growth will impact Colorado's homeownership over the next couple of years. Specifically, we are curious if the price of houses will continue to rise to a point of unsustainability, and whether this will cause new homeowners to compromise their financial security.

## Project Strategies
### Communication Strategy
The team will leverage Slack as a communication hub as well as a Github repository for any document submissions through Canvas. The team committed to meeting every Monday and Wednesday during class hours to discuss the tasks ahead, problem solve, and disseminate next steps. We also held Saturday office hours as tentative meeting time if we ran into any blocks. The team utilized the GitHub repository to hold all files, code, and data used for the project, and used the repo to facilitate collaboration where required.

### Machine Learning Model Strategy
The team determined leveraging historical data to train our machine learning model is the best path forward. This historical data from Colorado will include residental housing sale price, as well as median income by year and median housing sale price. Upon gathering the data, the decision was made to use a supervised machine learning model, apply a linear regression model and a logistic regression model. The results of the models would provide insight into future income and housing price expectations. Specifically, our logistic regression model weighs median income to median housing cost, by designated US census track, and predicts whether the median income of each zone is enough to afford owning property without putting the household in severe financial risk.

### Technology Strategy
To accomplish our goals, our team will need to synchronously leverage several different technologies that work in tandem. These technologies will be used to accomplish specific tasks during the machine learning process and visualization process. The technologies that our team has identified are as follows:
* **Data Extraction, Cleaning, and Analysis** - Our team will utilize Pandas to obtain data if APIs are leveraged, clean the data that is pulled, and perform analysis on the cleaned data to ensure we have the metrics we want to feed into our Database and Machine Learning model.
* **Database Storage** - Our team will use Postgres SQL for our database for quick, concise data management that can easily be used in our Machine Learning model. We found some of our data sets were too large for Github for storage and distribution. For this instance, we utilized AWS S3 and RDS for storage and database connection.
* **Machine Learning** - We will utilize SciKitLearn and its library to build our Machine Learning model. Additionally, we will be using Google Colab so we can easily collaborate on the model together. It should also be noted, that Google Colab handles portions of Machine Learning better than Jupyter Notebooks, which influenced our decision. In this model, we will train using historic data and test present data to gain insight on potential future values.
* **Dashboard** - Tableau was our software of choice for the creation of our dashboard. We selected this route due to the diverse functionality of Tableau that would enable us to create, not only graphs, but various types of maps that will help tell our sto* **Presentation** - For our final presentation, our group settled on a combination of Google Slides to guide our analysis presentation, with a shift to Tableau when we cover the dashboard visualization portion of our analysis.

## Sources
For this study, we needed income by household and residental property sale information. After narrowing our parameters to 2014 through 2018 (both because of available data and data consistency), we first began our search for household income. We found that the US Census database was a thourough and reliable source for the income by household variable. Overall, we felt comfortable with the data provider, as well as the consistency of measures that each year calculated. After we had our income data, we searched for our residental property sale data. The aquisition of our data was not an easy undertaking, especially after learning that the free Zillow API has been adjusted and no longer contains the information we thought we would be able to obtain from it. After trying and dismissing several APIs and other data sources, we were able to find a good data set directly from the City of Denver. This data set provided the sale price for residental properties over the years that we were interested in. With the combination of these two data sets, we were primed to run our analysis.

## Database
For this project, our group decided to leverage PostgreSQL for our database construction, given our data sources provided did have relations and PostgreSQL creates relational databases. Using Pandas, we cleaned the raw data from our sources to remove unnecessary information, null rows, and merging several years of data into one useable table. Some of our created tables of data were too large to distribute via Github, so we had to utilize AWS S3 services to store our data and RDS to create our cleaned data set of housing data. We were then able to load our Pandas and AWS tables into PostgreSQL, create our final merge, and have our database created and operational.

## Machine Learning Model
With our database and tables created, we were prepared to optimize our Machine Learning model. As stated before, the preprocessing of the data took place in Pandas for our cleaning, and PostgreSQL for our final dataframe creation. With the data we had, we knew we wanted to do the following:
- We knew that "Year" was our constant feature throughout our data, and we would use "Year" as our independant variable. Other features never displayed any consistency across our data sets, so the decision was unanimous.
- Provided that our data had defined, and in many cases continuous labels, we decided to pursue a supervised model, specifically on a Linear Regression model, to plot the line of best fit for median income for current data years, and a Logistic Regression model, to predict whether a household can afford to safely (free of financial risk) make payments on a residental property. The benefits of each model are that they are fairly simple to create, train, and run. There is also minimal overfitting concerns with our chosen models. We do, however, sacrifice thouroughness for simplicity, which could limit the explainations of relationships between features.
- The addition of the Logistic Regression model came after segment 2. We had to figure out how to create a binary predictor with our existing data before we could consider the addition of this type of model, and creating that predictor took time and a complete data set. 
- The Linear Regression model was trained with the year as the X, and the dollar amount as the y ("sale price" for our housing linear regression, and "median income" for our income linear regression). 
- The Logistic Regression model was trained with our binary yes/no column "AFFORDABLE_OR_NOT" as the y, and all other features as the X.
- We were able to determine that our created "AFFORDABLE_OF_NOT" was only dependant on certain variables in our dataset, which made the model very accurate, with a result of 100%. In regards to our confusion matrix, that means that our true positives and true negatives were all accurately predicted. Since everything is correctly predicted, our recall and precision scores were also 1. With these results, it would be safe to say that perhaps a machine learning model is overly complicated for the data we predicted. Regardless, by the final iteration of our models, they were able to accurately predict the outcome of whether or not a household could safely afford to purchase a home in Denver.

## Dashboard
For our visualization dashboard, our group utilized tableau public to create and display our work. To view our vizualizaions, please view:
https://public.tableau.com/app/profile/elena.winter

Below are our Machine Learning results for Denver Median Income and Median House Sale Price respectively:

![](images/denver_med_income.png) ![](images/House_sale_price_reg.PNG)

## Results Summary
After running our Machine Learning analysis, the following insights were gained:
- Median Household income in Denver for 2014-2018 was $56,940.
- After comparing monthly median income to monthly mortgage, if monthly mortgage was 40% or more of monthly income, that household could not afford to own. The median income earner could not afford the top 15% of homes sold.
- Only 57% of the census districts had individual median incomes at or above the combined median income.
- An estimated 44% of households cannot afford the median cost of a home.

These results lead us to determine that, in general, housing in Denver is by no means risk-free affordable. A rough 50% of households in Denver could afford housing, but doing so comes at elevated financial risk. For future application, our models could be further improved by comparing direct year to year for income and property sale prices, rather than using combined income and combine housing medians. Additionally, the model could use more accurately predicted monthly mortgage costs (to include interest, HOA, property taxes, etc.) to get a more true-to-cost monthly mortgage. Both additions would likely reveal even more households that cannot affort to own a home in Denver.

To view our presentation slides, please view:
https://docs.google.com/presentation/d/1Wdo3tAvkiCCyMaI1bFxH1BTGxQ7hXfxnlnKfKJ8Cclo/edit#slide=id.g115f9a53f74_0_47

