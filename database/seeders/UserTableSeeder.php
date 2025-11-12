<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //create data user
        $userCreate = User::create([
            'name'              => 'Admin',
            'email'             => 'admin@gmail.com',
            'email_verified_at' => now(),
            'password'          => bcrypt('password'),
            'remember_token'    => Str::random(10)
        ]);

        //assign permission to role
        $role = Role::find(1);
        $permissions = Permission::all();

        $role->syncPermissions($permissions);

        //assign role with permission to user
        $user = User::find(1);
        $user->assignRole($role->name);

        // Making user student and teacher without the permissions
        $userCreate = User::create(
            [
                'name'              => 'Student',
                'email'             => 'student@gmail.com',
                'email_verified_at' => now(),
                'password'          => bcrypt('password'),
                'remember_token'    => Str::random(10)
            ]
        );

        $userCreate = User::create(
            [
                'name'              => 'Teacher',
                'email'             => 'teacher@gmail.com',
                'email_verified_at' => now(),
                'password'          => bcrypt('password'),
                'remember_token'    => Str::random(10)
            ]
        );
    }
}
