#!/bin/sh
## @file origin.sh
## @brief Runs the cooles things in the world.
## @author Uli Wolf
## @date 2016-06-08
## @copyright Released under the WTFPL
## @details This script provides the required code to run code that is cooler than anybody elses code
#######################################################################################################################
## @mainpage MyFile Docs
## This line shows a quick overview of what the Project does
## @tableofcontents
## @section secoverview Overview
## Now this section shows really the details.
## @section secprerequisites Prerequisites
## This describes the minimum requirements to run this script
## @subsection subsecdatabase Prerequisites: Database
## * No database is required currently
## @subsection subsecagentversions Prerequisites: Minimum Version of the Agents
## The minimum level of the respective are:
## * What Agents?
## @section secintro Installation
## Here you could show how to install the script
## @section secexecution Execution
## The script is executed like this. The usage of the user root is forbidden.
## ```{.sh}
## myfile.sh
## ```
#######################################################################################################################
# Various Variable definitions
## @var V_INTERNALSTARTTIME
## @brief This holds the starttime
## @showinitializer
## @details Time is measured in seconds since 1st. of January 1970. The value will be used to later calculate the
## runtime of the script.
declare V_INTERNALSTARTTIME=$(date +%s);

## @var V_CURRENTTIMESTAMP
## @brief This holds the date in YYMMDD-HHMMSS format
## @showinitializer
declare V_CURRENTTIMESTAMP=$(date +%y%m%d-%H%M%S);

## @var V_HOSTNAME
## @brief This holds the hostname of the local system
## @showinitializer
declare V_HOSTNAME=$(hostname -s);

## @var D_SCRIPT
## @brief The local directory of the script
## @showinitializer
declare -x D_SCRIPT=$(cd $(dirname $0) && pwd);
export D_SCRIPT

## @fn func_check_user_root()
## @author Uli Wolf The Second
## @brief Check User root
## @retval 0 if the user is root
## @retval 1 if the user is not root
## @details Checks if the current user is root
func_check_user_root() {
 local CURRENTUSER=`whoami`;
 if [[ $CURRENTUSER != "root" ]]; then
 return 1;
 else
 return 0;
 fi
}

if [[ $(func_check_user_root) == 1 ]]; then
 echo "You are really not using root - awesome!";
fi