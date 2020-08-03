DROP TABLE IF EXISTS todo_item;
DROP TABLE IF EXISTS todo_list;

CREATE TABLE todo_list (
  id serial primary key,
  title varchar(150) not null,
  checked boolean not null default false,
  list_id integer not null,
  foreign key (list_id) references todo_list(id)
);

INSERT INTO todo_list (title) VALUES ('List 1', 'List 2');
INSERT INTO todo_item (title, list_id) VALUES ('Connect to database', 1), ('Do queries 1', 1);
