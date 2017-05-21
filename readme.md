<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

# Tani.co.id
Tani.co.id is a web-based app to help Indonesian farmers solving their problems. This app uses Laravel for back-end framework, and Vue.js for front-end framework.
<br>
This is an assignment for <b>Pemrograman Web A</b> course by Mr. Rizky Januar Akbar. More features and updates soon!

## How-to guide
- Download or clone this repository
- Make sure you have already installed composer. If not, check out at https://getcomposer.org/download/
- Then run the command ```composer install```
- After installing all the required packages, create your own ```.env``` file, which consist all of your working environment for Laravel
- If you want, you can run command ```php artisan migrate``` and then ```php artisan db:seed``` to generate a default users, or you could import the database which is located on ```/database/tani.sql```
- After generating or having the database, you could run the ```php artisan serve``` command.
- To login as <b>administrator</b>, use ```fajarmf78@gmail.com:admin123```. To login as moderator, use ```ndutank46@gmail.com:mod123```. To login as general user, use ```iqbalmabruri@gmail.com:general```. More <b>user-level</b> access development soon.
- Have fun!

> Tani.co.id is still in development mode. You should not moaning or complaining at me for a bad site design, as i'm only doing this for fun and for the final project of Pemrograman Web.

> Some features might not work as expected, so if you have anything useful or something criticals, feel free to give me some feedback. I'll gladly hear that :)

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, yet powerful, providing tools needed for large, robust applications. A superb combination of simplicity, elegance, and innovation give you tools you need to build any application with which you are tasked.

## Learning Laravel

Laravel has the most extensive and thorough documentation and video tutorial library of any modern web application framework. The [Laravel documentation](https://laravel.com/docs) is thorough, complete, and makes it a breeze to get started learning the framework.

If you're not in the mood to read, [Laracasts](https://laracasts.com) contains over 900 video tutorials on a range of topics including Laravel, modern PHP, unit testing, JavaScript, and more. Boost the skill level of yourself and your entire team by digging into our comprehensive video library.

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](http://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell at taylor@laravel.com. All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
