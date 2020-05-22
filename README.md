# LazyBreakfast

"LazyBreakfast" searches for breakfast recipes based on one main available ingredient from the database. By entering chosen ingredient, login user can get an additional information about breakfast recipe (for example, preparation time, number of calories, other necessary ingredients and short recipe description). Also, login user can add a new recipe that utilize chosen ingredient. Using this application user will have more time to sit back and enjoy the most important meal of the day.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Compatibility

Flask-RestPlus requires Python 2.7 or 3.4+.

```
Give examples
```

### Installation

A step by step series of examples that tell you how to get a development env running

You can install Flask-Restplus with pip:

```
$ pip install flask-restplus
```

And repeat

```
until finished
```

## Code

#### Configuration file structure

The file structure is broken down to ensure each .py file serves a single purpose.
app.py - 
auth.py - 
bd.py - 
baza_init.py - 

## DB Schema

There are four tables in the DB:
  1) 'ingredients' -
  2) 'recipes' - 
  3) 'ingredients_to_recipes - 
  4) 'users' - 
  
There was used 'Many to Many Relationships'. 

Schemas for the four tables can be found below.

![database_schema2](https://user-images.githubusercontent.com/43549462/82700782-2ee0aa80-9c6f-11ea-9f3f-be329e4820f3.png)

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.



## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
