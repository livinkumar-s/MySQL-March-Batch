import mysql.connector
from urllib.parse import urlparse

url="mysql://root:BZwpjWofofUvDfcJEPQaQKNxXvGIzrkM@hopper.proxy.rlwy.net:25985/railway"

parsed=urlparse(url)

app = mysql.connector.connect(
    host=parsed.hostname,
    port=int(parsed.port),
    username=parsed.username,
    password=parsed.password,
    database = parsed.path[1:]
)

cursor=app.cursor()

print("Database Successfully connected...!")

def addContact():
    name=input("Enter Contact Name: ")
    phone= input("Enter Contact Number: ")
    cursor.execute("INSERT INTO contacts (name, phone, createdAt, updatedAt) VALUE (%s,%s,now(),now())",[name,phone])
    app.commit()
    print("Contact is added Successfully...!")

def showAllContact():
    cursor.execute("SELECT name,phone FROM contacts ORDER BY name ASC")
    for con in cursor.fetchall():
        print(f'Name: {con[0]} Phone: {con[1]}')

def searchContact():
    text = input("Search Contact Here: ")
    cursor.execute("SELECT name,phone FROM contacts WHERE name like %s OR phone like %s ORDER BY name ASC", [f'%{text}%',f'%{text}%'])
    for con in cursor.fetchall():
        print(f'Name: {con[0]} Phone: {con[1]}')
def updateContact():
    text = input("Search Contact Here: ")
    cursor.execute("SELECT name,phone,conactId FROM contacts WHERE name like %s OR phone like %s ORDER BY name ASC", [f'%{text}%',f'%{text}%'])
    i=0
    data=cursor.fetchall()
    for con in data:
        print(f'{i+1} --> Name: {con[0]} Phone: {con[1]}')
        i+=1
    chooseContact=int(input("Choose The Contact To Update: "))
    contactId=data[chooseContact-1][2]
    name=input("Enter Contact Name: ")
    phone= input("Enter Contact Number: ")
    cursor.execute("UPDATE contacts SET name=%s, phone=%s, updatedAt=now() where conactId=%s",[name,phone,contactId])
    app.commit()
    print("Updated Successfully...!")

def deleteContact():
    return

while 1:
    inp = int(input("0--->Exit\n1--->Add Contact\n2--->Show All Contact\n3--->Search Contact\n4--->Update Contact\n5--->Delete Contact\nChoose your Option: "))

    if inp==0:
        break
    elif inp==1:
        addContact()
    elif inp==2:
        showAllContact()
    elif inp==3:
        searchContact()
    elif inp==4:
        updateContact()
    elif inp==5:
        deleteContact()