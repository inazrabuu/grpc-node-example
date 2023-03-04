# grpc-node-example
A CRUD node js written in typescript no showcase gRPC implementation in an API using Prisma ORM & PostgreSQL database.

## How to 
### run
- clone the repo
- setup a postgreSQL database
- create a `.env` file at the root of the project with this content (fill in the blanks appropriately): 
```code
DATABASE_PORT=5432
POSTGRES_PASSWORD=
POSTGRES_USER=
POSTGRES_DB=
POSTGRES_HOST=
POSTGRES_HOSTNAME=127.0.0.1
DATABASE_URL="postgresql://<username>:<password>@localhost:5432/<db_name>?schema=public"
```
- `npn install`
- `chmod +x proto-gen.sh && ./proto-gen.sh`
- `npm db:migrate`
- `npm db:generate`
- `npm db:push`
- `npm start:server`
- `npm start:client`

### use

After the run commands have been ran, the server will be available on localhost port 8000 and  the client will be available on localhost port 8080, we can shoot to the client with endpoint of:
- Create `POST /api/posts`
body (raw):
```json
{
    "title":  "The title of the post", (string)
    "content":  "The content of the opst", (string)
    "category":  "The category", (string)
    "published":  true | false, (boolean)
    "image":  "/path/to/image.ext" (string)
}
```
- Read `GET /api/posts/:postId`
- Update `PATCH /api/posts/:postId`
same body with create
- Delete `DELETE /api/posts/:postId`
- List `GET /api/posts?page=&limit=`