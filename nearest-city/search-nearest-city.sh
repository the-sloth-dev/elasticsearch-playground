# Let's look for the nearest big cities near El Cerrito, CA, a city neighboring Berkeley in the San Francisco Bay Area.
# The lat/long of El Cerrito is 37.9174, -122.3050.

curl -XGET 'http://localhost:9200/us_large_cities/city/_search?pretty=true' -H 'Content-Type: application/json' -d '
{
  "query": {
    "bool" : {
        "must" : {
            "match_all" : {}
        },
        "filter" : {
            "geo_distance" : {
                "distance" : "20km",
                "location" : {
                    "lat" : 37.9174,
                    "lon" : -122.3050
                }
            }
        }
    }
  }
}'