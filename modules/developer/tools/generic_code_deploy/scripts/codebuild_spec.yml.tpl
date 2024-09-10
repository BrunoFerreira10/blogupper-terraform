version: 0.2

phases:
  install:
    commands:
      - apt update
      - apt install -y zip  # Instalar a ferramenta zip
  build:
    commands:
      - ls -la
      - mkdir -p build
      - zip -r build/build.zip .

artifacts:
  files:
    - "**/*"
  discard-paths: no
  base-directory: "build"
