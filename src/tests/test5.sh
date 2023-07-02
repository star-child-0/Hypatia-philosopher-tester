# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test5.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/02 18:04:53 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 18:33:28 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
UNSET='\033[0m'

# if the program prints doesen't terminate with a "died" message
# print an error message
if ! [[ $(./philo/philo 4 310 200 100 | grep -v "died") ]]; then
	echo -e "${RED}${BOLD}Test 5 KO!${UNSET}"
else
	echo -e "${GREEN}${BOLD}Test 5 OK!${UNSET}"
fi
