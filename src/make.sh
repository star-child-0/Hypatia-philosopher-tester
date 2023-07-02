# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    make.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/29 19:51:32 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 18:40:02 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
UNSET='\033[0m'

# if the philo folder does not exist, print an error message and exit
if ! [[ -d "philo" ]]; then
	echo -e "${RED}${BOLD}philo folder not found!${UNSET}"
	exit
fi

cd philo

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

if grep -q "*.c" Makefile; then
	echo -e "${RED}${BOLD}Wildcards KO!${UNSET}"
else
	echo -e "${GREEN}${BOLD}Wildcards OK!${UNSET}"
fi

# try to compile using make, and hide the output
# if it fails, print an error message and hide the output
# if it succeeds, print a success message
if make > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}make rule OK!${UNSET}"
else
	echo -e "${RED}${BOLD}make rule KO!${UNSET}"
fi

if make clean > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}make clean rule OK!${UNSET}"
else
	echo -e "${RED}${BOLD}make clean rule KO!${UNSET}"
fi

if make fclean > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}make fclean rule OK!${UNSET}"
else
	echo -e "${RED}${BOLD}make fclean rule KO!${UNSET}"
fi

if make re > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}make re rule OK!${UNSET}"
else
	echo -e "${RED}${BOLD}make re rule KO!${UNSET}"
fi

# the bonus rule technically does not apply to this project
# because the bonus part is a different project with its own makefile
# but I check if the rule exists for the sake of completeness :)
if make bonus > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}make bonus rule OK!${UNSET}"
else
	echo -e "${YELLOW}${BOLD}make bonus rule missing...${UNSET}"
fi
