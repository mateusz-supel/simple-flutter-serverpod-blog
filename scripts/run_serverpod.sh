#!/bin/bash
cd flutter_server
docker compose up --build --detach
dart bin/main.dart --apply-migrations