SELECT
  distinct cast(cast(replace(replace(recorddatetime, 'Z'), 'T', ' ') as timestamp) as date) as computed_date
  from metromile_driving_data
  WHERE latitude BETWEEN 37.747549 AND 37.750368
  AND longitude BETWEEN -122.188353 AND -122.184931
  ORDER BY computed_date
