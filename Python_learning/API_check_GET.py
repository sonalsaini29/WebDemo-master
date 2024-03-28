import requests
import json

Base_Uri = "https://gorest.co.in/"
auth_token = "e34c88915b3798a2639ec4add7d15379246aa83fdc9a9427407f11cff82ab86a"


def get_users_list():
    try:
        url = Base_Uri + "public/v2/users"
        print("url : " + url)
        header = {"Authorization": auth_token}
        response = requests.get(url, headers=header)
        # CHECK THE STATUS CODE
        if response.status_code == 200:
            print(f"The status of the GET users list" + str(response.status_code))
            json_data = response.json()
            data_header = response.headers
            print(f"The response of the GET users list" + json.dumps(json_data))
        else:
            print("The GET API failed!")
    except Exception as e:
        print(f"Error: {e}")

# POST Users
