# Create mappings
curl -XPUT http://localhost:9200/us_large_cities -H 'Content-Type: application/json' -d ' 
{
    "mappings": {
        "city": {
            "properties": {
                "city": {"type": "text"},
                "state": {"type": "text"},
                "location": {"type": "geo_point"}
            }
        }
    }
}
'