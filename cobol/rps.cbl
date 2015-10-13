IDENTIFICATION DIVISION.
PROGRAM-ID. RockPaperScissors.

DATA DIVISION.
  WORKING-STORAGE SECTION.
    01 Choices.
      02 Choice-1 PIC X(4) VALUE 'rock'
      02 Choice-2 PIC X(5) VALUE 'paper'
      02 Choice-3 PIC X(8) VALUE 'scissors'
    01 Beats.
      02 Beat-1 PIC X(8) VALUE 'scissors'
      02 Beat-2 PIC X(4) VALUE 'rock'
      02 Beat-3 PIC X(5) VALUE 'paper'
    01 HumanMove PIC X(10).

PROCEDURE DIVISION.
  begin.

    PERFORM UNTIL HumanMove = 'rock' OR 'paper' OR 'scissors'
      DISPLAY "You Move: " WITH NO ADVANCING
      ACCEPT HumanMove.
    END-PERFORM

    STOP RUN.