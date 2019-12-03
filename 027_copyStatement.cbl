      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 STD-REC.
      *>      COPY STDRECD.
           02 STD-NO  PIC 9(3).
           02 STD-NAME PIC X(60).
           02 STD-PERCENT PIC 9(03).
       PROCEDURE DIVISION.
           ACCEPT STD-NO.
           ACCEPT STD-NAME.
           ACCEPT STD-PERCENT.
            DISPLAY 'student details : ' STD-REC.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
