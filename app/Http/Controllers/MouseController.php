<?php

namespace App\Http\Controllers;

use App\Models\Mouse;
use App\Http\Requests\StoreMouseRequest;
use App\Http\Requests\UpdateMouseRequest;

class MouseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
    public function store(StoreMouseRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Mouse $mouse)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Mouse $mouse)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateMouseRequest $request, Mouse $mouse)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Mouse $mouse)
    {
        //
    }
}
