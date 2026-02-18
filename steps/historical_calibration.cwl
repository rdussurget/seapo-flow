cwlVersion: v1.2
class: CommandLineTool

baseCommand: ["python", "historical_calibration.py"]

inputs:
  historical_fishing_data:
    type: File
    inputBinding: {position: 1}
  fishing_config:
    type: File
    inputBinding: {position: 2}

outputs:
  historical_fishing_file:
    type: File
    outputBinding: {glob: "historical_fishing_file.csv"}
