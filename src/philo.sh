# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    philo.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/29 19:51:32 by anvannin          #+#    #+#              #
#    Updated: 2023/06/29 20:18:54 by anvannin         ###   ########.fr        #
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

if make bonus > /dev/null 2>&1; then
	echo -e "${GREEN}${BOLD}Make bonus OK!${UNSET}"
else
	echo -e "${YELLOW}${BOLD}Make bonus missing...${UNSET}"
fi
