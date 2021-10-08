# pewlett-hackard-anaytics

## Overview

* Client is PH and is looking into employee HR data
* Datasets provided by client are found [here.](https://github.com/nabilram/pewlett-hackard-analysis/tree/main/Data)
* Datapoints of analytic interest and output files:
    * Retrieve data from various csv sources and join - [csv here.](https://github.com/nabilram/pewlett-hackard-analysis/blob/main/Queries/retirement_titles.csv)
    * Clean data: ensure job titles are most recent - [csv here.](https://github.com/nabilram/pewlett-hackard-analysis/blob/main/Queries/unique_titles.csv)
    * Count the no. of eligible retirees per job title - [csv here.](https://github.com/nabilram/pewlett-hackard-analysis/blob/main/Queries/retiring_titles.csv)
    * Identify employees eligibile for mentorship program - [csv here.](https://github.com/nabilram/pewlett-hackard-analysis/blob/main/Queries/mentorship_eligibility.csv)

## Results

* There are employees with multiple titles
    * Resolved by cleaning data: SQL filtering and ordering/sorting
* Out of the cleaned employee data Senior Engineers and Senior Staff are most retirement-eligible
* A knowledge-transfer program must be put in place to ensure contiunity
    * 738 of the Senior Engineers or Senior Staff are eligible for the mentorship program
    * An additional 831 employees are eligible for the program but do hold a senior position

## Summary

* Un upcoming surge in retirement and exit from the workforce from PH is anticipated
* Programs for knowledge transfer must be built upon data driven HR decisions
* Provided data on most retirement-risk positions as well program eligibility should inform management on coming change management initiatives