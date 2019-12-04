#!/bin/bash
for FILE in $(find . | grep 'ddl/table/*.*.sql')
do
	echo "Processing $f"
	
	psql \
	  -X \
	  -U $POSTGRES_USER \
	  -h $POSTGRES_HOST \
	  -f $FILE \
	  --echo-all \
	  --set AUTOCOMMIT=off \
	  --set ON_ERROR_STOP=on \	  
	   $POSTGRES_DB

	   psql_exit_status = $?

	   if [ $psql_exit_status != 0 ]; then
		 echo "psql failed while trying to run this sql script" 1>&2
		 exit $psql_exit_status
	   fi

	   echo "sql script successful"
	exit 0
	
done