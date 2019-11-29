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
       01 COUNTRY-CODE PIC 9(02) VALUE 91.
       01 STATE-CODE   PIC 9(02) VALUE 99.
       01 PH-NO        PIC 9(08) VALUE 87654321.
       77 FULL-PH-NO   PIC 9(12).
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MOVE COUNTRY-CODE TO FULL-PH-NO(1:2).
       MOVE STATE-CODE   TO FULL-PH-NO(3:2).
       MOVE PH-NO       TO FULL-PH-NO(5:8).

      **
      * The main procedure of the program
      **
            DISPLAY "COUNTRY CODE :" COUNTRY-CODE.
            DISPLAY "STATE-CODE :" STATE-CODE.
            DISPLAY "PH-NO :" PH-NO.
            DISPLAY "FULL-PH-NO :" FULL-PH-NO.

            STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
