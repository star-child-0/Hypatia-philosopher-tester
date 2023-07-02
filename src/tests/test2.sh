# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test2.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/02 17:34:07 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 17:53:01 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
UNSET='\033[0m'

#if the program prints a "died" message, print an error message
if ! [[ $(timeout $1 ./philo/philo 5 800 200 200 | grep -v "died") ]]; then
	echo -e "${RED}${BOLD}Test 2 KO!${UNSET}"
else
	echo -e "${GREEN}${BOLD}Test 2 OK!${UNSET}"
fi
