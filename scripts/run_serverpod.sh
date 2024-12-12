#!/bin/bash
cd flutter/flutter_server
docker compose up --build --detach
dart bin/main.dart --apply-migrations