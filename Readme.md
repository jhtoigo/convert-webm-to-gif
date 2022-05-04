## Converte videos formato webm para gif

Os videos que estiverem na raiz do projeto com extensão .webm são convertidos para .gif e salvos nas gifs/

1. Fazer o build da imagem
   ```
   docker build -t jhtoigo/ffmpeg:v1 .
   ```

2. Rodar o container
    ```
    docker run -it  --mount type=bind,source="$(pwd)"/,target=/videos jhtoigo/ffmpeg:v1
    ```
3. Executar o convert.sh de dentro do container
    ```
   ./convert.sh
   ```