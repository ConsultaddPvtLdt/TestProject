from flask import Flask
app = Flask(__name__)

@app.route('/home')
def hello_world():
    return 'Hello, World!'

@app.route('/about')
def fun1():
    return 'Inside about!'

@app.route('/gk')
def fun2():
    return 'Hello GK!'

if __name__=='__main__':
	app.run(debug=True, host='0.0.0.0')


