report: Rmd/report.Rmd figs/time_series_plot_DeKalb.png
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"

figs/time_series_plot_DeKalb.png: R/time_serise_DeKalb.R
	Rscript R/time_serise_DeKalb.R

.PHONY: report