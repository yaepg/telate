import MySQLdb

db = MySQLdb.connect(host="localhost",    # tu host, usualmente localhost
                     user="root",         # tu usuario
                     passwd="{AEpg95}X",  # tu password
                     db="escuela")        # el nombre de la base de datos

# Debes crear un objeto Cursor. Te permitirá
# ejecutar todos los queries que necesitas
cur = db.cursor()

# Usa todas las sentencias SQL que quieras
cur.execute("SELECT * FROM alumnos")

# Imprimir la primera columna de todos los registros
for row in cur.fetchall():
    print(row[0] , row[1])
