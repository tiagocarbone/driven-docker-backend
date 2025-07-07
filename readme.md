docker compose -f docker-compose-test.yml run backend npm run test:ci

# subindo com docker-compose => docker compose up --build

# Fechando a aplicação com docker compose => docker compose down


# Subindo sem docker-compose

## Criar network => docker network create dockerNetwork (se criou no back primeiro não precisa)

## Rodar o container do postgres => docker run -d --name mypostgres --network dockerNetwork -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=mydb -p 5433:5432 -v myvolume:/var/lib/postgresql/data postgres

## Construir imagem do backend => docker build -t mybackend .

## Rodar o container do backend => docker run -d --name mybackend --network dockerNetwork -e DATABASE_URL=postgresql://postgres:postgres@mypostgres:5432/mydb -p 5000:5000 mybackend

## Parar o container do backend => docker stop mybackend mypostgres
