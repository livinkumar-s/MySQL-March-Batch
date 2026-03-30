import mysql.connector

conn=mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    port=3306,
    database="marchbatch"
)
print("Connection Successful...!")

cursor=conn.cursor()

# CREATE
# cursor.execute("INSERT INTO actors (actorId,name,actorage) values (%s,%s,%s)",(3,"Surya",51))
# conn.commit()

# READ 
# cursor.execute("SELECT * FROM actors WHERE actorage>%s",(52,))
# print(cursor.fetchall())

# UPDATE
# cursor.execute("UPDATE actors SET actorage=52 WHERE actorId=%s",[3])
# conn.commit()

cursor.execute()