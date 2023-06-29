#!/bin/sh

# color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
UNSET='\033[0m'

# if the philo folder does not exist, print an error message and exit
if ! [[ -d "philo" ]]; then
	echo -e "${RED}${BOLD}philo folder not found!${UNSET}"
	exit
fi

# execute norminette on all .c and .h files in the current project folder
# instead of printing "OK!" messages, print "Norminette OK!" if there are no errors
# if there are any errors, print "Norminette KO!" and the errors
if [[ -z $(find . '(' -type f -name "*.c" -o -name "*.h" ')' -exec norminette {} \; | grep -v "OK!") ]]; then
	echo -e "${GREEN}${BOLD}Norminette OK!${NC}${UNSET}"
else
	echo -e "${RED}${BOLD}Norminette KO!${UNSET}"
	echo -e "${RED}$(find . '(' -type f -name "*.c" -o -name "*.h" ')' -exec norminette {} \; | grep -v "OK!")${UNSET}"
fi

cd ../philo

# if the makefile exists, print a success message
# if it does not exist, print an error message
if [[ -f "Makefile" ]]; then
	echo -e "${GREEN}${BOLD}Makefile OK!${UNSET}"
else
	echo -e "${RED}${BOLD}Makefile KO!${UNSET}"
fi

# if the makefile doesen't have a $(NAME) rule, print an error message
# if it does have a $(NAME) rule, print a success message
if grep -q "{NAME}" Makefile; then
	echo -e "${GREEN}${BOLD}NAME rule OK!${UNSET}"
elif grep -q "(NAME)" Makefile; then
	echo -e "${GREEN}${BOLD}NAME rule OK!${UNSET}"
else
	echo -e "${RED}${BOLD}NAME rule KO!${UNSET}"
fi

# try to compile using make, and hide the output
# if it fails, print an error message and hide the output
# if it succeeds, print a success message
if make > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}Make OK!${UNSET}"
else
	echo -e "${RED}${BOLD}Make KO!${UNSET}"
fi

if make clean > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}Make clean OK!${UNSET}"
else
	echo -e "${RED}${BOLD}Make clean KO!${UNSET}"
fi

if make fclean > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}Make fclean OK!${UNSET}"
else
	echo -e "${RED}${BOLD}Make fclean KO!${UNSET}"
fi

if make re > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}Make re OK!${UNSET}"
else
	echo -e "${RED}${BOLD}Make re KO!${UNSET}"
fi
