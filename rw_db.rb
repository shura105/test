require 'mysql'
my = Mysql.connect('172.17.0.2', 'root', 'mypassword', 'books')
my.query("select id, author, title, image_url from goodread").each do |id, author, title, image_url|
  p id, author, title, image_url
end
stmt = my.prepare('insert into goodread (author, title, image_url) values (?,?,?)')
stmt.execute 'Fox', 'Fgh ghf zz', '/tmp/my_image.jpg'
