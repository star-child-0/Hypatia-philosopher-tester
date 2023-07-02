# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tester.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/29 19:51:28 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 18:38:13 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# color codes
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
UNSET='\033[0m'

# variables
if [[ $2 ]]; then
	timeout=$2
else
	timeout=15
fi

echo -e "${BLUE}${BOLD} $(< $(find . -name "banner"))${UNSET}"
echo -e "${YELLOW}          let's get started...\n${UNSET}"

if [[ $1 == "norminette" ]]; then
	./hypatia/src/norminette.sh
elif [[ $1 == "make" ]]; then
	./hypatia/src/make.sh
elif [[ $1 == "philo" ]]; then

	./hypatia/src/philo.sh $timeout
elif ! [[ $1 ]]; then
	./hypatia/src/norminette.sh
	./hypatia/src/make.sh
	./hypatia/src/philo.sh $timeout
else
	echo -e "${RED}${BOLD}Invalid argument!${UNSET}"
fi
