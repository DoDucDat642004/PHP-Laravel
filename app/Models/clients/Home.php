<?php

namespace App\Models\Clients;

use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Facades\DB;

class Home extends Model
{
    use HasFactory;
    
    // Tên bảng trong database
    protected $table = 'tbl_tours';

    // public function getHomeTours(): collection{
        
    //     // Lấy thông tin tour
    //     $tours = DB::table($this->table)->get();

        // foreach ($tours as $tour) {
        //     // Lấy danh sách hình ảnh thuộc về tour
        //     $tour->images = DB::table('tbl_images')
        //         ->where('tourId', $tour->tourId)
        //         ->pluck('imageUrl');

        //         // $tour->timeline = DB::table('tbl_timeline')
        //         // ->where('tourId', $tour->tourId)
        //         // ->pluck('title');
        // }

    //     return $tours;
    // }

    // Trong model Home.php
    public function getHomeTours(): Collection
    {
        // Lấy thông tin tour
        $tours = DB::table($this->table)->get();

        foreach ($tours as $tour) {
            $tour->images = DB::table('tbl_images')
                ->where('tourId', $tour->tourId)
                ->pluck('imageUrl');
        }
        

        return $tours;
    }

}
