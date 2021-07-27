import requests

url="https://api.notion.com/v1/pages"
es=requests.post(url)

print(es)