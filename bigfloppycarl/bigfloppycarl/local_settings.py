from settings import *

ALLOWED_HOSTS = ['127.0.0.1']

DEBUG = True

# Make these unique, and don't share it with anybody.
SECRET_KEY = "12f18282-77dd-426d-bc4c-f1fe05b80b0bee099329-ba68-4131-adff-8bdd228b47fba7cd85d5-9794-48b4-bf23-f2597077db77"
NEVERCACHE_KEY = "c678214f-fc5f-4071-b552-95d02ba34395759d5a6b-d850-4d3b-82ce-53eca45805cd1a28161a-6ced-4040-abf0-93b874390188"


DATABASES = {
    "default": {
        # Ends with "postgresql_psycopg2", "mysql", "sqlite3" or "oracle".
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        # DB name or path to database file if using sqlite3.
        "NAME": "carl",
        # Not used with sqlite3.
        "USER": "sts",
        # Not used with sqlite3.
        "PASSWORD": "s3cur3",
        # Set to empty string for localhost. Not used with sqlite3.
        "HOST": "127.0.0.1",
        # Set to empty string for default. Not used with sqlite3.
        "PORT": "",
    }
}
