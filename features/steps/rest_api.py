import requests
from behave import *
from hamcrest import *


@when('Make a get request')
def make_get_request_to_api(context):
    context.resp= requests.get("https://reqres.in/api/users?page=2")
    assert_that(context.resp.status_code, equal_to(200))

@then('Check if users list is returned')
def check_user_list(context):
    assert_that(len(context.resp.json()),greater_than(5))

@then("Check if user's data is correct")
def check_user_list(context):
    expected_data={
        "id":7
    }
    actual_data={
        "id":context.resp.json().get('data')[0].get("id")
    }
    assert_that(expected_data,equal_to(actual_data))