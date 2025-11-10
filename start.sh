#!bin/bash
set -e

echo "Building Docker images..."
docker compose build

echo "Migrating Prisma database..."
docker compose run server npx prisma migrate dev --name init

echo "Starting Docker containers..."
docker compose up
