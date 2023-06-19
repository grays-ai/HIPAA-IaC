echo "Running Make Migrations.."
python manage.py makemigrations gray
echo "Running Migrate.."
python manage.py migrate
echo "Creating Super User.."
python manage.py createsuperuser --no-input

echo "DB Migrations and Collect Static Files Complete"

# Start server
daphne -b 0.0.0.0 -p 8000 backend.asgi:application