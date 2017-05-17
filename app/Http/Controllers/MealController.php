<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Meal;
use App\Menu;
use App\MealItem;
class MealController extends Controller
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
       $meals = Meal::paginate(3, ['*'],'mealView');
        return view('Meals.Meals', compact('meals'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $menus = Menu::all();
        return view('Meals.create', compact('menus'));
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

        $meal = Meal::create($input);


        foreach($input["items"] as $item){

            MealItem::create(["meal_id"=>$meal->id, 'item_id'=>$item, 'discount'=> $input['discount'][$item]]);
        }

        $menus = Menu::all();

        $mealItems = MealItem::where("meal_id",$meal->id)->get();
        $mealItemIDs = array();

        foreach($mealItems as $mealItem){
            $mealItemIDs[] = $mealItem->item_id;

        }

        return view("Meals.Edit", compact("meal", 'menus', 'mealItemIDs'));
    }

    public function uplaod($file)
    {
        $extension = $file->getClientOriginalExtension();
        $sha1 = sha1($file->getClientOriginalName());
        $fileName = date("y-m-d-h-i-s") . "_" . $sha1 . "." .$extension;
        $path = public_path('image/Meals/');
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
        $meal = Meal::findOrFail($id);
        $menus = Menu::all();

        $mealItems = MealItem::where("meal_id",$meal->id)->get();
        $mealItemIDs = array();

        foreach($mealItems as $mealItem){
            $mealItemIDs[] = $mealItem->item_id;
            $mealItemIDsWithDiscount[$mealItem->item_id] = $mealItem->discount;

        }

        return view("Meals.Edit", compact("meal", 'menus', 'mealItemIDs', 'mealItemIDsWithDiscount'));
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

       $meal = Meal::findOrFail($id)->update($input);
       
        MealItem::where('meal_id', $id)->delete();
       
        foreach($input["items"] as $item){

            MealItem::create(["meal_id"=>$id, 'item_id'=>$item, 'discount'=> $input['discount'][$item]]);
        }

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
        Meal::findOrFail($id)->delete();

        return redirect()->back();
    }
}
