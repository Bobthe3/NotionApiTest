import requests
import os



headers = {
    "projectName": "zhikovapp",
    "Authorization": "Bearer HZCdsf="
}
url="https://api.notion.com/v1/pages"
es=requests.post(url, headers="Authorization: Bearer "+str(os.environ['NOTION_KEY'])+"")

# print(es)
print(os.environ['NOTION_KEY'])