create table person(
    ident integer primary key autoincrement,
    name text not null
);
insert into person values
    (null, 'mik'),
    (null, 'po'),
    (null, 'tay')
;

-- start
select * from sqlite_sequence;
-- end
