# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    philo.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/02 17:33:30 by anvannin          #+#    #+#              #
#    Updated: 2023/07/02 18:28:06 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
UNSET='\033[0m'

echo -e "${YELLOW}\n        🍝 it's dining time 🍝${UNSET}"

./hypatia/src/tests/test1.sh &
wait
./hypatia/src/tests/test2.sh $1 &
wait
./hypatia/src/tests/test3.sh &
wait
./hypatia/src/tests/test4.sh $1 &
wait
./hypatia/src/tests/test5.sh &
wait
