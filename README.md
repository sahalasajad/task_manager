# TaskFlow

A full-stack task management application built with Ruby on Rails.

TaskFlow allows users to create an account, securely log in, and manage their personal tasks through a clean and responsive dashboard. Each user's tasks are isolated from other users, with authentication and authorization handled at the application level.

---

## ✨ Features

### Authentication

- User registration
- Secure login and logout
- Password hashing using bcrypt
- Session-based authentication
- Protected dashboard routes
- Current user tracking

### Task Management

- Create tasks
- View tasks
- Edit tasks
- Delete tasks
- Mark tasks as completed
- Add task descriptions
- Set due dates
- View upcoming tasks

### Dashboard

- Personalized welcome message
- Total task count
- Completed task count
- Pending task count
- Overall completion percentage
- Recent tasks
- Upcoming deadlines
- Productivity overview

### Authorization

- Users can only view their own tasks
- Users can only edit their own tasks
- Users can only delete their own tasks
- Users can only mark their own tasks as completed

### UI

- Minimal monochrome design
- Responsive layout
- Consistent design across authentication and application pages
- Mobile-friendly interface
- Clean task management workflow

---

# 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| Ruby | Programming language |
| Ruby on Rails | Backend web framework |
| Active Record | Database ORM |
| SQLite | Development database |
| ERB | Server-rendered HTML templates |
| HTML5 | Page structure |
| CSS3 | Styling and responsive UI |
| bcrypt | Password hashing |
| Git | Version control |
| GitHub | Source code hosting |

---

# 🏗️ Architecture

TaskFlow follows the MVC architecture provided by Ruby on Rails.

```text
                   Browser
                      │
                      ▼
                   Routes
                      │
                      ▼
                Controllers
                      │
          ┌───────────┴───────────┐
          ▼                       ▼
       Models                   Views
          │                       │
          ▼                       ▼
      Database                HTML / ERB