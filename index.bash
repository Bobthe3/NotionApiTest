curl -X POST https://api.notion.com/v1/pages \
  -H "Authorization: Bearer $NOTION_KEY" \
  -H "Content-Type: application/json" \
  -H "Notion-Version: 2021-05-13" \
  --data "{
    \"parent\": { \"database_id\": \"$NOTION_DATABASE_ID\" },
    \"properties\": {
      \"title\": {
        \"title\": [
          {
            \"text\": {
              \"content\": \"COCO PUFFS\"
            }
          }
        ]
      }
    }
  }"

export NOTION_DATABASE_ID=ef8accf7a16c497a81afa2118df45b79
export NOTION_KEY=secret_TQ6WumAUtMsdw2iBZyKw7t8zp84a7jsE9LHxjX914r6
export NOTION_PAGE_ID=26fe2df1da8249b2b739012730cefc72


curl 'https://api.notion.com/v1/pages' \
  -H "Authorization: Bearer $NOTION_API_KEY" \
  -H "Content-Type: application/json" \
  -H "Notion-Version: 2021-05-13" \
  --data "{
	"parent": { "database_id": $NOTION_DATABASE_ID },
	"properties": {
		"Name": {
			"title": [
				{
					"text": {
						"content": "Tuscan Kale"
					}
				}
			]
		},
		"Description": {
			"rich_text": [
				{
					"text": {
						"content": "A dark green leafy vegetable"
					}
				}
			]
		},
		"Food group": {
			"select": {
				"name": "Vegetable"
			}
		},
		"Price": { "number": 2.5 }
	},
	"children": [
		{
			"object": "block",
			"type": "heading_2",
			"heading_2": {
				"text": [{ "type": "text", "text": { "content": "Lacinato kale" } }]
			}
		},
		{
			"object": "block",
			"type": "paragraph",
			"paragraph": {
				"text": [
					{
						"type": "text",
						"text": {
							"content": "Lacinato kale is a variety of kale with a long tradition in Italian cuisine, especially that of Tuscany. It is also known as Tuscan kale, Italian kale, dinosaur kale, kale, flat back kale, palm tree kale, or black Tuscan palm.",
							"link": { "url": "https://en.wikipedia.org/wiki/Lacinato_kale" }
						}
					}
				]
			}
		}
	]
}"

curl https://api.notion.com/v1/pages/30a2fcb853a641d88b4445c48d72017b \
  -H 'Authorization: Bearer '"$NOTION_KEY"'' \
  -H "Content-Type: application/json" \
  -H "Notion-Version: 2021-05-13" \
  -X PATCH \
	--data '{
  "properties": {
    "has_children":{}
  }
}'