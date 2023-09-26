#!/bin/bash

# capturing the user name
name=$(zenity --entry --title "Hi" --text "Please enter your name below:") 


if [[ $name == "" ]]   # checking name is empty
	then 
	name="GAMER" # setting default name
fi # end of name is empty if block


# Displaying  on screen in  information box
zenity --info --text "Hello $name, Welcome to the Gaming World!"

sleep 1

# User wants to play game ? Yes/No question
$(zenity --question --text="$name , Would you like to play an interesting game?" --width=300)


if [[ $? == 0 ]] # checking execution of zenity question 0 menas user choose yes
then
	# displaying progress dialog
	sleep 3|tee >(zenity --progress --pulsate --no-cancel --auto-close --text="Down loading the game ...Please wait...")

 	sleep 2
	echo " "
	echo "$name, Game is Ready....This Game is all about CHOOSING THE RIGHT PILL..."
	sleep 2
	echo -e "If you choose the \e[34mBLUE Pill \e[0m .."
	sleep 2
	echo "The story ends.. "
	sleep 3
	echo "and you will have a surprise awakening ..."
	sleep 3
	echo "and believe whatever you want to beleive."
	sleep 3
	echo -e "If you choose the \e[31mRED Pill \e[0m...."
	sleep 3
	echo "you stay in the Wonderland."
	sleep 3
	echo "and I show you how deep that rabbit hole goes.."
	sleep 3
	echo .
	sleep 1
	echo ..
	sleep 1
	echo ...
	sleep 3
	echo " Pills are here below... your turn choose one .."

cat <<"EOF"

  .-.    __
 | R |  /\ \
 | E |  \_\/      __           .-.
 |_D_|        __ /\ \         /:::\
 |:::|       / /\\_\/        /::::/
 |:::|       \/_/           / `-:/
 ':::'__   _____ _______   /    /
     / /\ /        |:::::\ \   /
     \/_/ \BLUE    |:::::/  `"`
        __ `"""""""""""""`
       /\ \
       \_\/

EOF


		sleep 2
		echo " "
		
		# Diaplay radio button list to choose red or blue pill
		choice=$(zenity --list --radiolist --text "Please choose the pill: " --hide-header --column "select" --column "pill color" FALSE "Blue pill" FALSE "Red pill")
		if [[ "$choice" == "Red pill" ]]
	 	then
			sleep 1
			echo -e "You chose the \e[31mRED Pill \e[0m...Good Choice ..."
			sleep 3
			echo ."Are you ready?"
			sleep 3
			echo .."Your world is about to change!"
			sleep 3
			echo ..."Come along with me to wonderland.... "
			sleep 3
			echo -e " ...Welcome ..to ..the world ..of .. \e[36mMatrix \e[0m !"
			sleep 3
			cmatrix

		elif [[ "$choice" == "Blue pill" ]]
		then
			sleep 1
			echo -e "You chose the \e[34mBLUE Pill \e[0m...the story ends..you wokeup in class as NOSA...."
			sleep 2
cat <<"EOF"
                      _______  ______
                     /    -   \/   -   \
                    / /  _   \| /_   \  \
                   /        _\ |         \
You had a         /  /       \ /|    \  \ \
BAD DREAM!!!     /   /  /   | |/      )\   \
                //     ( /   \ |/_  \      \)
                (  /    (  __ |_/_ __)      ()
               /) // /(  ) ) )/  \) (\(\ \   (
               |  ( / (\( (  (  u (   ) \   ))
               ) ( ) u ( ( )       )     ) ( /
               (  /    \) ) u        u  ((( (
                ) (  -=( /==,   ,======- ) ))
                \( )    ))               ((/
                 )(   \_((_/     \____/   )(
                 )!   '"))"  | |  """"'   (
                 ( \ u  ((   | |         /
   _________.---.-- \   ))            u / --.---._________
  / u       |   |    \  (    \_/    u  /    |   |         \
 /    u     |   |     \     _ _ _     /   u |   |     u    \
            |   | u   |\   / --- \   /|     |   |         u
            |   |     | \  ' ___ '  / |     |   |
                |        u    -    /        |
                          '-.___.-'   u
EOF


		echo " ....back to learning bash scripting for you!"
		else 
		 $(zenity --error --text "Invalid choice . You are a sheep in a Lions den.")
		fi # end of choice if clause
else  

	$(zenity --info --text "Oh no! Not interested? Okay...No problem...Good Bye!")
fi # end  of if user wants to play game

#end of the program
