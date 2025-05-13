<?php

namespace App\Providers;

use App\Http\Middleware\AdminMiddleware;
use App\Http\Middleware\CheckLoggedInClients;
use App\Models\admin\ContactModel;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Route;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('admin.blocks.sidebar', function ($view) {
            $contactModel = new ContactModel();
            $unreadData = $contactModel->countContactsUnread(); // Lấy cả số lượng và danh sách thư

            // Chia sẻ số lượng và danh sách thư chưa trả lời vào view sidebar
            $view->with('unreadCount', $unreadData['countUnread']);
            $view->with('unreadContacts', $unreadData['contacts']);
        });

        Route::aliasMiddleware('admin', AdminMiddleware::class);
        Route::aliasMiddleware('checkLoginClient', CheckLoggedInClients::class);
    }
}
