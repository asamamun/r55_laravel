<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::middleware('auth')->get('/', [HomeController::class, 'index']);
// Route::middleware('auth')->get('/home', [HomeController::class, 'index']);
// Route::middleware('auth')->get('/album', [HomeController::class, 'album']);
// Route::middleware('auth')->get('/product', [HomeController::class, 'product']);

Route::get('/', [HomeController::class, 'index']);
Route::get('/home', [HomeController::class, 'index']);
// Route::get('/category', [CategoryController::class, 'index']);
// Route::get('/category/{id}', [CategoryController::class, 'showcat']);
Route::resource('category', CategoryController::class);
/*
Verb	    URI	                        Action	    Route Name
GET	        /category	                index	    category.index
GET	        /category/create	        create	    category.create
POST	    /category	                store	    category.store
GET	        /category/{photo}	        show	    category.show
GET	        /category/{photo}/edit	    edit	    category.edit
PUT/PATCH	/category/{photo}	        update	    category.update
DELETE	    /category/{photo}	        destroy	    category.destroy
*/
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    
    Route::get('/album', [HomeController::class, 'album']);
    Route::get('/product', [HomeController::class, 'product']);
});

require __DIR__.'/auth.php';
