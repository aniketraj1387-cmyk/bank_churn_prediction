# feature prep shared by the modeling and segment notebooks
import pandas as pd

AGE_BINS = [0, 29, 39, 49, 59, 200]
AGE_LABELS = ["18-29", "30-39", "40-49", "50-59", "60+"]


def build_features(df):
    """Raw customers table in, (X, y) out. Cuts match the sql eda."""
    df = df.copy()
    df["age_band"] = pd.cut(df.age, bins=AGE_BINS, labels=AGE_LABELS)
    df["zero_balance"] = (df.balance == 0).astype(int)
    df["inactive_50plus"] = ((df.is_active == 0) & (df.age >= 50)).astype(int)
    df["germany_inactive"] = ((df.geography == "Germany") & (df.is_active == 0)).astype(int)
    X = pd.get_dummies(
        df.drop(columns=["customer_id", "surname", "exited"]),
        columns=["geography", "gender", "age_band"],
        drop_first=True,
    ).astype(float)
    return X, df.exited
