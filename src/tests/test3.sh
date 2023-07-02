# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test3.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/02 18:04:58 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 18:33:09 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
UNSET='\033[0m'

#if the program doesn't print a "full" or "satiated" message,
# print an error message
if ! [[ $(./philo/philo 5 800 200 200 7 | grep -v "full" \
	| grep -v "satiated") ]]; then
	echo -e "${RED}${BOLD}Test 3 KO!${UNSET}"
else
	echo -e "${GREEN}${BOLD}Test 3 OK!${UNSET}"
fi
