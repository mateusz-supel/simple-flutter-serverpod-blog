#!/bin/sh

# Makes sure we break the script on any error.
set -e

# Build the web app.

cd flutter_flutter
flutter build web --release --web-renderer canvaskit
cd ..

# Copy the build files into the web/app diretory.
#sudo rm -rf example_server/web/app
#sudo cp -r example_web/build/web example_server/web/app

# Move the index.html file into the templates directory.
#sudo mkdir -p example_server/web/templates
#sudo mv example_server/web/app/index.html example_server/web/templates/index.html