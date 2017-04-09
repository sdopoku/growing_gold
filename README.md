# Growing Gold
A list of datasets, resources and tools related to food production in Ghana. Let's begin...

## Datasets
Below is the summary table of the datasets available so far. The table includes the name of the dataset with the R code for cleaning it, the cleaned data. the original "dirty" data and the source.

The goal of this section is to produce clean datasets that match the ["tidy data" definition](https://en.wikipedia.org/wiki/Tidy_data) below:
 1. Each variable (or feature) you measure should be in one column
 2. Each different observation of that variable should be in a different row
 3. There should be one table for each “kind” of variable
 4. If you have multiple tables, they should include a column in the table that allows them to be linked


[Hadley Wickham](http://hadley.nz/) provides a detailed definition and explanation of tidy data and its benefits in [this paper](http://vita.had.co.nz/papers/tidy-data.pdf).  To capture a few of these:
  + a user can quickly upload a dataset into many standard tools including  Microsoft Excel, R, Pandas and Tableau for analysis and visualisation to name a few.
  + a user can easily combine multiple datasets for a more in-depth analysis.
  + a user can easily share her data with other collaborators as [explained by Jeff Leek here](https://github.com/jtleek/datasharing).



#### How To Use This Resource
Since not everyone can figure out what's going on inside my head if I don't explicitly show how these datasets can be used, I am attempting to write a short list of steps to follow in case you want to use this resource:
1. **Name Column:** Identify a dataset that is of interest to you.
2. **Cleaned Data:**  Check out the corresponding cleaned dataset to see if it is still of interest to you. Decide if it contains the variables/columns you're interested in using. You can always change your mind.
3. **Details Page:** Visit the [details.md file](/datasets/clean_data/details.md) in the cleaned data folder to read additional notes about the dataset you are interested in.
4. **Source Document:** If you still have questions about the dataset, check out the original source used using the source column in the summary table.
5. **Dirty Data:** Take a look at the dirty data file and do a quick dance that you don't have to work with that format.
6. **R Code:** If you're still bored, check out the R code used in tidying the dataset.



#### How To Contribute
This project is a labour of love stemming from a love for data, food and Ghana. There are three main things I hope to achieve with this:
  + Create an repository of open food-related datasets specific to Ghana.
  + Document and share the process for collecting, cleaning and releasing these datasets. I hope others can improve the process or simple join in the effort.
  + Identify gaps in specific datasets that would be worth covering.
  + Produce interesting stories, reports, music, dances, business plans, policies around food in Ghana. After all, we are talking about Ghana and food is a major part of our culture so why not learn more facts about it?


  With that said, here's how you can help:
  + **Review** datasets and send in a pull request if you notice any issues. A pull request is just a GitHub fancy way of sharing edits to a document. Learn more about pull requests [here](https://help.github.com/articles/creating-a-pull-request/). If this is too technical for you, simply [send me a tweet](https://twitter.com/sdopoku).
  + **Use** datasets for your analysis, visualisations, television and radio discussions, school reports, journalism stories, business pitches etc. You get the idea. Once you do, let me know what you're missing or is useful.
  + **Share dirty data**  you will like to see cleaned. The only catch for now is the data **must be food-related and about Ghana**.



#### Available Datasets
Name |Cleaned Data | Dirty Data | Source  
-------- |------- |--------- | ---------
Ghana Oil Palm Actual Production 2003 - 2012 ([R cleaning code](/datasets/cleaning_code/ghana_oil_palm_actual_2003_2012.R)) | [ghana_oil_palm_2003_2012_clean](/datasets/clean_data/ghana_oil_palm_2003_2012_clean.csv)| [ghana_oil_palm_2003_2012_dirty](/datasets/dirty_data/ghana_oil_palm_2003_2012_dirty.csv)  | Page 20 - [Ghana Agriculture Facts & Figures](/datasets/sources/mofa_agriculture_ghana_facts_and_figures_2012.pdf)
Ghana Fertilizer Import 2002 - 2012  ([R cleaning code](/datasets/cleaning_code/ghana_fertilizer_import.R))| [ghana_fertilizer_import_2002_2012_clean](/datasets/clean_data/ghana_fertilizer_import_2002_2012_clean.csv) | [ghana_fertilizer_import_2002_2012_dirty](/datasets/dirty_data/ghana_fertilizer_import_2002_2012_dirty.csv) | Page 54 - [Ghana Agriculture Facts & Figures](/datasets/sources/mofa_agriculture_ghana_facts_and_figures_2012.pdf)
Ghana Agrochemical Import 2002 - 2010  ([R cleaning code](/datasets/cleaning_code/ghana_agrochemical_imports.R))| [ghana_agrochemical_imports_2002_2010_clean](/datasets/clean_data/ghana_agrochemical_imports_2002_2010_clean.csv) | [ghana_agrochemical_imports_2002_2010_dirty](/datasets/dirty_data/ghana_agrochemical_imports_2002_2010_dirty.csv) | Page 54 - [Ghana Agriculture Facts & Figures](/datasets/sources/mofa_agriculture_ghana_facts_and_figures_2012.pdf)
Ghana Main Non-traditional Exports 2002 - 2012  ([R cleaning code](/datasets/cleaning_code/ghana_main_non_traditional_exports.R))| [ghana_main_non_traditional_exports_2002_2012_clean](/datasets/clean_data/ghana_main_non_traditional_exports_2002_2012_clean.csv) | [ghana_main_non_traditional_exports_2002_2012_dirty](/datasets/dirty_data/ghana_main_non_traditional_exports_2002_2012_dirty.csv) | Page 51 - [Ghana Agriculture Facts & Figures](/datasets/sources/mofa_agriculture_ghana_facts_and_figures_2012.pdf)
