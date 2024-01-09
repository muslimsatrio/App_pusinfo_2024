<?php
use App\Http\Controllers\CompanyCRUDController;
use App\Http\Controllers\LaporanCRUDController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FileUploadController;

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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', function () {
    return view('home', ['title' => 'Home']);
})->name('home');

Route::get('register', [UserController::class, 'register'])->name('register');
Route::post('register', [UserController::class, 'register_action'])->name('register.action');
Route::get('login', [UserController::class, 'login'])->name('login');
Route::post('login', [UserController::class, 'login_action'])->name('login.action');
Route::get('password', [UserController::class, 'password'])->name('password');
Route::post('password', [UserController::class, 'password_action'])->name('password.action');
Route::get('logout', [UserController::class, 'logout'])->name('logout');

Route::resource('companies', CompanyCRUDController::class);
Route::post('delete-company', [CompanyCRUDController::class,'destroy']);

Route::resource('laporans', LaporanCRUDController::class);
Route::post('delete-laporan', [LaporanCRUDController::class,'destroy']);
Route::resource('dashboards', DashboardController::class);

Route::get('file-upload', [FileUploadController::class, 'index']);
Route::post('store', [FileUploadController::class, 'store']);
