import pandas as pd
import sqlite3
import os

csv_path = os.path.join("C:/Jobbsøking/dataproject2/Weather_data", "weather_data.csv")

df = pd.read_csv(csv_path)

conn = sqlite3.connect("weather.db")
df.to_sql("weather", conn, if_exists="replace", index=False)
conn.close()
