# My project
For my project, I will create descriptive analyses on some neighborhood-level socioeconomic status factors for Georgia counties from 2010 to 2019. The source data are publicly available from the US Census Bureau's five-year American Community Survey (ACS).
## Package Preperation
To get access to the ACS data and initiate the analysis, you will need to install several R packages. I used the `renv` package to manage the project-local `R` dependencies to this project. 'renv' will automatically be active in `R` session that is run from the project directory. 
## Execute the Analysis
I created a `Makefile` to faciliate the analysis. At the command line, in the project directory, we type
```
make
```
A `.html` document will be created, named `My Project` in your directory that contains the result of analysis.

