      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. YOUR-PROGRAM-NAME.
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
       01 AGE    PIC 9(03).
       01 GENDER PIC X(01).
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       ACCEPT AGE
       ACCEPT GENDER

       EVALUATE TRUE ALSO TRUE
           WHEN AGE > 018 ALSO GENDER = 'M'
               DISPLAY 'THE BOY IS MAJOR'
           WHEN AGE > 018 ALSO GENDER = 'F'
               DISPLAY 'THE GIRL IS MAJOR'
           WHEN AGE <= 018 ALSO GENDER = 'M'
               DISPLAY 'THE BOY IS MINOR'
           WHEN AGE <= 018 ALSO GENDER = 'F'
               DISPLAY 'THE GIRL IS MINOR'
           WHEN OTHER
               DISPLAY 'INVALID INPUT'

       END-EVALUATE
      **
      * The main procedure of the program
      **

            STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
