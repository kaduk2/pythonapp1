from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def just_run():
    return render_template('index.html')

app.run(host = '0.0.0.0') #0.0.0.0 bindati all'indirizzo che docker ti darà 


