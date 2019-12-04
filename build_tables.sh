#!/bin/bash

echo "Process schema files..."

for FILE in $(find . | grep '/ddl/schema/\w*.sql')
do
	echo "Processing $FILE"
	
	psql -X -h localhost -p 5432 -U postgres -d ca_st -f $FILE

	psql_exit_status = $?	  
	
	echo $psql_exit_status

	if [ $psql_exit_status != 0 ]; then
		echo "psql failed while trying to run this sql script" 1>&2
		exit $psql_exit_status
	fi

	echo "sql script successful"
	exit 0
	
done

echo "Process table files..."

for FILE in $(find . | grep '/ddl/table/\w*.\w*.sql')
do
	echo "Processing $FILE"
	
	psql -X -h localhost -p 5432 -U postgres -d ca_st -f $FILE

	psql_exit_status = $?	  
	
	echo $psql_exit_status

	if [ $psql_exit_status != 0 ]; then
		echo "psql failed while trying to run this sql script" 1>&2
		exit $psql_exit_status
	fi

	echo "sql script successful"
	exit 0
	
done