## Project Title

Social Media Platform – Django REST Framework

## Description

This project is a backend-powered Social Media Platform built using Django and Django REST Framework.
It provides RESTful APIs for user authentication, posts, likes, comments, friend requests, and real-time notifications.
The project follows a modular, scalable architecture suitable for real-world applications.

## Tech Stack

Backend

Python

Django

Django REST Framework

JWT Authentication

Database

SQLite (Development)

PostgreSQL (Production-ready)

Tools & Others

Docker & Docker Compose

Django Signals

REST APIs

Environment Variables (.env)

## Features

User registration & authentication (JWT)

User profile management

Create, update & delete posts

Like and comment on posts

Friend request & accept system

Real-time notifications

RESTful API architecture

Secure environment-based configuration

Modular Django apps

API testing support

## Project Structure

Project-2/
│
├── Users/
├── Posts/
├── Friends/
├── Notifications/
├── API/
├── Tests/
├── Docker-compose.yml
├── Requirements.txt
├── .env.example
└── README.md

## Authentication

JWT based authentication

Access & Refresh tokens

Secured endpoints using permissions

## Installation & Setup

1. Clone Repository
git clone https://github.com/Srija-Akula/Project-2.git
cd Project-2

2. Create Virtual Environment
python -m venv venv
source venv/bin/activate

3. Install Dependencies
pip install -r Requirements.txt

4. Setup Environment Variables

Create .env file using .env.example

5. Run Migrations
python manage.py migrate

6. Start Server
python manage.py runserver

## Sample API Endpoints

Method	 Endpoint	             Description
POST	/api/auth/register/	     User Registration
POST	/api/auth/login/	     User Login
GET	    /api/posts/	             List Posts
POST	/api/posts/create/	     Create Post
POST	/api/friends/request/	 Send Friend Request
GET	    /api/notifications/	     Get Notifications

## Testing

Unit tests available in Tests/

API tested using Postman

## License

This project is licensed under the MIT License.

## Author

Srija Akula
GitHub: https://github.com/Srija-Akula
