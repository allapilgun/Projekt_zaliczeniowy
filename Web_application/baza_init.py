import sqlite3


def execute_script(cursor, script_file):
    with open(script_file, encoding='utf-8') as f:
        query = f.read()
    cursor.executescript(query)


if __name__ == '__main__':
    conn = sqlite3.connect('database.db')
    cursor = conn.cursor()

    execute_script(cursor, 'sql/00_drop_tables.sql')
    execute_script(cursor, 'sql/users_hashed_init.sql')
    execute_script(cursor, 'sql/01_ingredients_init.sql')
    execute_script(cursor, 'sql/02_recipes_init.sql')
    execute_script(cursor, 'sql/03_ingredients_to_recipes_init.sql')

    conn.commit()
    conn.close()
