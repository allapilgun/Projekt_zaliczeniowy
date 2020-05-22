# LazyBreakfast

"LazyBreakfast" searches for breakfast recipes based on one main available ingredient from the database. By entering chosen ingredient, login user can get an additional information about breakfast recipe (for example, preparation time, number of calories, other necessary ingredients and short recipe description). Also, login user can add a new recipe that utilize chosen ingredient. Using this application user will have more time to sit back and enjoy the most important meal of the day.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

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

<img width="137" alt="Application_Structure" src="https://user-images.githubusercontent.com/43549462/82705096-46239600-9c77-11ea-9419-0ea47a2bf1a3.PNG">

## DB Schema

There are four tables in the DB: 'ingredients', 'recipes', 'ingredients_to_recipes', 'users'. 
  
There was used 'Many to Many Relationships'. 

Schemas for the four tables can be found below.

![database_schema2](https://user-images.githubusercontent.com/43549462/82700782-2ee0aa80-9c6f-11ea-9f3f-be329e4820f3.png)

## Run web app locally



## Author

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.




