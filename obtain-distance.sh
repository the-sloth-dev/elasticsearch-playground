# You'll notice in the search-nearest-city.sh response the distance of each hit from the point is not displayed. 
# Here's a query that does return the distance

curl -XGET 'http://localhost:9200/us_large_cities/city/_search?pretty=true' -H 'Content-Type: application/json' -d '
{
  "sort" : [
      {
          "_geo_distance" : {
              "location" : {
                    "lat" : 37.9174,
                    "lon" : -122.3050
              }, 
              "order" : "asc",
              "unit" : "km"
          }
      }
  ],
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