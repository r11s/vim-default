      * Testdatei: Kommentarzeile
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAMPLE.
       AUTHOR. TEST.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  MAX-ITEMS         PIC 9(3)    VALUE 16.
       01  RATIO             PIC 9V9(5)  VALUE 3.14159.
       01  GREETING          PIC X(20)   VALUE "Hallo, ""Welt""".
       01  WS-TABLE.
           05  WS-ITEM       PIC 9(4) OCCURS 10 TIMES.
       01  WS-INDEX          PIC 99      VALUE ZERO.
       01  WS-TOTAL          PIC 9(6)    VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY GREETING.
           PERFORM VARYING WS-INDEX FROM 1 BY 1
                   UNTIL WS-INDEX > 10
               COMPUTE WS-ITEM(WS-INDEX) = WS-INDEX * 2
               ADD WS-ITEM(WS-INDEX) TO WS-TOTAL
           END-PERFORM.
           IF WS-TOTAL > 100 AND NOT WS-INDEX = ZERO
               DISPLAY "Summe: " WS-TOTAL
           ELSE
               DISPLAY "klein"
           END-IF.
           EVALUATE TRUE
               WHEN WS-TOTAL = 0   MOVE 1 TO WS-INDEX
               WHEN OTHER          MOVE 2 TO WS-INDEX
           END-EVALUATE.
           STOP RUN.
