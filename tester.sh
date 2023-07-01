# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tester.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/29 19:51:28 by anvannin          #+#    #+#              #
#    Updated: 2023/06/30 21:47:42 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# color codes
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
UNSET='\033[0m'

echo -e "${BLUE}${BOLD} $(< $(find . -name "banner"))${UNSET}"
echo -e "${YELLOW}          let's get started...\n${UNSET}"

if [[ $1 == "norminette" ]]; then
	./hypatia/src/norminette.sh
elif [[ $1 == "philo" ]]; then
	./hypatia/src/philo.sh
elif ! [[ $1 ]]; then
	./hypatia/src/norminette.sh
	./hypatia/src/philo.sh
else
	echo -e "${RED}${BOLD}Invalid argument!${UNSET}"
fi
