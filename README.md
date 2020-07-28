# acnh-back

## PLease make sure to have following Ruby version

ruby '2.6.1'

## make sure you have the following gems

gem "jwt", "~> 2.2"\
gem 'rack-cors'\
gem 'active_model_serializers'

## This is just a Data Base for anch-front

this Data base will not be useful alone\
please also download my anch-front for a fully functioning website\
[link to Front-end!](https://github.com/qunli02/acnh-front)

## How to start the Data base

find this anch-back file in the directory\
run `rails db:create` and `rails db:migrate`\
run 'rails s -p 4000' # you must run on port 4000 as the front-end refers to that port number
Most of the routes on the webpage will be blocked behind log in, please download [Front-end!](https://github.com/qunli02/acnh-front) to run this application correctly.

# Contact

if there is any problem you can contact me at qunli02@gmail.com
