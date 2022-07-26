require "pry"
require "active_record"

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/artists.sqlite"
  )

  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)