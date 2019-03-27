       IDENTIFICATION DIVISION.
       PROGRAM-ID. JOKENPO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 RAND-NUM PIC 9(2).
           01 PLAYER PIC A(10).
           01 PC PIC A(10).
           01 ROCK PIC A(8) VALUE "Rock".
           01 SCISSORS PIC A(8) VALUE "Scissors".
           01 PAPPER PIC A(8) VALUE "Papper".
           01 BLAH PIC 99.
           01 CHOICE-INDEX PIC 9.
           01 CHOICES.
               05 CHOICE PIC A(8) OCCURS 3 TIMES.
           01 CURRENT-TIME.
                  05 T-MS PIC 999.
           01 RESULTADO PIC A(20) VALUE "You lost ".
           
       PROCEDURE DIVISION.
           MOVE ROCK TO CHOICE(1).
           MOVE SCISSORS TO CHOICE(2).
           MOVE PAPPER TO CHOICE(3).
           DISPLAY "Rock, papper, scissors?".
           ACCEPT PLAYER.
           
           COMPUTE RAND-NUM = FUNCTION RANDOM (T-MS) * 100.
           DIVIDE RAND-NUM BY 3 GIVING BLAH REMAINDER CHOICE-INDEX.
           MOVE CHOICE(CHOICE-INDEX + 1) TO PC.
           
           IF PLAYER = PC
               MOVE "Draw!" TO RESULTADO
           END-IF.
           
           IF PLAYER = "Rock" AND PC = "Scissors"
               MOVE "You Won \o/" TO RESULTADO
           END-IF.
           
           IF PLAYER = "Scissors" AND PC = "Papper"
               MOVE "Won \o/" TO RESULTADO
           END-IF.
           
           IF PLAYER = "Papper" AND PC = "Rock"
               MOVE "Won \o/" TO RESULTADO
           END-IF.
           
           DISPLAY RESULTADO.
       STOP RUN.
       