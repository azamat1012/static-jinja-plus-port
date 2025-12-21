# StaticJinjaPlus Docker Port

Порт для самостоятельной сборки Docker-образов StaticJinjaPlus.

## Сборка

```bash
# Ubuntu + последняя версия
docker build -t my-staticjinja:latest .

# Ubuntu + конкретная версия (например 3.0.1)
docker build --build-arg STATICJINJAPLUS_VERSION=3.0.1 -t my-staticjinja:3.0.1 .

# Python-slim + последняя версия
docker build -f Dockerfile.slim -t my-staticjinja:slim .

# Python-slim + develop (main-ветка)
docker build -f Dockerfile.slim --build-arg STATICJINJAPLUS_VERSION=develop -t my-staticjinja:develop-slim .