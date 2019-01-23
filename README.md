# NSO1212

*NSO's Open Data API Handler*

The R package providing helper functions for the National Statistical Office of Mongolia's open data API [opendata.1212.mn](http://opendata.1212.mn/) version 2.

## Features

1. Get list of all available tables.
2. Get statistical data.

## Example

```R
all.tables <- all_tables()
print(all.tables$tbl_nm)
print(all.tables$tbl_id)

statistical.data <- statistical_data(
  tbl_id = "DT_NSO_2400_015V2",
  PERIOD = c("201711", "201712", "201801"),
  CODE = c("10", "11"),
  CODE1 = "11"
)
print(statistical.data)
```

## Installation

From the repository on GitHub

```R
install.packages("devtools")
devtools::install_github("galaamn/NSO1212")
```

## Author

[MAKHGAL Ganbold](http://galaa.mn/ "Galaa's Personal Page"), National University of Mongolia, 2019
