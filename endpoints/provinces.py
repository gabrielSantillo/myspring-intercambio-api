from uuid import uuid4
from flask import request, make_response
from apihelpers import check_endpoint_info, check_data_sent
import secrets
import json
from dbhelpers import run_statement

def post():
    is_valid = check_endpoint_info(request.json, ['province_name'])
    if(is_valid != None):
        return make_response(json.dumps(is_valid, default=str), 400)

    results = run_statement('CALL add_province(?)', [request.json.get('province_name')])

    if(type(results) == list and len(results) != 0):
        return make_response(json.dumps(results, default=str), 200)
    else:
        return make_response(json.dumps("Sorry, an error has occurred.", default=str), 500)
    
def get():
    results = run_statement('CALL get_provinces()')

    if(type(results) == list and len(results) != 0):
        return make_response(json.dumps(results, default=str), 200)
    else:
        return make_response(json.dumps("Sorry, an error has occurred.", default=str), 500)