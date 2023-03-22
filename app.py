from flask import Flask
from dbcreds import production_mode
from flask_cors import CORS
import endpoints.provinces, endpoints.colleges

# calling the Flask function which will return a value that will be used in my API
app = Flask(__name__)
CORS(app)


######### PROVINCE ##########
@app.post('/api/provinces')
def post_province():
    return endpoints.provinces.post()


@app.get('/api/provinces')
def get_provinces():
    return endpoints.provinces.get()

######### COLLEGE ##########
@app.post('/api/colleges')
def post_college():
    return endpoints.colleges.post()


# if statement to check if the production_mode variable is true, if yes, run in production mode, if not, run in testing mode
if (production_mode):
    print("Running in Production Mode")
    import bjoern  # type: ignore
    bjoern.run(app, "0.0.0.0", 5075)
else:
    from flask_cors import CORS
    CORS(app)
    print("Running in Testing Mode")

    app.run(debug=True)