      program rps
        implicit none

*       variable declarations
        character (len=10), dimension(3) :: choices, beats
        character (len=10) :: input
        integer :: seed, human_move, computer_move
        integer,dimension(8) :: time1

*       seed random number generator
*       source: http://stackoverflow.com/questions/11054955/random-sampling-in-fortran       
        call date_and_time(values=time1)
        seed = 1000*time1(7)+time1(8)
        call srand(seed)

*       choices and moves they beat
        choices = (/ character(len=10) :: 'rock', 'paper', 'scissors' /)
        beats = (/ character(len=10) :: 'scissors', 'rock', 'paper'  /)

*       play until there is a winner
        do
          do
*           generate computer move first, no cheating
            computer_move = int(rand()*3) + 1

            print '(A)', 'Your Move:' 
            read(*,*) input

*           validate input, repeat until valid
            if ( ANY( choices == input ) ) then
              exit 
            end if
          end do

*         get array key of human move
          do human_move = 1, size(choices)
            if ( choices(human_move) == input ) then
              exit
            end if
          end do

*         calculate winner
          if ( human_move == computer_move ) then
            print '(A)', 'Tie, Replay!'
          else if ( beats(human_move) == choices(computer_move) ) then
            print '(A)', 'You Win!'
            exit
          else if ( beats(computer_move) == choices(human_move) ) then
            print '(A)', 'Computer Wins!'
            exit
          end if
        end do

      end program
