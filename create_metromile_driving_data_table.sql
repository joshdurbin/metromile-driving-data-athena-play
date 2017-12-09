CREATE EXTERNAL TABLE metromile_driving_data
  (
  id bigint,
  recordId int,
  recordDateTime string,
  recordType int,
  latitude double,
  longitude double,
  gpsSpeedKmPerHour string,
  headingMillidegrees string,
  altitudeMeters string,
  partialOdometerMeters string,
  totalOdometerMeters string,
  numberOfSatellites string,
  xAccel double,
  yAccel double,
  zAccel double,
  gyroX double,
  gyroY double,
  gyro double,
  rpm double,
  vehicleSpeedSensorKmPerHour int,
  controlModuleVoltage string,
  manifoldAirFlowGramsPerSecond double,
  stringakeAirTemperatureCelcius string,
  manifoldAbsolutePressureKilopascal string,
  malfunctionIndicatorLampOnDistanceKm string,
  malfunctionIndicatorLampClearDistanceKm string,
  firmwareVersion string,
  softwareVersion string,
  voltagePoweringDeviceBeforeIdle string,
  voltagePoweringDevice string
  )
  ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ','
  STORED AS INPUTFORMAT
    'org.apache.hadoop.mapred.TextInputFormat'
  OUTPUTFORMAT
    'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
  LOCATION
    's3://durbsblurps-metromile/athena-data'
  TBLPROPERTIES (
    'has_encrypted_data'='false',
    'skip.header.line.count'='1')
