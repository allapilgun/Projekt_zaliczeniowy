# LazyBreakfast

"LazyBreakfast" searches for breakfast recipes based on one main available ingredient from the database. By entering chosen ingredient, login user can get an additional information about breakfast recipe (for example, preparation time, number of calories, other necessary ingredients and short recipe description). Also, login user can add a new recipe that utilize chosen ingredient. Using this application user will have more time to sit back and enjoy the most important meal of the day.


## Getting Started

### Python Version

The latest version of Python 3 is recommend to use. But Web App supports Python 2.7 or 3.4. 

### Installation

Use the following command to install Flask:
```
$ pip install Flask
```
Jinja and Werkzeug will be installed automatically when installing Flask, but if you want to install it separately you can use the following commands: 
```
$ pip install Jinja2
```
to install Jinja;

and

```
$ pip install Werkzeug
```
to install Werkzeug.

Use the following command to install SQLAlchemy:

```
$ pip install SQLAlchemy
```

## Flask Application Structure

<img width="219" alt="Application_Structure" src="https://user-images.githubusercontent.com/43549462/82710109-5a20c500-9c82-11ea-8f06-0f82c1478121.PNG">

## DB Schema

There are four tables in the DB: 'ingredients', 'recipes', 'ingredients_to_recipes', 'users'. 
  
There was used 'Many to Many Relationships'. 

Schemas for the four tables can be found below.

![database_schema2](https://user-images.githubusercontent.com/43549462/82700782-2ee0aa80-9c6f-11ea-9f3f-be329e4820f3.png)

## Run web app locally

First create a root folder, name it e.g. 'Projekt' and create a single app folder inside the root folder (for example, 'Web_application') and copy all fales from GitHub in it (like it is shown in the Flask Application Structure). Create 'database.db' by running 'baza_init.py'.
Then run 'app.py'.

Open a web browser, and navigate to the web app at http://127.0.0.1:5000/

In your terminal window, press Ctrl+C to exit the web server and stop the container.

## Author

* **Alla Pylhun** - email: *alla.pylhun@im.umg.edu.pl* 





