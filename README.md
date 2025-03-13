# Blog application with: Flutter + Serverpod + CI + Testing

This is a cross platform blog application, written in dart flutter with a serverpod as a backend service.

# Motivation
Learning software development, experimenting with technologies.

# Features
- Flutter serverpod backend
- Flutter frontend

# Get started
1. Install docker:
https://docs.docker.com/desktop/setup/install/

2. Install serverpod:
```
dart pub global activate serverpod_cli
```

# Backend - flutter serverpod

To run your server, you first need to start Postgres. It's easiest to do with Docker.

First, navigate to the flutter_server folder:
```
cd flutter_server
```

Run docker with postgres database:
```
docker compose up --build --detach
```

Then you can start the Serverpod server.
```
dart bin/main.dart
```

When you are finished, you can shut down Serverpod with `Ctrl-C`, then stop Postgres.
```
docker compose stop
```

# Frontend - flutter


## Getting Started

Navigate to the flutter frontend folder:
```
cd flutter_flutter
```

Run frontend:
```
flutter run
```
