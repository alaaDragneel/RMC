<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Item;
use App\Menu;
class ItemController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      //
       $items = Item::paginate(3, ['*'],'itemsView');
        return view('Items.Items', compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $menus = Menu::lists("title", "id");
        return view('Items.create', compact('menus'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = ($request->all());

        if(isset($input['img']))
        {
            //uplaod $input['img']
            $input['img'] = $this->uplaod($input['img']);
        }
        else
        {
            $input['img'] = 'defult.jpg';
        }

        $input['user_id'] = \Auth::user()->id;
        
        $item = Item::create($input);
        $menu = Menu::lists("title", "id");

        return view("Items.Edit", compact("item", 'menu'));
    }

    public function uplaod($file)
    {
        $extension = $file->getClientOriginalExtension(); 
        $sha1 = sha1($file->getClientOriginalName());
        $fileName = date("y-m-d-h-i-s") . "_" . $sha1 . "." .$extension;
        $path = public_path('image/Items/');
        $file->move($path, $fileName);

        return $fileName;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Item::findOrFail($id);
        $menu = Menu::lists("title", "id");
        return view('Items.edit', compact("item", 'menu'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = ($request->all());
           
        if(isset($input['img']))
        {
            //uplaod $input['img']
            $input['img'] = $this->uplaod($input['img']);
        }

        Item::findOrFail($id)->update($input);

        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        Item::findOrFail($id)->delete();

        return redirect()->back();
    }
}
