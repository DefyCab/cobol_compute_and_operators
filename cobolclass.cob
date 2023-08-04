       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
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
display "Enter Age : " with no advancing
accept Age
if Age >= 18 then
       display "You can vote"
end-if
if Age < 18 then
       display "You cant vote"
end-if
if Age <=5 then
       display "Du går på dagis"    
end-if
if Age >= 19 then
       display "Du har slutat skolan"
end-if
if Age > 5 and Age < 19 then
compute Grade = Age - 5
display "Du går i " Grade ":an"
end-if       
            STOP RUN.
