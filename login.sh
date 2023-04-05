#! /bin/bash
#Type your login details
read -p 'Username: ' user
read -sp 'Password: ' pass

if (( $user == "mca" && $pass == "mca" ))
then
	echo -e "\nWelcome! You are Sucessfull login\n"
else
	echo -e "\nUnsuccessful login\n"
fi
