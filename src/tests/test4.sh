# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test4.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/02 18:04:55 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 18:13:06 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
UNSET='\033[0m'

#if the program prints a "died" message, print an error message
if ! [[ $(timeout $1 ./philo/philo 4 410 200 200 | grep -v "died") ]]; then
	echo -e "${RED}${BOLD}Test 4 KO!${UNSET}"
else
	echo -e "${GREEN}${BOLD}Test 4 OK!${UNSET}"
fi
