report.html: Rmd/report.Rmd figs/time_series_plot_DeKalb.png
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"

figs/time_series_plot_DeKalb.png: R/time_series_DeKalb.R
	Rscript R/time_series_DeKalb.R

.PHONY: report