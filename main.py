import requests
import os


headers1 = {
    "Authorization": "Bearer "+str(os.environ['NOTION_KEY']),
    "Content-Type":"application/json",
    "Notion-Version":"2021-05-13"
}

data1 = {
    "parent":"{","database_id" : str(os.environ['NOTION_DATABASE_ID'])+"}",
    "properties":"{","title":"[{",
    "text":"{",
    "content":"BEANNSNNS",
    "}}]}}}"
}

url="https://api.notion.com/v1/pages"
req=requests.post(url, headers = headers1, data = data1)

print(req)