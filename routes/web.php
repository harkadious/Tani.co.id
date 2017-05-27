<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function() {
    return view('beranda');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('forum', 'ThreadsController@index');
Route::get('forum/create', 'ThreadsController@create');
Route::get('forum/{thread}', 'ThreadsController@show');
Route::delete('forum/{thread}', 'ThreadsController@destroy');
Route::post('forum', 'ThreadsController@store');
Route::get('forum', 'ThreadsController@index');
Route::get('/forum/{thread}/replies', 'RepliesController@index');
Route::post('/forum/{thread}/replies', 'RepliesController@store');
Route::patch('/replies/{reply}', 'RepliesController@update');
Route::delete('/replies/{reply}', 'RepliesController@destroy');

Route::post('/forum/{thread}/subscriptions', 'ThreadSubscriptionsController@store')->middleware('auth');
Route::delete('/forum/{thread}/subscriptions', 'ThreadSubscriptionsController@destroy')->middleware('auth');

Route::post('/replies/{reply}/favorites', 'FavoritesController@store');
Route::delete('/replies/{reply}/favorites', 'FavoritesController@destroy');

Route::get('/profiles/{user}', 'ProfilesController@show')->name('profile');
Route::get('/profiles/{user}/notifications', 'UserNotificationsController@index');
Route::delete('/profiles/{user}/notifications/{notification}', 'UserNotificationsController@destroy');


// Untuk Postingan
//Route::resource('post', 'PostsController');

$router->get('/post/create', [
    'as' => 'post.create',
    'middleware' => 'role:admin|sitemods',
    'uses' => 'PostsController@create',
]);

$router->post('/post', [
	'as' => 'post.store',
	'middleware' => 'role:admin|sitemods',
	'uses' => 'PostsController@store',
]);

$router->get('/post', [
	'as' => 'post.index',
	'uses' => 'PostsController@index',
]);

$router->get('/post/{slug}', [
	'as' => 'post.show',
	'uses' => 'PostsController@show',
]);

$router->get('/post/{slug}/edit', [
	'as' => 'post.edit',
	'uses' => 'PostsController@edit',
]);

Route::match(['put', 'patch'], '/post/{slug}', [
	'as' => 'post.update',
	'uses' => 'PostsController@update',
]);

/*$router->put('/post/{slug}', [
	'as' => 'post.update',
	'uses' => 'PostsController@update',
]);

$router->patch('/post/{slug}', [
	'as' => 'post.update',
	'uses' => 'PostsController@update',
]);
*/

$router->delete('/post/{slug}', [
	'as' => 'post.destroy',
	'uses' => 'PostsController@destroy',
]);


/*
GET	post	post.index	App\Http\Controllers\PostsController@index	web
GET	post/create	post.create	App\Http\Controllers\PostsController@create	web
POST	post	post.store	App\Http\Controllers\PostsController@store	web
GET	post/{post}	post.show	App\Http\Controllers\PostsController@show	web
GET	post/{post}/edit	post.edit	App\Http\Controllers\PostsController@edit	web
PUT PATCH	post/{post}	post.update	App\Http\Controllers\PostsController@update	web
DELETE	post/{post}	post.destroy	App\Http\Controllers\PostsController@destroy	web
*/