docker run -d -p 80:8000 --name chart-review-backend \
-e DEBUG=1 \
-e SECRET_KEY="foo" \
-e ALLOWED_HOSTS="*" \
-e SQL_ENGINE="django.db.backends.postgresql" \
-e DJANGO_SUPERUSER_USERNAME="admin" \
-e DJANGO_SUPERUSER_PASSWORD="foo" \
-e DJANGO_SUPERUSER_EMAIL="jonah.arturo@gmail.com" \
-e USE_S3=TRUE \
-e AWS_CERT_BUCKET_NAME="gray-patient-bucket-dev-yancw9xa" \
-e AWS_CERT_BUCKET_REGION="us-east-1" \
-e SQL_DATABASE="postgres" \
-e SQL_USER="rds_admin_user" \
-e SQL_PASSWORD="foo" \
-e SQL_HOST="gray-rds-dev-yancw9xa.crx8rth9mjna.us-east-1.rds.amazonaws.com" \
-e DJANGO_SQL_HOST="gray-rds-dev-yancw9xa.crx8rth9mjna.us-east-1.rds.amazonaws.com" \
-e DJANGO_SQL_PORT="5432" \
-e SQL_PORT="5432" \
-e OPENAI_API_KEY="foo" \
848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr:backend