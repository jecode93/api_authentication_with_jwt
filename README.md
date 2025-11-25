# Rails Authentication API

A secure Ruby on Rails API application with JWT-based authentication, built with best practices and modern security features.

## Features

- **JWT Authentication**: Secure token-based authentication system
- **User Management**: Complete user registration and login functionality
- **Password Security**: BCrypt encryption for secure password storage
- **RESTful API**: Clean and intuitive API endpoints
- **Security**: Brakeman security scanning integrated
- **Code Quality**: RuboCop Rails Omakase for consistent code style
- **Auto-updates**: Dependabot configured for automatic dependency updates

## Tech Stack

- **Ruby on Rails**: 8.0.1
- **PostgreSQL**: 1.6.2
- **JWT**: 3.1.2
- **BCrypt**: For password hashing
- **Puma**: 6.6.1 (Web server)
- **Brakeman**: 7.1.0 (Security scanner)
- **RuboCop Rails Omakase**: 1.1.0 (Code linter)

## Prerequisites

- Ruby (version compatible with Rails 8.0.1)
- PostgreSQL
- Bundler

## Installation

1. Clone the repository:
```bash
git clone [api_authentication_with_jwt](https://github.com/jecode93/api_authentication_with_jwt.git)
cd <api_authentication_with_jwt>
```

2. Install dependencies:
```bash
bundle install
```

3. Set up the database:
```bash
rails db:create
rails db:migrate
```

4. Start the server:
```bash
rails server
```

The API will be available at `http://localhost:3000`

## API Endpoints

### Authentication

#### Register a new user
```http
POST /users
Content-Type: application/json

{
  "user": {
    "email": "user@example.com",
    "password": "securepassword"
  }
}
```

#### Login
```http
POST /login
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "securepassword"
}
```

**Response:**
```json
{
  "token": "eyJhbGciOiJIUzI1NiJ9...",
  "user": {
    "id": 1,
    "email": "user@example.com"
  }
}
```

### Protected Routes

For authenticated requests, include the JWT token in the Authorization header:
```http
Authorization: Bearer <your-jwt-token>
```

## Security Features

- **Password Encryption**: All passwords are encrypted using BCrypt
- **JWT Tokens**: Secure, stateless authentication
- **Email Uniqueness**: Enforced at the database level
- **Brakeman Scanning**: Continuous security vulnerability checks
- **Parameter Validation**: Strong parameters to prevent mass assignment

## Project Structure

```
app/
├── controllers/
│   ├── application_controller.rb
│   ├── authentication_controller.rb
│   └── users_controller.rb
├── models/
│   └── user.rb
└── concerns/
    └── json_web_token.rb
```

## Development

### Running Tests
```bash
rails test
```

### Code Linting
```bash
rubocop
```

### Security Scan
```bash
brakeman
```

## Dependency Management

This project uses Dependabot to automatically keep dependencies up to date. Pull requests for dependency updates are automatically created and can be reviewed before merging.

## Recent Updates

- Upgraded to Rails 8.0.1
- Updated JWT to version 3.1.2
- Enhanced security with Brakeman 7.1.0
- Improved performance with latest Puma and Bootsnap versions
- PostgreSQL driver updated to 1.6.2

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is open source and available under the [MIT License](LICENSE).

## Author

👤 **Jean Emmanuel Cadet**

- 🌐 **Portfolio:** [jeanemmanuelcadet.com](https://jeanemmanuelcadet.com)
- ✍️ **Blog:** [codecurious.dev](https://codecurious.dev)
- 💻 **GitHub:** [github.com/jecode93](https://github.com/jecode93)
- 🔗 **LinkedIn:** [linkedin.com/in/jean-emmanuel-cadet](https://linkedin.com/in/jean-emmanuel-cadet)
- 📧 **Email:** [jeanemmanuelcadet@gmail.com](mailto:jeanemmanuelcadet@gmail.com)

## Acknowledgments

- Built with Ruby on Rails
- Authentication powered by JWT
- Security enhanced with Brakeman
- Code quality maintained with RuboCop Rails Omakase

---

For questions or support, please open an issue in the GitHub repository.
