### **YaTube API v1**

Simple Django REST API project. 

**Project documentation**: `http://localhost:8000/redoc/`

####**How to install:**
1. Creating Virtual Environment:
<br> `$ python -m venv venv`
2. Requirements installing:
<br> `$ pip install -r requirements.txt`
3. Сreating and applying migrations:
<br> `$ python manage.py makemigrations` and `$ python manage.py migrate`
4. Start Django server: 
<br> `$ python manage.py runserver`
####**Requests example:**
_Getting a Token_: 
<br>First, you need to send a POST request to 
`http://localhost/api/v1/token/` 
then send your username and password in form-data to get token. 
<br>Further in the headers you must pass the key `Authorization` and value
`Bearer *your token*`
<br>_Post creation_: 
<br>Send POST-request to `http://localhost/api/v1/posts/`
in form-data in the text field, specify the content of your post. 
<br>The created post is assigned a unique number 'ID'


