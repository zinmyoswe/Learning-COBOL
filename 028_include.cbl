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
       01 STD-DET OCCURS 6 TIMES INDEXED BY STD-INDEX.
           05 STD-MARKS    PIC 9(03).
       01 TOTAL-MARKS      PIC 9(03) VALUE ZERO.
       01 STD-PERCENT      PIC 9(03).9(02).
       01 I                PIC 9(01).
       01 J                PIC 9(01) VALUE ZERO.
       PROCEDURE DIVISION.
           MOVE ZEROES TO TOTAL-MARKS

       ++INCLUDE PERFCODE

           IF J < 6
               DISPLAY 'student failed, no percentage calculated'.
           ELSE
               COMPUTE STD-PERCENT = TOTAL-MARKS/6
               DISPLAY 'STUDENT PERCENTAGE : ' STD-PERCENT.
           END-IF

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
