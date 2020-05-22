from flask import Flask, render_template, request, session, redirect

from auth import auth_bp, login_required
from db import get_connection
import sqlite3

app = Flask(__name__,template_folder='templates')
app.secret_key = 'tajny-klucz-9523'
app.register_blueprint(auth_bp)


@app.route('/')
def index():
    conn = get_connection()
    c = conn.cursor()

    context = {
        'id': session.get('user_id'),
        'username': session.get('username')
    }

    return render_template('index.html', **context)


@app.route('/select_form')
@login_required
def select_form():
    conn = get_connection()
    c = conn.cursor()

    result = c.execute('SELECT * FROM "ingredients" order by "name"')
    ingredients = result.fetchall()

    context = {
        'ingredients': ingredients
    }

    return render_template('select.html', **context)


@app.route('/add_form')
@login_required
def add_form():
    conn = get_connection()
    c = conn.cursor()

    result = c.execute('SELECT * FROM "ingredients"')
    ingredients = result.fetchall()

    context = {
        'ingredients': ingredients
    }

    return render_template('add.html', **context)


@app.route('/select_ingredients', methods=['POST'])
@login_required
def recipes():
    name01 = request.form['name']

    conn = get_connection()
    c = conn.cursor()

    if len(name01) > 0:
        result = c.execute("""
            SELECT r.*
            FROM ingredients AS i 
            JOIN ingredients_to_recipes AS itr 
            JOIN recipes AS r 
            ON i.id = itr.id_ingredients 
            AND itr.id_recipes = r.id 
            WHERE i.name = ?""", (name01,))

        recipes = result.fetchall()

        context = {
            'recipes': recipes
        }

        return render_template('result.html', **context)

    elif len(name01) == 0:
        result = c.execute('SELECT * FROM "ingredients" order by "name"')
        ingredients = result.fetchall()

        context = {
            'ingredients': ingredients
        }

        return render_template('select.html', **context)


@app.route('/add_recipe', methods=['POST'])
@login_required
def add_recipe():
    name = request.form.get('name')
    minutes = request.form.get('minutes')
    calories = request.form.get('calories')
    ingredients = request.form.get('ingredients')
    recipe = request.form.get('recipe')

    id = request.form.get('id')

    conn = get_connection()
    c = conn.cursor()

    query00 = 'INSERT INTO recipes ("name", "minutes", "calories", "ingredients", "recipe") ' \
              'VALUES (?, ?, ?, ?, ?)'
    params00 = (name, minutes, calories, ingredients, recipe)

    try:
        c.execute(query00, params00)
        last_id = c.lastrowid
        query01 = 'INSERT INTO ingredients_to_recipes ("id_ingredients", "id_recipes") ' \
                  'VALUES (?, ?)'
        params01 = (id, last_id)
        c.execute(query01, params01)
    except sqlite3.OperationalError:
        return "Bad Request", 400

    query02 = 'SELECT * FROM ingredients'

    try:
        c.execute(query02)
    except sqlite3.OperationalError:
        return "Bad Request", 400

    conn.commit()


    result = c.execute("""
    SELECT r.*
        FROM ingredients AS i 
        JOIN ingredients_to_recipes AS itr 
        JOIN recipes AS r 
        ON i.id = itr.id_ingredients 
        AND itr.id_recipes = r.id 
        WHERE i.id = ?""", (id,))

    recipes = result.fetchall()

    context = {
        'recipes': recipes
    }

    return render_template('result.html', **context)


if __name__ == '__main__':
    app.run(debug=True)
