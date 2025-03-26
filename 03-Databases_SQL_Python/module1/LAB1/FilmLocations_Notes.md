
# FilmLocations Table Documentation

## Table Description
The **FilmLocations** table contains detailed information about movies filmed in San Francisco, including their production details, cast, and filming locations.

## Columns and Descriptions

| Column Name         | Description                                                  |
|---------------------|--------------------------------------------------------------|
| `Title`              | Titles of the films                                          |
| `ReleaseYear`        | Year the film was released                                   |
| `Locations`          | Locations in San Francisco where the films were shot         |
| `FunFacts`           | Fun facts about the filming locations                        |
| `ProductionCompany`  | Companies that produced the films                            |
| `Distributor`        | Companies that distributed the films                         |
| `Director`           | People who directed the films                                |
| `Writer`             | People who wrote the films                                   |
| `Actor1`             | First actor featured in the film                             |
| `Actor2`             | Second actor featured in the film                            |
| `Actor3`             | Third actor featured in the film                             |

## Example Query

```sql
SELECT Title, ReleaseYear, Locations
FROM FilmLocations
WHERE Director = 'Christopher Nolan';
```

## Notes
- **Primary use**: Finding movies, directors, and locations related to San Francisco.
- **Possible analyses**: Most filmed locations, most featured actors, and production companies working in San Francisco.
- **Source**: San Francisco Film Commission dataset.
