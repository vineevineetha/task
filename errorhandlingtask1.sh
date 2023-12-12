

#bin/bash
check_root() {
if [ "$(id-u)" -ne 0 ]; then
  echo "This script run as root"
  exit
fi
}


create_user() {
  local username=$1
if id "$username" &>/dev/null;then
 echo "error: user '$username'already exists"
 exit
else
  useradd "$username"
if [ $? -eq 0 ];then
  echo "user '$username'created succesfully"
else
 echo "failed to create user $username"
exit
fi
fi
}


delete_user() {
  local user=$1
if id "$username" &>/dev/null;then
  userdel "$username"
  if [ $? -eq 0 ]; then
   echo "user '$username' deleted successfully"
  else
   echo "failed to deleted user 'username'"
   exit
  fi
else
  echo "error user $username does not exit"
  exit
 fi


check_root
if ["$#" -lt 2 ]; then
  echo "user: $0 [-c|-d]username"
  exit
fi

case "$1" in
   -c) create_user "$2" ;;
   -d) delete_user "$2" ;;
   *)echo "invalid option: $1.use -c to create or -d to delete a user"; 
exit;;
esac
