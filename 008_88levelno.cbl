      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. level88.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       01 STUDENT-DETAILS.
             02 STU-NO     PIC 9(03).
             02 STU-NAME.
                 05 STU-NAME-INIT  PIC X(01).
                   88 STU-NAME-VALID VALUE 'A' THRU 'Z'.
                   88 STU-NAME-INVALID VALUE '0' THRU '9''''@''#''%'.
                 05 STD-NAME-REST  PIC X(14).
             02 STU-GENDER PIC X(01).
                 88 VALID-GENDER   VALUE 'M''F'.
                 88 MALE   VALUE 'M'.
                 88 FEMALE VALUE 'F'.
             02 STU-MARKS  PIC 9(03).
                 88 FIRST-CLASS    VALUE 060 THRU 100.
                 88 SECOND-CLASS   VALUE 050 THRU 059.
                 88 THIRD-CLASS    VALUE 040 THRU 049.

      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
        ACCEPT STU-NO.
        ACCEPT STU-NAME.
        ACCEPT STU-GENDER.
        ACCEPT STU-MARKS.
        DISPLAY 'STU-NO : ' STU-NO
        IF STU-NAME-VALID
            DISPLAY 'STU-NAME : ' STU-NAME
        ELSE
            DISPLAY 'INVALID STUDENT NAME !! '
        END-IF.
        IF VALID-GENDER
            IF MALE
               DISPLAY 'YOUR GENDER IS MALE !! '
            ELSE
               DISPLAY 'YOUR GENDER IS FEMALE !! '
            END-IF
        ELSE
               DISPLAY 'INVALID GENDER !! '
        END-IF.

        EVALUATE TRUE
           WHEN FIRST-CLASS
               DISPLAY 'STUDENT GOT FIRST CLASS'
           WHEN SECOND-CLASS
               DISPLAY 'STUDENT GOT SECOND CLASS'
           WHEN THIRD-CLASS
               DISPLAY 'STUDENT GOT THIRD CLASS'
           WHEN OTHER
               DISPLAY 'EXAM FAIL!!'
        END-EVALUATE.


      **
      * The main procedure of the program
      **

            STOP RUN.
      ** add other procedures here
       END PROGRAM level88.
