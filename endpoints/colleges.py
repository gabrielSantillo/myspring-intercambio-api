from flask import request, make_response
from apihelpers import check_endpoint_info, organize_response
import json
from dbhelpers import run_statement

def post():
    is_valid = check_endpoint_info(request.json, ['province_id', 'college_name'])
    if(is_valid != None):
        return make_response(json.dumps(is_valid, default=str), 400)

    results = run_statement('CALL add_college(?,?)', [request.json.get('province_id'), 
    request.json.get('college_name')])

    if(type(results) == list and len(results) != 0):
        return make_response(json.dumps(results, default=str), 200)
    else:
        return make_response(json.dumps("Sorry, an error has occurred.", default=str), 500)
    
def get():
    is_valid = check_endpoint_info(request.args, ['province_id'])
    if(is_valid != None):
        return make_response(json.dumps(is_valid, default=str), 400)

    results = run_statement('CALL get_colleges(?)', 
    [request.args.get('province_id')])

    if(type(results) == list and len(results) != 0):
        colleges = organize_response(results)
        return make_response(json.dumps(colleges, default=str), 200)
    elif(type(results) == list and len(results) == 0):
        return make_response(json.dumps("Wrong college id.", default=str), 
        400)
    else:
        return make_response(json.dumps("Sorry, an error has occurred.", default=str), 500)