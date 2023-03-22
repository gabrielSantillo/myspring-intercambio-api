import os
from uuid import uuid4
from dbhelpers import run_statement
import smtplib
import email.message

# function responsible to the sent_data that will is going to be request.args or request.json and the
# expected_data taht is going to be the list of keys the endpoint requires
# this function will return a string in case of error and None otherwise
def check_endpoint_info(sent_data, expected_data):
    for data in expected_data:
        if (sent_data.get(data) == None):
            return f"The {data} argument is required."

# function responsible fill in data was not sent by the client when trying to update data in the db
def check_data_sent(sent_data, original_data, expected_data):
    for data in expected_data:
        if (sent_data.get(data) != None):
            original_data[data] = sent_data[data]
    return original_data

# this function is resposible to organize orders having a list that contains dictionaries with all orders made by the client
def organize_response(response):
    colleges = []
    ids = []

    for data in response:
        if (data['province_id'] in ids):
            new_college = {
                'id': data['college_id'],
                'name': data['college_name'],
                'created_at': data['created_at']
            }
            province['colleges'].append(new_college)
        else:
            ids.append(data['province_id'])

            province = {
                'id': data['province_id'],
                'province': data['province_name'],
                'colleges': [{
                    'id': data['college_id'],
                    'name': data['college_name'],
                    'created_at': data['created_at']
                }]
            }
            colleges.append(province)
    return colleges
