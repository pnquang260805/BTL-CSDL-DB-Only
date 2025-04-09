from faker import Faker
import mysql.connector as connector
import random

HOST = "localhost"
USERNAME = "ptit"
PASSWORD = "ptit"
DATABASE = "e_commerce"

Faker.seed(1000)
fake = Faker()

conn = connector.connect(host=HOST, user=USERNAME, password=PASSWORD, database=DATABASE)
curr = conn.cursor()

# Insert country
no_countries = 50
country_query = "INSERT INTO countries(country_name) VALUES (%s)"
for i in range(no_countries):
    curr.execute(country_query, fake.country())
