# Pewlett_Hackard_Analysis

## Overview

Pewlett Hackard is facing a surge of retirements as baby bombers begin to leave the workforce in large numbers.  This project uses a series of SQL queries on PH employee data to determine the number of imminent retirees, their names, and their titles. It also identifies experienced current employees who will be able to serve as mentors to new hires as the company fills vacant positions.

## Results

- There are 90,398 employees due for retirement in the next several years.

- Over half of the imminent retirees occupy senior positions, with 29,414 holding the title of Senior Engineer and 28,254 holding the title of Senior Staff. 

  ![retiring titles](C:\Users\jhilb\Class\Pewlett_Hackard_Analysis\Resources\Retiring_titles.png)

- There are 1549 employees identified as eligible to serve as mentors for new hires.

![mentors](C:\Users\jhilb\Class\Pewlett_Hackard_Analysis\Resources\mentors.png)

- The criteria for mentorship eligibility is very limited, however, as it considers only employees born in 1965. 

## Summary

The impending "silver tsunami" as baby boomers leave the workforce will have a significant impact on Pewlett-Hackard's workforce. 

- Over 90,000 employees are due to retire in the next several years, creating a high number of vacant positions.

- The initial criteria for the mentorship program identified only 1549 employees as eligible mentors, leaving a large gap between the number of experienced mentors and the number of new hires that will be needed.

  - Expanding the eligibility for mentorship to a 5-year range of birth dates between 1964 and 1969 results in 19,905 potential mentors. The results of this query can be found in [Expanded Mentorship_Eligibility](expanded_mentorship_eligibility.csv).

  - The expanded list of potential mentors includes a good balance of engineers and staff to provide support support for new hires in the needed positions.

    ![expanded mentors](C:\Users\jhilb\Class\Pewlett_Hackard_Analysis\Resources\expanded mentors titles.png)