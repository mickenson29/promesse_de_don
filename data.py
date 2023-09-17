import pymysql

# Configuration MySQL
MYSQL_HOST = 'localhost'
MYSQL_USER = 'root'
MYSQL_PASSWORD = '*Poleespoire29*'
MYSQL_DB = 'Promesse_don'

# Initialisation de la connexion à MySQL
mysql = pymysql.connect(host=MYSQL_HOST,
                       user=MYSQL_USER,
                       password=MYSQL_PASSWORD,
                       db=MYSQL_DB)

# Renvoie la connexion MySQL
def get_mysql_connection():
    return mysql