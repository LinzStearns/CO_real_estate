# Colorado's Population Growth Quickly Outpacing Liveability

<p align='center'>
<img height='300' width'550' alt='THS table' src='https://media.consumeraffairs.com/files/cache/news/Home_prices_concept_with_money_stacks_nopparit_Getty_Images_large.jpg'>
</p>

## Purpose of Project
Anyone who has grown up in or moved to Colorado in the last two decades has experienced the wave of people moving from all over the country to settle in the Centennial State. To this day the state continues to scramble to respond to the inevitable impacts of a rapidly growing population, which has seen an increase of 1.4 million people since 2000. As a result, one of the hardest hit industries is the real estate market. In this study, we take a look at Colorado's massive population increase over the last decade, and how that growth will impact Colorado's liveability over the next five years. Specifically, we are curious if the availability and price of apartments and houses will continue to rise to a point of unsustainability.

## Communication Strategy
The team will leverage Slack as a communication hub as well as Google Drive for any document submissions through Canvas. The team committed to meeting every Monday and Wednesday during class hours to discuss the tasks ahead, problem solve, and disseminate next steps. Additionally, the team has created a GitHub repository to hold all files, code, and data used for the project.

## Machine Learning Model Strategy
The team determined leveraging historical data to train our machine learning model is the best path forward. This historical data from Colorado will include house and apartment availability and price, as well as population, median income, and other liveability measures. Upon gathering the data, the decision was made to use a supervised machine learning model, apply a linear regression model, standardize the data, and hopefully leverage the model to predict future results.

## Technology Strategy
To accomplish our goals, our team will need to synchronously leverage several different technologies that work in tandem. These technologies will be used to accomplish specific tasks during the machine learning process and visualization process. The technologies that our team has identified are as follows:
* **Data Extraction, Cleaning, and Analysis** - Our team will utilize Pandas to obtain data if APIs are leveraged, clean the data that is pulled, and perform analysis on the cleaned data to ensure we have the metrics we want to feed into our Database and Machine Learning model.
* **Database Storage** - Our team will use Postgres SQL for our database for quick, concise data management that can easily be used in our Machine Learning model.
* **Machine Learning** - We will utilize SciKitLearn and its library to build our Machine Learning model. Additionally, we will be using Google Colab so we can easily collaborate on the model together. It should also be noted, that Google Colab handles portions of Machine Learning better than Jupyter Notebooks, which influenced our decision. In this model, we will train using historic data and test present data to predict future values.
* **Dashboard** - Tableau was our software of choice for the creation of our dashboard. We selected this route due to the diverse functionality of Tableau that would enable us to create, not only graphs, but various types of maps that will help tell our story.
