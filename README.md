<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview
fsutils stands for file-system-utility-functions. 

## Installation

``` r
# The easiest way to get fsutils is to install from CRAN:
install.packages("fsutils", dependencies = TRUE)

# Alternatively, you can install development version from GitHub:
install.packages("devtools")
devtools::install_github("ashrithssreddy/fsutils")
```

## Next Steps
- [ ] File creation or deletion
	- [ ] Remove any empty folders
	- [ ] Add a folder called 99_junk (or a different name) into every folder

- [ ] File formatting
	- [ ] Remove special characters in each filename
	- [ ] Replace space with underscore in every file name
	
- [ ] File hierarchy
	- [ ] Tree based visualization of file system
	- [ ] Excel based representation of file system
 
- [ ] Other action items
	- [ ] Check for functionalities already written in different programming languages

## Usage

## Contact
Please email ashrithssreddy@gmail.com for suggestions with "fsutils" in subject line.

## Author's Stray Notes - Can be Ignored
Most data science teams do not have a standards / structure / etiquette / rule-book in place like typical software development teams do.
In most data science projects, one will be overwhelmed with files in their project folder (like codes, datasets, presentations, EDA reports etc.).
This package is intended to arrive a user towards a set of standards or to enhance a user's familiarity with a foreign project directory.
Useful functions to enable best practices around robust file systems for data science teams
https://docs.python.org/3/library/filesys.html
https://cran.r-project.org/web/packages/folderfun/index.html
https://cran.r-project.org/web/packages/rmsfuns/index.html