<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 1. query the Roles by the slug
	    $adminRole = \HttpOz\Roles\Models\Role::whereSlug('admin')->first();
   		$moderatorRole = \HttpOz\Roles\Models\Role::whereSlug('sitemods')->first();
	    $generalRole = \HttpOz\Roles\Models\Role::whereSlug('user')->first();

    	// 2a. Create admin
	    $admin = \App\User::create([
    	    'name' => 'Fajar Maulana Firdaus',
        	'email' => 'fajarmf78@gmail.com',
        	'password' => bcrypt('admin123')
	    ]);

    	// 2b. Create forum moderator
    	$moderator = \App\User::create([
        	'name' => 'Brama Diwangkara',
        	'email' => 'ndutank46@gmail.com',
        	'password' => bcrypt('mod123')
	    ]);

	    $general = \App\User::create([
        	'name' => 'Iqbal Mabruri',
        	'email' => 'iqbalmabruri@gmail.com',
        	'password' => bcrypt('general')
	    ]);

    	// 3. Attach a role to the user object / assign a role to a user
    	$admin->attachRole($adminRole);
    	$moderator->attachRole($moderatorRole);
    	$general->attachRole($generalRole);

    }
}
