#!/bin/bash

echo "Process schema files..."

for FILE in $(find . | grep '/ddl/schema/\w*.sql')
do
	echo "Processing $FILE"
	
	psql -X -h localhost -p 5432 -U postgres -d ca_st -f $FILE

	PSQL_EXIT_STATUS=$?	  
	
	echo $PSQL_EXIT_STATUS
	
	if [ $PSQL_EXIT_STATUS != 0 ]; then
		echo "psql failed while trying to run this sql script" 1>&2
		exit $PSQL_EXIT_STATUS
	fi

	echo "sql script successful"
	
done

echo "Process table files..."

for FILE in $(find . | grep '/ddl/table/\w*.\w*.sql')
do
	echo "Processing $FILE"
	
	psql -X -h localhost -p 5432 -U postgres -d ca_st -f $FILE

	PSQL_EXIT_STATUS=$?	  
	
	echo $PSQL_EXIT_STATUS

	if [ $PSQL_EXIT_STATUS != 0]; then
		echo "psql failed while trying to run this sql script" 1>&2
		exit $PSQL_EXIT_STATUS
	fi

	echo "sql script successful"
	
done

exit 0