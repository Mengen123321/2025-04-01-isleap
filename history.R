# code from class went though order of functions in the R packaging book:
# https://r-pkgs.org/whole-game.html

#
# step 1 from new R session
library(devtools)

sessionInfo()

create_package("~/git/is_leap")

create_package("~/git/is.leap")


# step 2 in the newly created package project/directory

library(devtools)

usethis::use_git()

# Create an R file for new package function
usethis::use_r("is_leap")

# Load package for usage, It roughly simulates what happens when a package is installed and loaded with library().
devtools::load_all()

# Use function
is_leap(1000)

devtools::check()

# Implement Licence
usethis::use_mit_license()

devtools::check()

# Build documentation (Can be rebuilt if function and spec changes)
# oxygen2 will flesh out the .Rd file using data from the DESCRIPTION
devtools::document()

devtools::check()

# Install packages for usage
devtools::install()

is_leap(1000)

# Creates tests/testthat/, tests/testthat.R, and adds the testthat package to the Suggests field.
usethis::use_testthat()

# Run tests, runs script in testthat.R
devtools::test()

# adds a CRAN package dependency to DESCRIPTION and offers a little advice about how to best use it
usethis::use_package("stringr")

# Allows people to use package not available yet on CRAN
remotes::install_github("<github url>")