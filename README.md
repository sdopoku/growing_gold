# Growing Gold
A list datasets, resources and tools related to food production in Ghana. Let's begin...

## Datasets
Below is summary table of the datasets available so far. The table includes the name of the dataset with the R code for cleaning it, the cleaned data and the original "dirty" data.

The goal of this section is to produce clean datasets that match the ["tidy data" definition](https://en.wikipedia.org/wiki/Tidy_data) below:
 1. Each variable (or feature) you measure should be in one column
 2. Each different observation of that variable should be in a different row
 3. There should be one table for each “kind” of variable
 4. If you have multiple tables, they should include a column in the table that allows them to be linked


 [Hadley Wickham](http://hadley.nz/) provides a detailed definition and explanation of tidy data and its benefits in [this paper](http://vita.had.co.nz/papers/tidy-data.pdf).  To capture a few of these:
  1. a user can quickly upload a dataset into many standard tools including  Microsoft Excel, R, Pandas and Tableau for analysis and visualisation to name a few.
  + a user can easily combine multiple datasets for a more in-depth analysis.
  + a user can easily share her data with other collaborators as [explained by Jeff Leek here](https://github.com/jtleek/datasharing).


  #### How To Contribute
  This project is a labour of love stemming from a love for data, food and Ghana. There are three main things I hope to achieve with this:
  1. Create an repository of open food-related datasets specific to Ghana
  + Document and share the process for collecting, cleaning and releasing these datasets. I hope others can improve the process or simple join in the effort.
  + Identify gaps in specific datasets that would be worth covering
  + Produce interesting stories, reports, music, dances, business plans, policies around food in Ghana. After all, we are talking about Ghana and food is a major part of our culture so why not learn more facts about it?


  With that said, here's how you can help:
  1. **Review** datasets and send in a pull request if you notice any issues. A pull request is just a GitHub fancy way of sharing edits to a document. Learn more about pull requests [here](https://help.github.com/articles/creating-a-pull-request/). If this is too technical for you, simply [send me a tweet](https://twitter.com/sdopoku).
  + **Use** datasets for your analysis, visualisations, television and radio discussions, school reports, journalism stories, business pitches etc. You get the idea. Once you do, let me know what you're missing or is useful.
  + **Share dirty data**  you will like to see cleaned. The only catch for now is the data **must be food-related and about Ghana**.



#### Available Datasets
Name |Cleaned Data | Dirty Data | Source  
-------- |------- |--------- | ---------
Ghana Oil Palm Actual Production 2003 - 2012 ([R cleaning code](/datasets/cleaning_code/ghana_oil_palm_actual_2003_2012.R)) | [ghana_oil_palm_2003_2012_clean.csv](/datasets/clean_data/ghana_oil_palm_2003_2012_clean.csv)| [ghana_oil_palm_2003_2012_dirty.csv](/datasets/dirty_data/ghana_oil_palm_2003_2012_dirty.csv)  | Page 20 - [Ghana Agriculture Facts & Figures](/datasets/sources/mofa_agriculture_ghana_facts_and_figures_2012.pdf)
Ghana Fertilizer Import 2002 - 2012  ([R cleaning code](/datasets/cleaning_code/ghana_fertilizer_import.R))| [ghana_fertilizer_import_2002_2012_clean.csv](/datasets/clean_data/ghana_fertilizer_import_2002_2012_clean.csv) | [ghana_fertilizer_import_2002_2012_dirty](/datasets/dirty_data/ghana_fertilizer_import_2002_2012_dirty.csv) | Page 54 - [Ghana Agriculture Facts & Figures](/datasets/sources/mofa_agriculture_ghana_facts_and_figures_2012.pdf)
Ghana Agrochemical Import 2002 - 2010  ([R cleaning code](/datasets/cleaning_code/ghana_agrochemical_imports.R))| [ghana_agrochemical_imports_2002_2010_clean.csv](/datasets/clean_data/ghana_agrochemical_imports_2002_2010_clean.csv) | [ghana_agrochemical_imports_2002_2010_dirty](/datasets/dirty_data/ghana_agrochemical_imports_2002_2010_dirty.csv) | Page 54 - [Ghana Agriculture Facts & Figures](/datasets/sources/mofa_agriculture_ghana_facts_and_figures_2012.pdf)
