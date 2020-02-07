echo "Designed to test script execution on Linux"
echo "For Ubuntu Server 18.04 LTS (bionic beaver)"

helpFunction()
{
   echo ""
   echo "Usage: $0 -u user -t type -h"
   echo -e "\t-u Username goes here"
   echo -e "\t-t Put the type of user here"
   echo -e "\t-h Display this help"
   exit 1 # Exit script after printing help
}

while getopts "u:t:h:" opt
do
   case "$opt" in
      u ) parameterU="$OPTARG" ;;
      t ) parameterT="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$parameterU" ] || [ -z "$parameterT" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

# Begin script in case all parameters are correct
echo "$parameterU"
echo "$parameterT"
echo "Help not displayed."
