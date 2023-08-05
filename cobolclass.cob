       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. cobolclass.
AUTHOR. Love Bellinder.

DATE-WRITTEN.  18/07/2023.
DATE-COMPILED. 18/07/2023.
 
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 Age pic 99 value 0.
01 Grade pic 99 value 0.
01 GradeZeroRemover pic 9 value 0.
01 GradeGymnasium pic 9 value 0.
01 Score pic x(1) value "B".
01 CanVoteFlag pic 9 value 0.
       88 CanVote value 1.
       88 CantVote value 0.
01 TestNumber pic x.
       88 IsPrime value "1","3","5","7".
       88 IsOdd value "1","3","5","7","9".
       88 IsEven value "2","4","6","8".
       88 LessThan5 value "1" THRU "4".
       88 ANumber value "0" THRU "9".
*> Bullion 88 sets conditional-value
PROCEDURE DIVISION.
display "Hur gammal är du? : " with no advancing
accept Age
if Age >= 18 then
       display "Du får rösta"
end-if
if Age < 18 then
       display "Du får inte rösta"
end-if
if Age <= 5 then
       display "Du går på dagis"    
end-if
if Age >= 19 then
       display "Du har slutat skolan"
end-if
if Age >= 6 and Age < 16 then
       compute GradeZeroRemover = Age - 6
       display "Du går i " GradeZeroRemover ":an"
end-if
if Age >= 16 and < 18 then
       compute Grade = Age - 6
       compute GradeGymnasium = Grade - 9
       display "Du går i " GradeGymnasium ":a ring"
end-if 
if Age = 18 then
       compute Grade = Age - 6
       compute GradeGymnasium = Grade - 9
       display "Du går i " GradeGymnasium ":de ring"
end-if    

if Score is PassingScore then
       display "You Passed"
else
       display "You failed"
end-if

if Score is not numeric then
       display Score " is not a number"
end-if

if age >= 18 then 
       set CanVote to true
else       
       set CantVote to true
end-if

if CanVoteFlag = 1 
       display "You can vote"
end-if

if CanVoteFlag = 0
display "You can't vote"
end-if

            STOP RUN.
