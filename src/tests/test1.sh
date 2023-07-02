# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test1.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/02 17:21:37 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 18:08:58 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
UNSET='\033[0m'

# if the program prints anything different than
# "has taken a fork", "has taken the right fork", "has taken the left fork"
# or "died", print an error message
if [[ $(./philo/philo 1 800 200 200 | grep -v "has taken a fork" \
	| grep -v "has taken the right fork" | grep -v "has taken the left fork"\
	| grep -v "died") ]]; then
	echo -e "${RED}${BOLD}Test 1 KO!${UNSET}"
else
	echo -e "${GREEN}${BOLD}Test 1 OK!${UNSET}"
fi
