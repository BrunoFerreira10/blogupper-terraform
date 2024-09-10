version: 0.2

phases:
  install:
    commands:
      - apt update
      - apt install -y zip  # Instalar a ferramenta zip
  build:
    commands:
      - ls -la

      - echo "------ Compactar repositorio, exceto arquivos do deploy ------"
      - mkdir -p build
      - zip -r build/build.zip . -x "deploy/*" -x "appspec.yml"

      - echo "------ Copiar arquivo para deploy ------"
      - cp appspec.yml build/
      - cp -r deploy build/

artifacts:
  files:
    - "**/*"
  discard-paths: no
  base-directory: "build"
