FROM debian:bulleye-slim
WORKDIR /app
ADD target/release/todo-actix .
CMD ["/app/todo-actix"]
