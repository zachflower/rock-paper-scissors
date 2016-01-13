-- possible choices, and the moves that they beat
set choices to {"Rock", "Scissors", "Paper"}
set beats to {"Scissors", "Paper", "Rock"}

-- play until someone wins
repeat
	-- calculate the computer move first, no cheating
	set computer_move to (random number from 1 to (count of choices))
	
	-- get player move
	display dialog "What is your move?" buttons {"Rock", "Paper", "Scissors"}
	set input to button returned of result
	
	-- convert player move to integer
	set human_move to list_position(input, choices)
	
	-- calculate winner
	if (human_move = computer_move) then
		display alert "Tie, Replay!"
	else
		if ((get item human_move of beats) = (get item computer_move of choices)) then
			display alert "You Win!"
		else if ((get item computer_move of beats) = (get item human_move of choices)) then
			display alert "Computer Wins!"
		end if
		exit repeat
	end if
end repeat


-- search through a list and return the offset of the first matching value
-- source: http://www.macosxautomation.com/applescript/sbrt/sbrt-07.html
on list_position(this_item, this_list)
	repeat with i from 1 to the count of this_list
		if item i of this_list is this_item then return i
	end repeat
	
	return 0
end list_position
