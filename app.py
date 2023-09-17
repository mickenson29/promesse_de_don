from flask import Flask, render_template, request
from data import get_mysql_connection

app = Flask(__name__)

# Page d'accueil
@app.route('/')
def index():
    return render_template('index.html')

# Formulaire de don
@app.route('/donation', methods=['GET', 'POST'])
def donation():
    if request.method == 'POST':
        nom = request.form['nom']
        prenom = request.form['prenom']
        adresse = request.form['adresse']
        email = request.form['email']
        somme = request.form['somme']
        conditions = int(request.form.get('conditions', 0))  # Si la case est cochée, 1 sinon 0

        # Obtenez la connexion MySQL
        mysql = get_mysql_connection()

        cur = mysql.cursor()
        cur.execute("INSERT INTO promesse_don (nom, prenom, adresse, email, somme_proise, conditions_acceptees) VALUES (%s, %s, %s, %s, %s, %s)",
                    (nom, prenom, adresse, email, somme, conditions))
        mysql.commit()
        cur.close()

        return 'Promesse de don enregistrée avec succès!'
    return render_template('donation_form.html')

# Liste des promesses de don
@app.route('/promesses_don')
def promesses_don():
    # Obtenez la connexion MySQL
    mysql = get_mysql_connection()

    cur = mysql.cursor()
    cur.execute("SELECT * FROM promesse_don")
    promesses = cur.fetchall()
    cur.close()

    return render_template('donation_list.html', promesses=promesses)

if __name__ == '__main__':
    app.run(debug=True)




