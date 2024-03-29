#! /bin/bash
./dir_gen.sh
dirs=( $(find $(pwd) -type d 2>/dev/null) )
for i in $(printf '%s\n' ${dirs[@]} | shuf ); do 
	cat /dev/urandom | tr -d -c '[:alpha:]'|head -c $(./random.sh 500 2000) |fold -w10 > $i/inhere
done

rm inhere
echo "flag{$1}" | cat - /dev/urandom | tr -d -c '[:print:]{}\n-'|head -c 1033 |fold -w45 |head -c 1033 > $(printf '%s\n' ${dirs[@]} | shuf | head -n1)/inhere