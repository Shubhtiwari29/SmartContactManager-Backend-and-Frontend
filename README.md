# Smart Contact Manager

Smart Contact Manager is a Spring Boot application designed for managing contacts with features such as contact creation, updates, pagination, 
photo upload to Cloud, and data export to Excel. The application integrates various technologies including Spring Security, OAuth (Google/GitHub login), JWT, 
and is deployed on AWS with MySQL for database management. The frontend is styled using Tailwind CSS, providing a modern, responsive user interface.

## Features :->

- **Contact Management:** Create, update, and delete contacts.
- **Pagination:** Efficient pagination for large datasets.
- **Data Export:** Export contacts to Excel format.
- **Photo Upload:** Store contact photos on AWS S3.
- **User Authentication:** Secure login using Google or GitHub via OAuth.
- **JWT Authentication:** Secure REST APIs with JWT.
- **Spring Security:** Role-based authentication and authorization.
- **Responsive UI:** Tailwind CSS-based frontend for a modern, responsive design.
- **Database:** MySQL for storing user and contact data.

## Tech Stack :->

- **Backend:** Spring Boot, Spring Security, JWT, Spring Data JPA
- **Frontend:** Tailwind CSS, HTML, JavaScript
- **Database:** MySQL
- **Cloud Storage:** AWS S3 for photo uploads
- **Authentication:** OAuth (Google/GitHub login), JWT
- **Deployment:** AWS EC2, AWS RDS for MySQL

## Installation

### Prerequisites :->

- Java 17 or higher
- MySQL Database
- AWS account for deploying the application and using S3 for photo uploads
- Postman for testing the APIs (optional)

### API Documentation :->
You can use Postman to test the APIs of the Smart Contact Manager.

### User Authentication : ->
 * Login with Google/GitHub via OAuth.
   - JWT authentication for secure API calls.
   - Contact Management:

GET /contacts: Get all contacts with pagination.
POST /contacts: Create a new contact.
PUT /contacts/{id}: Update a contact by ID.
DELETE /contacts/{id}: Delete a contact by ID.  

