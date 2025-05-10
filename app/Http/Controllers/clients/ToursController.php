<?php

namespace App\Http\Controllers\clients;

use App\Http\Controllers\Controller;
use App\Models\Clients\Tours;
use Illuminate\Http\Request;

class ToursController extends Controller
{
    private $tours;
    public function __construct()
    {
        $this->tours = new Tours();
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $title = 'Tours';
        $tours = $this->tours->getAllTours();
        return view('clients.tours', compact('title', 'tours'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
