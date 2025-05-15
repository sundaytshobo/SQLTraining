select
ID
NAME
SCORE
Count(*) As Duplicate
from Results
Group By
ID
Name,
Score

THIS IS HOW YOU FIND DUPLICATES