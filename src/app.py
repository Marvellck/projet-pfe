
from flask import Flask , render_template,request,redirect,url_for,jsonify
from flask_pymongo import PyMongo
import os

app = Flask(__name__)

app.config["MONGO_URI"] = os.getenv('MONGO_URI')

mongo = PyMongo(app)
db = mongo.db
books_collection = db.books


@app.route('/')
def home():
    return render_template('home.html')


@app.route('/my-home', methods=['GET', 'POST'])
def my_home():
    if request.method == 'POST':     
        inserer = request.form['inserer']
        books_collection.insert_many([
            {'title': 'A Fire Upon the Deep', 'author':'Vernor Vinge', 'first_sentence': 'The coldsleep itself was dreamless','year_published': '1992'},
            {'title': 'The Ones Who Walk Away From Omelas', 'author':'Ursula K. Le Guin', 'first_sentence': 'With a clamor of bells that set the swallows soaring,the festival of Summer came to the city Omelas,bright-towered by the sea','year_published': '1973'},
            {'title': 'Dhalgren', 'author':'Samuel R. Delany', 'first_sentence': 'to wound the autumnal city','year_published': '1975'},
            {'title': inserer, 'author': 'None','first_sentence': 'None', 'year_published': 'None'}])
             
             
        data = books_collection.find()  
        
        return render_template('my_home.html', data=data , books_collection=books_collection)

        


