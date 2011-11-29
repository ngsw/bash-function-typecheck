#Color Scheme
#http://d.hatena.ne.jp/daijiroc/20090207/1233980551
function yellow_echo { echo -e "\e[33m$*\e[m"; }
function    red_echo { echo -e "\e[41;37m$*\e[m"; }

function typecheck()
{
  if [ "$#" = "1" ]; then
    password=`mkpasswd -l ${1}  -s 0`
  else
    password=`mkpasswd -l 6 -s 0`
  fi

  echo -e "`recho if run , enter this code`:`yellow_echo ${password}`\n"
  echo -n "type code:"
  read readpassword
  if [ "${password}" = "${readpassword}" ];then
    yellow_echo '[OK]'
    true
  else
    red_echo '[NG]'
    false
  fi
}
