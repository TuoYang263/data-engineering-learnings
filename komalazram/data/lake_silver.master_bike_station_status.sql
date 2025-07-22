CREATE TABLE IF NOT EXISTS `citi-bike-459310.lake_silver.master_bike_station_status` (
  network_id STRING,
  network_name STRING,
  station_id STRING,
  latitude FLOAT64,
  longitude FLOAT64,
  timestamp TIMESTAMP,
  free_bikes INT64,
  empty_slots INT64, 
  extra_uid STRING,
  renting BOOL,
  returning BOOL,
  has_ebikes BOOL,
  ebikes INT64
)
PARTITION BY DATE(timestamp)
CLUSTER BY station_id;
