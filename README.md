# XYZ Books

![image](https://user-images.githubusercontent.com/80822041/209921463-8415d5f8-e844-4707-bca8-af1f56bca873.png)

Tool-versions:

ruby-3.1.3 <br>
rails-7.0.4

Extra Ruby gems used:

isbn-tool (manipulation of isbn numbers) <br>
tailwind ui (css framework)

After clone-do:

run

```bundle install``` <br>
```./bin/rails tailwindcss:install``` <br>
```rails db:create``` <br>
```rails db:migrate``` <br>
```rails db:seed```

To start the app:

run ```bin/dev```

API Endpoints:

Books API:

Access via URL: ```http://localhost:3000/books/{isbn}```

![image](https://user-images.githubusercontent.com/80822041/209923477-26314e8e-3532-48a8-bcf6-fa59bc470977.png)

Response body:

![image](https://user-images.githubusercontent.com/80822041/209923434-e4e9cc8a-5642-4f39-8216-95c03d518688.png)

ISBN Converter:

Access via URL: ```http://localhost:3000/convert/{isbn13/isbn10}```

![image](https://user-images.githubusercontent.com/80822041/209923631-2241357a-9940-4ef6-b2bb-c1327eff75f5.png)

Response body:

![image](https://user-images.githubusercontent.com/80822041/209923695-42d1cf10-2b62-4c25-92ba-ffdaf698f3c2.png)


