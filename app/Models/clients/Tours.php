<?php

namespace App\Models\clients;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Collection;


class Tours extends Model
{
    use HasFactory;

    protected $table = 'tbl_tours';


    // Lấy tất cả tours
    public function getAllTours(): Collection{
        $tours = DB::table($this->table)->get();
        foreach ($tours as $tour) {
            $tour->images = DB::table('tbl_images')
                ->where('tourId', $tour->tourId)
                ->pluck('imageUrl');
        }
        return $tours;
    }
    
    // Lấy chi tiết tours
    public function getTourDetail($id)
    {
        // Lấy tour với id xác định (dùng first để lấy 1 bản ghi thay vì collection)
        $tour = DB::table($this->table)
            ->where('tourId', $id)
            ->first();

        // Kiểm tra nếu không tìm thấy tour nào
        if (!$tour) {
            return null;
        }

        // Lấy danh sách hình ảnh
        $tour->images = DB::table('tbl_images')
            ->where('tourId', $tour->tourId)
            ->limit(5)
            ->pluck('imageUrl');

        // Lấy danh sách timeline
        $tour->timeline = DB::table('tbl_timeline')
            ->where('tourId', $tour->tourId)
            // ->pluck('title')
            ->get();

        return $tour;
    }


}
