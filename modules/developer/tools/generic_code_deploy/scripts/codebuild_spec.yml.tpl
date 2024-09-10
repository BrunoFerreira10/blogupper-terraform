version: 0.2

phases:
  install:
    commands:
      - apt update
      - apt install -y zip  # Instalar a ferramenta zip
  build:
    commands:
      - echo "------ Copiar arquivo para deploy ------"
      - mkdir -p build
      - ls -la
      - cp -r ./* build/

artifacts:
  files:
    - "**/*"
  discard-paths: no
  base-directory: "build"
