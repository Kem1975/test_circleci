#!/bin/bash

find . | grep '~/tmp/ddl/table/*.*.sql' > files.txt

for FILE in $(cat files.txt)
do
	echo "Processing $f"
	
	psql -X -h localhost -p 5432 -U postgres -d ca_st -a -f $FILE

	   psql_exit_status = $?	  

	   if [ $psql_exit_status != 0 ]; then
		 echo "psql failed while trying to run this sql script" 1>&2
		 exit $psql_exit_status
	   fi

	   echo "sql script successful"
	exit 0
	
done