sed envsubst
Created Sunday 14 January 2024
======================================

sed '/^#/d'     Удалить все строки, начинающиеся с #, из файла
sed '/^:space:*$/d'    Удалить все пустые  строки
sed 's/#.*//g'    заменить строки начинающиеся с # на пустые строки

=========================================

(venv312) [adm7@C77 envsubst]$ cat eexport_user-pass.sh 
export NEW_USERNAME="user123"
export NEW_PASSWORD="qqq111qqq111"

=========================================
(venv312) [adm7@C77 envsubst]$ cat sample.txt 
username=$NEW_USERNAME
password=$NEW_PASSWORD
#

# remrem rem 
#eof

=========================================
(venv312) [adm7@C77 envsubst]$ cat sample.txt | envsubst |sed '/^:space:*$/d' | sed '/^#/d'
username=user123
password=qqq111qqq111

