# Phalcon Swoole API

This project is a simple API built using Phalcon and Swoole, designed for high-performance applications. It utilizes Docker for containerization, ensuring a consistent development environment.

## Project Structure
```
Phalcon-swoole-API/
├── app/
│   ├── src/
│   │   ├── controllers/
│   │   │   └── IndexController.php
│   │   ├── models/
│   │   └── views/
│   │       └── info.php
├── config/
│   └── config.php
├── swoole/
│   ├── Dockerfile
│   └── server.php
├── docker-compose.yml
└── Dockerfile
```

## Run the project
- Clone the repository
- Execute: 
```
make build
```
- Access the API at `http://localhost:9000/`
- Access Socket Server at `http://localhost:9501/`
