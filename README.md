# ETLANIME
ETL Project

This document contains guidelines, requirements, and suggestions for ETL-Project using Anime data.

Team Effort.


ETL (EXTRACT, TRANSFORM, LOAD)

  * * * EXTRACT

Data Used from Kaggle: https://www.kaggle.com/alancmathew/anime-dataset

This project uses 2 sources of data of Anime from Kaggle. 

The team created the tables of Users,  Genre,  Anime_Genre to add quality of data enriching them with the ten countries were Anime is more popular, using Anime statistics the age and gender of anime fans was deployed into the tables enhancing the row data from Kaggle.


  * * * TRANSFORM

Data Cleanup & Analysis
Once the datasets were identified the team performed ETL on the data ensuring to planning and documentiing this process.

Transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
It was relevant to fiter the data, as we found values such as NaN and Unknown found in "rating" and "episodes" columns respectively. Thus, the team made decisions of the data managment of these categories of the data. This to ensure quality of the data for the DataBases.


  * * * LOAD

The team decided that the type of final production database to load the data would work better into  a relational database. This because as objective of analysing which genre of memebers prefer certain "anime_genre" would be possible by a relatonal db. In the same way, this kind of DataBase would allow users and Anime makers not only the countries, gender and age of the memebers; but also to know which are the preferences of type of anime per age and the rating that memebers are giving to them.


The final tables or collections are used in the production database. Once the DataBase was conformed in SQLPosgres, the tables and columns were checked one by one. Once this DataBase called "anime_db" was build. The team used Jupyter Notebook to connect to SQLPostgres and to load the information to the tables.


** Conclusions:

1. By doing this projects the team can highlight the following learnings:
2. Teamwork was crucial to the success of this project! By working closely with your team through all phases of the project to ensure giving different perspectives and knowledge to the project tackling more difficult problems.
3. The process of ETL is entirely iterative requiring constant attention to data quality.

