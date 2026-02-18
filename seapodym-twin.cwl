cwlVersion: v1.2
class: Workflow

inputs:
  fishing_config: File
  geography_config: File
  biomass_input: File
  historical_fishing_data: File?

outputs:
  fishing_file:
    type: File
    outputSource: distribute_catch/fishing_file
  length_frequency_file:
    type: File
    outputSource: distribute_catch/length_frequency_file
  parfile:
    type: File
    outputSource: distribute_catch/parfile

steps:
  distribute_catch:
    run: steps/distribute.cwl
    in:
      fishing_config: fishing_config
      geography_config: geography_config
      biomass_input: biomass_input
    out: [fishing_file, length_frequency_file, parfile]

  historical_calibration:
    run: steps/historical_calibration.cwl
    in:
      historical_fishing_data: historical_fishing_data
      fishing_config: fishing_config
    out: [historical_fishing_file]
    when: historical_fishing_data
