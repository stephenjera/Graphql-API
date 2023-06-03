from fastapi import FastAPI
from google.cloud import bigquery

app = FastAPI()

# Create a BigQuery client
client = bigquery.Client()

@app.get("/")
async def root():
    # Define your BigQuery project and dataset IDs
    PROJECT_ID = "graphql-land"
    DATASET_ID = "football"

    # Define the BigQuery table name
    TABLE_NAME = f"{PROJECT_ID}.{DATASET_ID}.matches"

    # Query example
    query = f"""
     SELECT *
     FROM `{TABLE_NAME}`
    """
    query_job = client.query(query)

    # Iterate over the query results
    result = []
    for row in query_job:
        result.append(dict(row))

    return result
