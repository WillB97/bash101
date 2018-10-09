#! /bin/bash
./dir_gen.sh
dirs=( $(find $(pwd) -type d 2>/dev/null) )
for i in $(printf '%s\n' ${dirs[@]} | shuf ); do 
	cat /dev/urandom | tr -d -c '[:alpha:]'|head -c $(./random.sh 500 2000) |fold -w10 > $i/inhere
done

flag_file="$(printf '%s\n' ${dirs[@]} | shuf | head -n1)/inhere"
echo "flag{$1}" | cat - /dev/urandom | tr -d -c '[:alpha:]{}\n-'|head -c $(./random.sh 500 2000) |fold -w40 > $flag_file
chown bash0:bash1 $flag_file