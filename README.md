# Social Media Web Application

A full-stack social media web application built using Django and Django REST Framework.  
This project allows users to create profiles, share posts, interact through likes and comments, and connect with other users.


## Features

- User Authentication (Signup & Login)
- User Profiles
- Create, Like, and Comment on Posts
- Follow / Friend System
- RESTful APIs
- Admin Panel for Management
- Secure Authentication
- Scalable Backend Architecture


## Tech Stack

- **Backend:** Django, Django REST Framework  
- **Database:** PostgreSQL  
- **Authentication:** JWT  
- **Deployment:** Render  
- **Version Control:** Git & GitHub  


## Project Structure

Project-2/
├── .env.example
├── API/
├── Friends/
├── Notifications/
├── Posts/
├── Users/
├── Tests/
├── Requirements.Txt
├── Docker-Compose.yml
├── README.md
└── LICENSE



## Installation (Local Setup)

1. Clone the repository
```bash
git clone https://github.com/Srija-Akula/Project-2.git

2. Navigate to the project folder:
cd Project-2

3. Install dependencies:
pip install -r requirements.txt

4. Apply migrations:
python manage.py migrate

5. Run the server:
python manage.py runserver

## Deployment

This project is deployed on Render (Free Tier).

## Environment Variables

SECRET_KEY=your-secret-key
DEBUG=False
DATABASE_URL=your-database-url

## Author

Srija Akula


