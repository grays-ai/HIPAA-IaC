 \
  export ANSIBLE_HOST_KEY_CHECKING=False
  ansible-playbook \
    -i ec2-44-194-24-68.compute-1.amazonaws.com, \
    -u ec2-user \
    --private-key ~/.ssh/gray-ec2-key-dev-yancw9xa.pem \
    --extra-vars "aws_region"="us-east-1" \
    --extra-vars "ecr_url=848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr" \
    --extra-vars "app_version=latest" \
    --extra-vars "django_debug=1" \
    --extra-vars "django_secret_key=LUIzkXICBkcbh1fT" \
    --extra-vars "django_allowed_hosts=*" \
    --extra-vars "django_sql_engine=django.db.backends.postgresql" \
    --extra-vars "django_superuser_username=admin" \
    --extra-vars "django_superuser_password=mnEg10o67TVciMNx" \
    --extra-vars "django_superuser_email=jonah.arturo@gmail.com" \
    --extra-vars "django_use_s3=TRUE" \
    --extra-vars "django_aws_cert_bucket_name=gray-patient-bucket-dev-yancw9xa" \
    --extra-vars "django_aws_cert_bucket_region=us-east-1" \
    --extra-vars "django_sql_database=postgres" \
    --extra-vars "django_sql_user=rds_admin_user" \
    --extra-vars "django_sql_password=68NaKlPZtmvek1nr" \
    --extra-vars "django_sql_host=gray-rds-dev-yancw9xa.crx8rth9mjna.us-east-1.rds.amazonaws.com" \
    --extra-vars "django_sql_port=5432" \
    ./ansible/ec2-setup.yml \

