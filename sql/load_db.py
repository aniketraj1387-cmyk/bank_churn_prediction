# builds churn.db from the raw csv - run from repo root, once, before the sql queries
import csv
import sqlite3

con = sqlite3.connect("churn.db")
cur = con.cursor()

cur.execute("drop table if exists customers")
cur.execute("""
create table customers (
    customer_id integer primary key,
    surname text,
    credit_score integer,
    geography text,
    gender text,
    age integer,
    tenure integer,
    balance real,
    num_products integer,
    has_cr_card integer,
    is_active integer,
    salary real,
    exited integer
)
""")

with open("data/Churn_Modelling.csv", newline="") as f:
    rows = [(r["CustomerId"], r["Surname"], r["CreditScore"], r["Geography"],
             r["Gender"], r["Age"], r["Tenure"], r["Balance"], r["NumOfProducts"],
             r["HasCrCard"], r["IsActiveMember"], r["EstimatedSalary"], r["Exited"])
            for r in csv.DictReader(f)]

cur.executemany("insert into customers values (?,?,?,?,?,?,?,?,?,?,?,?,?)", rows)
con.commit()
con.close()
print(f"loaded {len(rows)} rows into churn.db")
