EMS(Employee Management Sysetm) for Laravel 5.8 
=======================

In contrary to all other packages where in it requires that you have the ems database in your filesystem, this library calls a free service
So you dont really have to worry about downloading and maintaining ems data from Maxmin in your own server.

Just install the package, add the config and it is ready to use!


Requirements
============

PHP >= 7.1.3
BCMath PHP Extension
Ctype PHP Extension
JSON PHP Extension
Mbstring PHP Extension
OpenSSL PHP Extension
PDO PHP Extension
Tokenizer PHP Extension
XML PHP Extension
postman


Installation
============

   Clone the repository

git clone https://github.com/manishimweemmanuel8/ems.git
Switch to the repo folder

cd ems
Install all the dependencies using composer

composer install
Copy the example env file and make the required configuration changes in the .env file

cp .env.example .env
Generate a new application key

php artisan key:generate
Generate a new JWT authentication secret key

php artisan jwt:generate
Run the database migrations (Set the database connection in .env before migrating)

php artisan migrate
Start the local development server

php artisan serve


Code overview
==============

Folders
app - Contains all the Eloquent models
app/Http/Controllers/Api - Contains all the api controllers
app/Http/Middleware - Contains the JWT auth middleware
app/Http/Requests/Api - Contains all the api form requests
app/RealWorld/Favorite - Contains the files implementing the favorite feature
app/RealWorld/Filters - Contains the query filters used for filtering api requests
app/RealWorld/Follow - Contains the files implementing the follow feature
app/RealWorld/Paginate - Contains the pagination class used to paginate the result
app/RealWorld/Slug - Contains the files implementing slugs to articles
app/RealWorld/Transformers - Contains all the data transformers
config - Contains all the application configuration files
database/factories - Contains the model factory for all the models
database/migrations - Contains all the database migrations
database/seeds - Contains the database seeder
routes - Contains all the api routes defined in api.php file
tests - Contains all the application tests
tests/Feature/Api - Contains all the api tests

Testing API
============
Run the laravel development server

php artisan serve
The api can now be accessed at

ROUTE: /employees (REQUEST: POST)
http://localhost:8000/api/employees


Edit Employee ROUTE: /employees/{employee id} (REQUEST: PUT)
http://localhost:8000/api/employees/1

Delete Employee ROUTE: /employees/{employee id} (REQUEST: DELETE)
http://localhost:8000/api/employees/1

Activate Employee ROUTE: /employees/{employee id}/activate (REQUEST: PUT)
http://localhost:8000/api/employees/1/activate

Suspend Employee ROUTE: /employees/{employee id}/suspend (REQUEST: PUT)
http://localhost:8000/api/employees/1/suspend


Search ROUTE: /employees/search (REQUEST: POST)
http://localhost:8000/api/employees/0781194127

here you can search according to this column :position, name, email or phone number.

thank you



