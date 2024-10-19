import mysql.connector
from mysql.connector import Error

try:
# Replace with your connection details
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Serna@2003",
        database="serna"
    )

    print(mydb.get_server_info())

    if mydb.is_connected():
        mycursor = mydb.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error:
    print(f"Error connecting to MySQL: {e}")

finally:
        # Ensure the connection is closed
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
        print("MySQL connection closed.")

