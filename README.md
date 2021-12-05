# My project
For my project, I will create descriptive analyses on some neighborhood-level socioeconomic status factors for Georgia counties from 2010 to 2019. The source data are publicly available from the US Census Bureau's five-year American Community Survey (ACS).
## Environmental Preperation
To get access to the ACS data and initiate the analysis, you will need to install Docker. After installation, please execute the following code to pull the Docker image from Docker Hub:
```
docker pull zhenjiangl/info550_project:hw
``` 
## Execute the Analysis
To run the image and generate the report, please execute:
```
docker run -v /local_path/project:/project -it zhenjiangl/info550_project:hw
```
`local_path` can be any folder that you want to put the `project` directory.

A `.html` document will be created, named `My Project` in your directory that contains the result of analysis.

