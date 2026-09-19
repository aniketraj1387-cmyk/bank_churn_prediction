# Data

The dataset is not committed to the repo. Download it from Kaggle:

https://www.kaggle.com/datasets/shrutimechlearn/churn-modelling

Save the file as `data/Churn_Modelling.csv`.

10,000 bank customers, one row each. Target column is `Exited`
(1 = customer left the bank). Roughly 20% churn.

To build the SQLite database used by the sql/ queries:

    python sql/load_db.py
