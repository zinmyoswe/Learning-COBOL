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
       01 STD-DET OCCURES 6 TIMES INDEXED BY STD-INDEX.
           05 STD-MARKS    PIC 9(03).
       01 TOTAL-MARKS      PIC 9(03) VALUE ZERO.
       01 STD-PERCENT      PIC 9(03).9(02).
       01 I                PIC 9(01).
       01 J                PIC 9(01) VALUE ZERO.
       PROCEDURE DIVISION.
           MOVE ZEROES TO TOTAL-MARKS.
           PERFORM VARYING I FROM 1 BY 1
               UNTIL I > 6
               SET STD-INDEX TO 1
               ACCEPT STD-MARKS(STD-INDEX)
               IF STD-MARKS(STD-INDEX) < 35
                   CONTINUE
               ELSE
                   ADD STD-MARKS(STD-INDEX)TO TOTAL-MARKS
                   SET STD-INDEX DOWN BY 1
               COMPUTE J=J+1
               END-IF
              END-PERFORM.

               IF J < 6
                   COMPUTE J = I -(J+1)
                   DISPLAY 'STUDENT FAILED IN '.
               ELSE
                   COMPUTE STD-PERCENT = TOTAL-MARKS/6
                   DISPLAY 'student percentage : ' STD-PERCENT.

               END-IF
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
