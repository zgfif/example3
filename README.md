# Booksget
Данный проект разрабатывается, как некоммерческий сервис по обмену литературой между пользователями.

Системные требования:
1. ruby 2.4.2 или новее
2. rails 5.1 или новее
3. mysql db server (development) имя пользователя: root и пароль: 1 (в моём случае)
4. postgres db server (production)
Для установки ruby/rails/mysql вы можете воспользоваться руководством перейдя по ссылке https://gorails.com/setup

Алгоритм установки
1. Клонируйте или загрузите(zip) репозиторий в определённую папку (например, my_folder)
2. Создайте базу данных для mysql с именем search2_dev (имя БД для development представлено в файле example3/config/database.yml)
3. Выполните команду bundle install --without production     
     *может потребоваться установка дополнительных библиотек для gem nokogiri . Для их установки перейдите по ссылке http://www.nokogiri.org/tutorials/installing_nokogiri.html#red_hat___centos
4. Выполните команду rails db:migrate
5. Разверните проект (в случае )
 Есть вопрос?
https://www.facebook.com/pasha.bratanov

