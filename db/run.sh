for i in schema app-user master-data; 
mysql -h ${DB_HOST} -u${DB_USER} -p${DB_PASS} < /app/db/$1.sql
done