#!/bin/bash

POSTGRES_USER=$1
POSTGRES_HOST=$2
POSTGRES_DB=$3

echo $POSTGRES_USER
echo $POSTGRES_HOST
echo $POSTGRES_DB

pattern_array=( "/ddl/schema/\w*.sql" "/ddl/table/\w*.\w*.sql" )

for PATTERN in "${pattern_array[@]}"
do
	echo $PATTERN
	for FILE IN $(find . | grep $PATTERN)
	do
		echo "Processing $FILE"
		
		psql  -v ON_ERROR_STOP=1 -X -h $POSTGRES_HOST -p 5432 -U $POSTGRES_USER -d $POSTGRES_DB -f $FILE

		PSQL_EXIT_STATUS=$?	  
		
		echo $PSQL_EXIT_STATUS
		
		if [ $PSQL_EXIT_STATUS != 0 ]; then
			echo "psql failed while trying to run this sql script" 1>&2
			exit $PSQL_EXIT_STATUS
		fi

		echo "sql script successful"
		
	done
done
#echo "Process table files..."
#
#for FILE in $(find . | grep '/ddl/table/\w*.\w*.sql')
#do
#	echo "Processing $FILE"
#	
#	psql  -v ON_ERROR_STOP=1 -X -h $POSTGRES_HOST -p 5432 -U $POSTGRES_USER -d $POSTGRES_DB -f $FILE
#
#	PSQL_EXIT_STATUS=$?	  
#	
#	echo $PSQL_EXIT_STATUS
#
#	if [ $PSQL_EXIT_STATUS != 0 ]; then
#		echo "psql failed while trying to run this sql script" 1>&2
#		exit $PSQL_EXIT_STATUS
#	fi
#
#	echo "sql script successful"
#	
#done

exit 0