# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    norminette.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anvannin <anvannin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/29 19:51:23 by anvannin          #+#    #+#              #
#    Updated: 2023/08/11 09:06:08 by anvannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BOLD='\033[1m'
UNSET='\033[0m'

# execute norminette on all .c and .h files in the current project folder
# instead of printing "OK!" messages, print "Norminette OK!" if there are no errors
# if there are any errors, print "Norminette KO!" and the errors
# if norminette is not found, print an error message and exit
if ! [[ $(norminette > /dev/null 2>&1) ]]; then
	echo -e "${YELLOW}${BOLD}Norminette not found...${UNSET}"
	exit 1
elif [[ -z $(find . '(' -type f -name "*.c" -o -name "*.h" ')' -exec norminette {} \; | grep -v "OK!") ]]; then
	echo -e "${GREEN}${BOLD}Norminette OK!${UNSET}"
else
	echo -e "${RED}${BOLD}Norminette KO!${UNSET}"
	echo -e "${RED}$(find . '(' -type f -name "*.c" -o -name "*.h" ')' -exec norminette {} \; | grep -v "OK!")${UNSET}"
fi
