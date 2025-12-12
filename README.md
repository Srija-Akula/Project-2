----Social Media Platform – Full-Stack Application

A fully-featured social media platform built using Django, Django REST Framework, Django Channels, Redis, PostgreSQL, and a React frontend.
This project includes real-time notifications, user profiles, posts, comments, likes, friend system, media uploads, and a clean API for mobile apps.

----Features
----User & Profile

User registration, login (JWT auth)

Profile with avatar, bio, display name

Edit profile settings

Privacy controls (public/private profiles)

----Posts & Media

Create text posts

Upload images/videos

Edit & delete posts

Feed & explore pages

Post filtering, search, pagination

----Social Interactions

Like & unlike posts

Comment & reply (nested comments)

Display likes count and comment threads

----Friend / Follow System

Send friend requests

Accept / reject friend request

Follow & unfollow users

Followers / following lists

----Real-Time Notifications

Using Django Channels + Redis:

Instant notifications for:

Likes

Comments

Friend requests

Live WebSocket connection from frontend

----REST API (Django REST Framework)

Full JSON API for mobile apps

JWT authentication

Pagination, filtering, search

----Frontend (React or any SPA)

Authentication

Feed with infinite scroll

Real-time notification popup

Create posts with media

Profile management

----Backend Architecture

Django + DRF for API

Channels for WebSockets

Redis for channel layer + caching

PostgreSQL for relational data

Optional: Celery for async tasks

----Deployment Ready

Includes:

Dockerfile

docker-compose.yml

Production environment variable config

S3 media storage support

----Project Structure
socialapp/
│
├── backend/
│   ├── config/                 # Django project
│   ├── users/                  # Custom user + profiles
│   ├── posts/                  # Posts, media, likes, comments
│   ├── friends/                # Friend/follow system
│   ├── notifications/          # Real-time notifications
│   ├── requirements.txt
│   ├── manage.py
│   └── .env.example
│
└── frontend/
    ├── src/
    ├── package.json
    └── README.md

----Installation & Setup
----Clone the repository
git clone https://github.com/your-username/social-media-platform.git
cd social-media-platform

----Using Docker (Recommended)
----Build & run all services (backend, frontend, db, redis)
docker-compose up --build


Services started:

Service	Port
Django API	http://localhost:8000

React Frontend	http://localhost:3000

PostgreSQL	5432
Redis	6379
----Environment Variables

Copy .env.example → .env:

cd backend
cp .env.example .env


Fill in:

Django secret key

JWT signing key

Database password

Email credentials (optional)

----Database Migrations

Inside backend container:

docker-compose exec web python manage.py migrate


Create admin user:

docker-compose exec web python manage.py createsuperuser

----Running Tests
docker-compose exec web python manage.py test

----API Documentation

Once backend is running:

http://localhost:8000/api/


API includes:

/auth/ – JWT login / register

/users/

/posts/

/comments/

/likes/

/friends/

/notifications/

----Real-Time Notifications (WebSockets)

WebSocket endpoint:

ws://localhost:8000/ws/notifications/?token=JWT_TOKEN


Frontend listens for:

{
  "type": "notification",
  "verb": "liked your post",
  "actor": "john_doe",
  "target": 55,
  "timestamp": "2025-01-01T12:00:00Z"
}

----Media Storage

Local dev:

/media/


Production (optional):

S3 bucket via django-storages

----Deployment Guide
Recommended stack:

Nginx reverse proxy

Daphne / Uvicorn ASGI server

Redis for Channels

PostgreSQL managed DB

S3 / Cloud Storage for media

Docker Compose or Kubernetes

Production features:

HTTPS (LetsEncrypt)

CORS protection

JWT rotation

Scaling WebSockets horizontally

----Technologies Used

Backend

Python 3

Django

Django REST Framework

Django Channels

Redis

PostgreSQL

Celery (optional)

Frontend

React

Axios / Fetch

Context API or Redux

TailwindCSS / Bootstrap

DevOps

Docker / Docker Compose

GitHub Actions (optional)

Nginx

----Roadmap / Future Enhancements

Stories (24-hour posts)

Chat / Direct Messaging (WebSockets)

Groups / Pages

Video transcoding via Celery

Push Notifications (Web Push)

Dark mode UI

---- Contributing

Pull requests are welcome!

Steps:

Fork repo

Create new branch

Commit changes

Open PR

📜 License

MIT License – free to use and modify.
