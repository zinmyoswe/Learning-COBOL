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
       01 WS-DATA  PIC X(10) VALUE 'DD-MM-YYYY'.
       01 WS-CNT   PIC 9(02) VALUE ZEROES.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-

      **
      * The main procedure of the program
      **
            DISPLAY "INSPECT TALLYING REPLACING...".
            INSPECT WS-DATA TALLYING WS-CNT FOR ALL '-'
            REPLACING ALL '-' BY '/'.
            DISPLAY "DATA ALTER TALLYING REPLACING :" WS-DATA.
            DISPLAY 'COUNT OF -LETTER : ' WS-CNT.
            STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
