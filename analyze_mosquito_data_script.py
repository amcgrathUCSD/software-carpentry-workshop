import pandas as pd
import analyze_mosquito_data_lib as mosquito_lib

filename = "A1_mosquito_data.csv"

data  = pd.read_csv(filename)
data["temperature"] = mosquito_lib.fahr_to_celsius(data["temperature"])

parameters = mosquito_lib.analyze(data, "plot.png")

parameters.to_csv("parameters.csv")

# save parameters to file

print parameters