# My project
For my project, I will create descriptive analyses on some neighborhood-level socioeconomic status factors for Georgia counties from 2010 to 2019. The source data are publicly available from the US Census Bureau's five-year American Community Survey (ACS).
## Package Preperation
To get access to the ACS data and initiate the analysis, you will need to install three `R` packages including `tidycensus`, `dplyr`, and `kableExtra`. The following commands can be used to install them:
```
installed_pkgs <- row.names(installed.packages())
pkgs <- c("tidycensus", "dplyr","kableExtra")
for(p in pkgs){
  if(!(p %in% install_pkgs)){
    install.packages(p)
  }
}
```
## Execute the Analysis
To execute the analysis, from this project folder you can run:
```
Rscript -e "rmarkdown::render('report.Rmd')"
```
The `R` markdown file will generate a `.html` document named `My Project` in your directory that contains the result of descriptive analysis.

