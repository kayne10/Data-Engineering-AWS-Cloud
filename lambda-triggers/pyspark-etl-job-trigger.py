import boto3 

def lambda_handler(event, context):

    
    client = boto3.client("glue")

    file_key = event['Records'][0]['s3']['object']['key'].split("/")[1]
        
    client.start_job_run(
        JobName = 'funnel_data_etl_pyspark',
        Arguments = {
        '--file_name':file_key
        }
    )
    return {
        'statusCode': 200,
        'body': json.dumps('funnel_data_etl_pyspark triggered')
    }
    