# Parking Control System

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)

This is a parking control system developed using Java and Spring Boot. It allows for the management of parking spaces, including adding, updating, and removing parked vehicles. The system is designed to be containerized using Docker and deployable on AWS.

## Technologies Used

- **Java 17 LTS**: Programming language used for developing the application.
- **Spring Boot 2.7.x**: Framework for building the application.
- **Docker**: Containerization platform.
- **AWS**: Cloud platform for deployment.

## Requirements

- **JDK 17** or higher
- **Docker**: For containerization
- **AWS Account**: For deployment

## Project Setup

1. **Clone the repository**:
    ```bash
    git clone https://github.com/josivantarcio/parking-control.git
    cd parking-control
    ```

2. **Build and run using Docker**:
    ```bash
    docker build -t parking-control .
    docker run -p 8080:8080 parking-control
    ```

3. **Deploy on AWS**:
    - Create an ECS cluster and task definition.
    - Push the Docker image to ECR.
    - Create an ECS service and run the task.

## Features

- **Add Vehicle**: Register a new vehicle entering the parking lot.
- **Remove Vehicle**: Remove a vehicle leaving the parking lot.
- **List Vehicles**: Display a list of all parked vehicles.
- **Search Vehicle**: Find a vehicle by its license plate.

## License

This project is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for details.

## Contribution

Contributions are welcome! Feel free to open issues and pull requests.
