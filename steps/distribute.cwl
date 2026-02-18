cwlVersion: v1.2
class: CommandLineTool

baseCommand: ["python", "distribute.py"]

inputs:
  fishing_config:
    type: File
    inputBinding: {position: 1}
  geography_config:
    type: File
    inputBinding: {position: 2}
  biomass_input:
    type: File
    inputBinding: {position: 3}

outputs:
  fishing_file:
    type: File
    outputBinding: {glob: "fishing_file.csv"}
  length_frequency_file:
    type: File
    outputBinding: {glob: "length_frequency.csv"}
  parfile:
    type: File
    outputBinding: {glob: "parameters.xml"}
