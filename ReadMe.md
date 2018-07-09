# How to use.
All commands should be executed under Elasticsearch playground folder.

Before you start executing commands make sure that: 
1. Git bash is installed.
2. Docker is installed.
3. Install curl, commands depend on it.

Open git bash and start executing the following commands:
1. run docker-compose up -d
2. run sh setup-city-mapping.sh 
3. run sh insert-big-cities.sh
4. run sh search-nearest-city.sh
5. run sh obtain-distance.sh

setup-city-mapping.sh is for setting up the mappings of the documment on elasticsearch.

insert-big-cities.sh inserts all the documents that provide information about the cities( name, state, location )

search-nearest-city.sh performs a simple search which looks for the nearest big cities near El Cerrito, CA, a city neighboring Berkeley in the San Francisco Bay Area. The lat/long of El Cerrito is 37.9174, -122.3050.

obtain-distance.sh performs the same search as search.sh but this query returns also the distance. 