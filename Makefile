document:
	Rscript -e "devtools::document()"

readme:
	Rscript -e "rmarkdown::render('README.Rmd'); pkgdown::build_home()"

build:
	Rscript -e "devtools::build()"

check:
	Rscript -e "devtools::check()"

install:
	Rscript -e "devtools::install(build_vignettes = TRUE, upgrade_dependencies = FALSE)"

revdep-check:
	Rscript -e "devtools::revdep_check(); devtools::revdep_check_save_summary(); devtools::revdep_check_print_problems()"

winbuild:
	Rscript -e "devtools::build_win(version = 'R-devel', quiet = TRUE)"

release:
	Rscript -e "devtools::release()"

pkgdown:
	Rscript -e "pkgdown::build_site(run_dont_run = TRUE)"
