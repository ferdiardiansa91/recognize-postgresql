### 1. LOGIN AS USER TO PSQL COMMAND LINE	
	postgress=# sudo -u [user] psql
### 2. QUIT COMMAND LINE
	postgress=# \q

### 3. DATABASE
> list all database

    postgeress=# \l

> create user

    postgress=# CREATE USER [name-of-user]
	
> drop user

    postgress=# DROP USER [name-of-user]
	
> set user password

    postgress=# \password then type your password when the prompt appears

> add user to membership

    postgress=# GRANT [user1] to [user2] (user1 = user want to add to group menber of user2)

> remove user from member group

	postgress=# REVOKE [user1] FROM [user2]
	- 
> add role list attributes

	postgress=# ALTER USER [name-of-user] WITH [option]
			- option can be :
				 SUPERUSER | NOSUPERUSER
			    | CREATEDB | NOCREATEDB
			    | CREATEROLE | NOCREATEROLE
			    | CREATEUSER | NOCREATEUSER
			    | INHERIT | NOINHERIT
			    | LOGIN | NOLOGIN
			    | REPLICATION | NOREPLICATION
			    | BYPASSRLS | NOBYPASSRLS
			    | CONNECTION LIMIT connlimit
			    | [ ENCRYPTED | UNENCRYPTED ] PASSWORD 'password'
			    | VALID UNTIL 'timestamp'
	
	

> rename user / role name

	postgress=# ALTER USER [name-of-user] RENAME TO [new-user-name]


### 4. TABLE

> list all tables

	postgress=# \d

> create table
	
	postgress=# CREATE TABLE IF NOT EXISTS [name-table] (
		id BIGSERIAL PRIMARY KEY,
		title VARCHAR(255) NOT NULL,
		slug VARCHAR(255) NOT NULL,
		content TEXT,
		category_id INTEGER REFERENCES [table-name-relation]
		...

	)

> rename table
	postgress=# ALTER TABLE [name-table] RENAME TO [new-table-name]

> drop table
	postgress=# DROP TABLE [name-table]

### 5. ALTER COLUMN
> add column
	postgress=# ALTER TABLE [name-table] ADD COLUMN [name-column] [data-type]

> remove column
	postgress=# ALTER TABLE [name-table] DROP COLUMN [name-column]

> modify column
	postgress=# ALTER TABLE [name-table] ALTER COLUMN [name-column] SET [data-type]

> rename column
	postgress=# ALTER TABLE [name-table] RENAME COLUMN [old-name-column] TO [new-name-column]