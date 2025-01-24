# EcoShop

## Description
EcoShop is a web application built with Django, designed to help users find and purchase eco-friendly products.

---

## Version Information
| Version | Release Date      | Notes                          |
|---------|-------------------|--------------------------------|
| 1.0.0   | January 15, 2025  | Initial release with core features: user auth, product catalog, cart, and payments. |
| 1.1.0   | February 10, 2025 | Added support for Stripe payments and enhanced product search. |
| 1.2.0   | March 5, 2025     | Improved performance, AWS deployment, and integrated analytics. |

---

## Live Deployment
Access the live project here: [Live Deployment URL][ecoshop-env.eba-kgdhbm56.us-east-2.elasticbeanstalk.com]

## Prerequisites
Before you begin, ensure you have the following installed on your machine:
- Python 3.9
- pip (Python package installer)
- Git
- Virtualenv (optional, but recommended)

## Installation
This README will guide you through the process of setting up and running the EcoShop project on your local machine.

### Clone the Repository
First, clone the repository to your local machine using Git:
```bash
git clone https://github.com/Kodekloner/Portfolio-Project-EcoShop.git
cd Portfolio-Project-EcoShop
```

### Set Up Virtual Environment
It is recommended to use a virtual environment to manage your dependencies. Create and activate a virtual environment using the following commands:
```bash
python -m venv env
source env/bin/activate   # On Windows use `env\Scripts\activate`
```

### Install Dependencies
With the virtual environment activated, install the required dependencies:
```bash
pip install -r requirements.txt
```

### Configure Environment Variables
Create a .env file in the project root directory and add the following configurations:
```bash
SECRET_KEY=your_secret_key
DEBUG=True
EMAIL_HOST=your_email_host
EMAIL_PORT=your_email_port
EMAIL_HOST_USER=your_email_user
EMAIL_HOST_PASSWORD=your_email_password
EMAIL_USE_TLS=True  # or False, depending on your setup
EMAIL_USE_SSL=False  # or True, depending on your setup
STRIPE_SECRET_KEY=your_stripe_secret_key
```

### Run Migrations
Apply the database migrations to set up your database schema:
```bash
python manage.py makemigrations
python manage.py migrate
```

### Create a Superuser
Create a superuser to access the Django admin interface:
```bash
python manage.py createsuperuser
```
Follow the prompts to set up the superuser account


## Running the Project
To run the development server, use the following command:
```bash
python manage.py runserver
```
Visit http://127.0.0.1:8000/ in your web browser to see the application running.


[https://github.com/Kodekloner/Portfolio-Project-EcoShop]: https://github.com/Kodekloner/Portfolio-Project-EcoShop