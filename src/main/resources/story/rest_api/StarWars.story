Description: Test demoing VIVIDUS capabilities for REST API using Star Wars API

Scenario: Verify Luke Skywalker's information
When I execute HTTP GET request for resource with URL `https://swapi.py4e.com/api/people/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `<json_path>` is equal to `<expected_value>`
Examples:
| json_path    | expected_value |
| $.name       | Luke Skywalker |
| $.height     | 172            |
| $.mass       | 77             |
| $.eye_color  | blue           |
| $.hair_color | blond          |
| $.birth_year | 19BBY          |
| $.gender     | male           |

Scenario: Verify A New Hope movie information
When I execute HTTP GET request for resource with URL `https://swapi.py4e.com/api/films/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `<json_path>` is equal to `<expected_value>`
Examples:
| json_path      | expected_value            |
| $.title        | A New Hope                |
| $.episode_id   | 4                         |
| $.director     | George Lucas              |
| $.release_date | 1977-05-25                |
| $.producer     | Gary Kurtz, Rick McCallum |

Scenario: Verify Tatooine planet information
When I execute HTTP GET request for resource with URL `https://swapi.py4e.com/api/planets/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `<json_path>` is equal to `<expected_value>`
Examples:
| json_path         | expected_value |
| $.name            | Tatooine       |
| $.climate         | arid           |
| $.terrain         | desert         |
| $.population      | 200000         |
| $.diameter        | 10465          |
| $.rotation_period | 23             |
| $.surface_water   | 1              |

Scenario: Verify Wookiee species characteristics
When I execute HTTP GET request for resource with URL `https://swapi.py4e.com/api/species/3/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `<json_path>` is equal to `<expected_value>`
Examples:
| json_path          | expected_value                          |
| $.name             | Wookiee                                 |
| $.classification   | mammal                                  |
| $.language         | Shyriiwook                              |
| $.average_height   | 210                                     |
| $.average_lifespan | 400                                     |
| $.eye_colors       | blue, green, yellow, brown, golden, red |
| $.hair_colors      | black, brown                            |

Scenario: Verify Death Star specifications
When I execute HTTP GET request for resource with URL `https://swapi.py4e.com/api/starships/9/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `<json_path>` is equal to `<expected_value>`
Examples:
| json_path        | expected_value                  |
| $.name           | Death Star                      |
| $.model          | DS-1 Orbital Battle Station     |
| $.starship_class | Deep Space Mobile Battlestation |
| $.crew           | 342,953                         |
| $.passengers     | 843,342                         |
| $.cargo_capacity | 1000000000000                   |
| $.consumables    | 3 years                         |
| $.length         | 120000                          |
