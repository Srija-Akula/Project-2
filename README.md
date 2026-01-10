# Social Media Platform – Django REST API

A fully-featured **Social Media Platform backend** built using **Django** and **Django REST Framework**. This project provides scalable REST APIs for user authentication, profiles, posts, likes, comments, friend requests, and notifications. It is designed to be frontend-agnostic and production-ready.


## Features

### User & Authentication

* User registration, login, logout
* JWT-based authentication
* Secure password handling
* User profile management

### Posts

* Create, update, delete posts
* Text-based content support
* View all posts and user-specific posts

### Likes & Comments

* Like and unlike posts
* Comment on posts
* View post engagement details

### Friend System

* Send and receive friend requests
* Accept or reject requests
* View friends list

### Notifications

* Notifications for likes
* Notifications for comments
* Notifications for friend requests
* Mark notifications as read

### REST API

* Clean and well-structured API endpoints
* JSON-based responses
* Easy integration with frontend or mobile apps


## Tech Stack

* **Backend:** Python, Django
* **API:** Django REST Framework (DRF)
* **Authentication:** JWT (Simple JWT)
* **Database:** SQLite (development), PostgreSQL (production-ready)
* **Environment Management:** python-dotenv
* **Containerization:** Docker
* **Version Control:** Git & GitHub


## Project Structure

```
Project-2/
├── accounts/         # User authentication & profiles
├── posts/            # Posts, likes, comments
├── friends/          # Friend request system
├── notifications/    # User notifications
├── api/              # API routing
├── core/             # Project settings
├── manage.py
├── requirements.txt
├── Dockerfile
└── .env.example
```

---

## Installation & Setup

### Clone the repository

```bash
git clone https://github.com/Srija-Akula/Project-2.git
cd Project-2
```

### Create virtual environment

```bash
python -m venv venv
venv\Scripts\activate   # Windows
# OR
source venv/bin/activate # macOS/Linux
```

### Install dependencies

```bash
pip install -r requirements.txt
```

### Environment variables

Create a `.env` file using `.env.example` and add required values.

### Run migrations

```bash
python manage.py migrate
```

### Create superuser

```bash
python manage.py createsuperuser
```

### Run the server

```bash
python manage.py runserver
```

---

## API Authentication

This project uses **JWT Authentication**.

* Obtain token via login API
* Pass token in headers:

```
Authorization: Bearer <your_token>
```


## Deployment

The project is deployment-ready and can be hosted on:

* Render
* Railway
* Heroku
* AWS / DigitalOcean

Recommended production setup:

* PostgreSQL database
* DEBUG = False
* Proper secret key management


## Future Enhancements

* Real-time notifications using Django Channels
* Media uploads (images & videos)
* Chat/messaging system
* Frontend integration (React / Next.js)
* API documentation (Swagger / Redoc)


## Use Cases

* Internship & placement portfolio project
* Backend for social media web or mobile apps
* Learning REST APIs & Django architecture


## Author

**Srija Akula**
GitHub: [https://github.com/Srija-Akula](https://github.com/Srija-Akula)



⭐ If you like this project, don’t forget to star the repository!
