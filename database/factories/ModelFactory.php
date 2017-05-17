<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/
//user factory table
$factory->define(App\User::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->safeEmail,
        'role' => $faker->word,
        'password' => bcrypt(str_random(10)),
        'remember_token' => str_random(10),
    ];
});
// menu factory table
$factory->define(App\Menu::class, function (Faker\Generator $faker) {
    return [
        'title' => $faker->sentence,
        'type' => $faker->word,
        'description' => $faker->text,
        'status' => $faker->boolean,
        'img' => $faker->imageUrl($width = 640, $height = 480),
        'user_id'=>$faker->numberBetween($min = 1, $max = 10),

    ];
});
// item factory table
$factory->define(App\Item::class, function (Faker\Generator $faker) {
    return [
        'title' => $faker->sentence,
        'price' => $faker->randomFloat($nbMaxDecimals = NULL, $min = 10.12, $max = 205.32),
        'description' => $faker->text,
        'status' => $faker->boolean,
        'img' => $faker->imageUrl($width = 640, $height = 480),
        'user_id'=>$faker->numberBetween($min = 1, $max = 10),
        'menu_id'=>$faker->numberBetween($min = 1, $max = 10),

    ];
});
// meal factory table
$factory->define(App\Meal::class, function (Faker\Generator $faker) {
    return [
        'title' => $faker->sentence,
        'price' => $faker->randomFloat($nbMaxDecimals = NULL, $min = 10.12, $max = 205.32),
        'description' => $faker->text,
        'status' => $faker->boolean,
        'img' => $faker->imageUrl($width = 640, $height = 480),
        'user_id'=>$faker->numberBetween($min = 1, $max = 5),
    ];
});
//customer factory table
$factory->define(App\Customer::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->safeEmail,
        'address'=> $faker->address,
        'city'=> $faker->city,
        'phone'=> $faker->e164PhoneNumber,
        'password' => bcrypt(str_random(10)),
    ];
});
// order factory table
$factory->define(App\Order::class, function (Faker\Generator $faker) {
    return [
        'total' => $faker->randomFloat($nbMaxDecimals = NULL, $min = 10.12, $max = 205.32),
        'cachIn' => $faker->randomFloat($nbMaxDecimals = NULL, $min = 10.12, $max = 205.32),
        'payment' => $faker->randomFloat($nbMaxDecimals = NULL, $min = 10.12, $max = 205.32),
        'change' => $faker->randomFloat($nbMaxDecimals = NULL, $min = 10.12, $max = 205.32),
        'status' => $faker->boolean,
        //'customer_id'=>$faker->numberBetween($min = 1, $max = 5),
    ];
});
// comment factory table
$factory->define(App\Comment::class, function (Faker\Generator $faker) {
    return [
        'title' => $faker->sentence,
        'description' => $faker->text,
        'status' => $faker->boolean,
        'img' => $faker->imageUrl($width = 640, $height = 480),
        'customer_id'=>$faker->numberBetween($min = 1, $max = 10),
        'order_id'=>$faker->numberBetween($min = 1, $max = 10),
        'rate'=>$faker->numberBetween($min = 1, $max = 5),
    ];
});
// meal_item factory table
$factory->define(App\MealItem::class, function (Faker\Generator $faker) {
    return [
        'meal_id'=>$faker->numberBetween($min = 1, $max = 10),
        'Item_id'=>$faker->numberBetween($min = 1, $max = 10),
        'discount'=>$faker->numberBetween($min = 1, $max = 100),
    ];
});
// order_item factory table
$factory->define(App\OrderItem::class, function (Faker\Generator $faker) {
    return [
        'order_id'=>$faker->numberBetween($min = 1, $max = 10),
        'Item_id'=>$faker->numberBetween($min = 1, $max = 10),
    ];
});
// order_meal factory table
$factory->define(App\OrderMeal::class, function (Faker\Generator $faker) {
    return [
        'order_id'=>$faker->numberBetween($min = 1, $max = 10),
        'meal_id'=>$faker->numberBetween($min = 1, $max = 10),
    ];
});
// order_user factory table
$factory->define(App\OrderUser::class, function (Faker\Generator $faker) {
    return [
        'user_id'=>$faker->numberBetween($min = 1, $max = 10),
        'order_id'=>$faker->numberBetween($min = 1, $max = 10),
        'type'=>$faker->word,
    ];
});
