import requests
import json
import random

Base_Uri = "https://gorest.co.in/"
auth_token = "e34c88915b3798a2639ec4add7d15379246aa83fdc9a9427407f11cff82ab86a"


class ApiCalls:
    # GET users
    @staticmethod
    def get_users_list(self):
        try:
            url = Base_Uri + "public/v2/users"
            print("url : "+ url)
            header = {"Authorization": auth_token}
            response = requests.get(url, headers=header)
            #CHECK THE STATUS CODE
            if response.status_code == 200:
                print("The status of the GET users list" + str(response.status_code))
                json_data = response.json()
                data_header = response.headers
                print("The response of the GET users list" + response.json())
            else:
                print("THe GET API failed!")
        except Exception as e:
            print(f"Error: {e}")

#POST USers

