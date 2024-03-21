<?php

namespace App\Http\Controllers;
use App\Models\Laporan;
use App\Models\Dashboard;
use Illuminate\Http\Request;
use Datatables;
use App\Models\File;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    //start
/**
* Display a listing of the resource.
*
* @return \Illuminate\Http\Response
*/
public function index()
{
    $role_id=Auth::user()->role_id;
    
    $count_total = DB::table('laporans')
    ->leftjoin('tb_user', 'laporans.user', '=', 'tb_user.name')
    ->count();
   
    $count_asis = DB::table('laporans')
    ->leftjoin('tb_user', 'laporans.user', '=', 'tb_user.name')
    ->where('wilayah', 'ASIS')->count();
    // Batas
    $count_ago = DB::table('laporans')
    ->leftjoin('tb_user', 'laporans.user', '=', 'tb_user.name')
    ->where('wilayah', 'AGO')->count();
    //
    $count_dgse = DB::table('laporans')
    ->leftjoin('tb_user', 'laporans.user', '=', 'tb_user.name')
    ->where('wilayah', 'DGSE')->count();
    //
    $count_dih = DB::table('laporans')
    ->leftjoin('tb_user', 'laporans.user', '=', 'tb_user.name')
    ->where('wilayah', 'DIH')->count();
    //
    $count_ias = DB::table('laporans')
    ->leftjoin('tb_user', 'laporans.user', '=', 'tb_user.name')
    ->where('wilayah', 'IAS')->count();
    // dd($count_dgse);


    return view('dashboards.index')
    ->with('count_total', $count_total)
    ->with('count_asis', $count_asis)
    ->with('count_ago', $count_ago)
    ->with('count_dgse', $count_dgse)
    ->with('count_dih', $count_dih)
    ->with('count_ias', $count_ias);
   

  
    
    if ($role_id==4)
    {
        if(request()->ajax()) {
    
            return datatables()->of(Laporan::select('*'))
            ->addColumn('action', 'laporans.action')
            ->rawColumns(['action'])
            ->addIndexColumn()
            ->make(true);
            }
    }
    else{
        if(request()->ajax()) {
    
            return datatables()->of(Laporan::select('*')
            ->leftjoin('tb_user', 'laporans.user','=','tb_user.name')  
            ->where('role_id', $role_id))
            ->addColumn('action', 'laporans.action')
            ->rawColumns(['action'])
            ->addIndexColumn()
            ->make(true);
            }
    }

return view('dashboards.index');
}


// public function getbudget()
// {
//     $budget = DB::table('budget')->where('id', 1)->get();
// }
// return view('laporans.index');
// }

/**
* Show the form for creating a new resource.
*
* @return \Illuminate\Http\Response
*/
public function create()
{
return view('laporans.create');
}
/**
* Store a newly created resource in storage.
*
* @param  \Illuminate\Http\Request  $request
* @return \Illuminate\Http\Response
*/
public function store(Request $request)
{

$request->validate([
'bidang' => 'required',
'wilayah' => 'required',
'user' => 'required',
'tanggal' => 'required',
'judul' => 'required',
'isi' => 'required',
'catatan' => 'required',
'tempat' => 'required',
'file' => 'required|mimes:pdf,xlx,csv,doc,docx,ppt,pptx|max:20480'
]);
$today = date("Ymd");  

$laporan = new Laporan;
$fileName=$today.'_'.$request->file->getClientOriginalName();
$filePath = $request->file('file')->storeAs('uploads', $fileName, 'public');

$request->file->move(public_path('uploads'), $fileName);


$laporan->bidang = $request->bidang;
$laporan->wilayah = $request->wilayah;
$laporan->user = $request->user;
$laporan->tanggal = $request->tanggal;
$laporan->judul = $request->judul;
$laporan->isi = $request->isi;
$laporan->catatan = $request->catatan;
$laporan->tempat = $request->tempat;
$laporan->filename = $fileName;
$laporan->url = $filePath;
$laporan->save();

return redirect()->route('laporans.index')
->with('success','Data has been created successfully.');
}
/**
* Display the specified resource.
*
* @param  \App\company  $company
* @return \Illuminate\Http\Response
*/
public function show(Laporan $laporan)
{
return view('laporans.show',compact('laporan'));
} 
/**
* Show the form for editing the specified resource.
*
* @param  \App\Company  $company
* @return \Illuminate\Http\Response
*/
public function edit(Laporan $laporan)
{
return view('laporans.edit',compact('laporan'));
}

/**
* Update the specified resource in storage.
*
* @param  \Illuminate\Http\Request  $request
* @param  \App\company  $company
* @return \Illuminate\Http\Response
*/
public function update(Request $request, $id)
{
$request->validate([
    'bidang' => 'required',
    'wilayah' => 'required',
    'user' => 'required',
    'tanggal' => 'required',
    'judul' => 'required',
    'isi' => 'required',
    'catatan' => 'required',
    'tempat' => 'required',
    'file' => 'mimes:pdf,xlx,csv,doc,docx,ppt,pptx|max:20480'
]);
$today = date("Ymd"); 
$laporan = new Laporan;
$a=$request->file;

if($a == NULL)
{
    $laporan = Laporan::find($id);
    $laporan->bidang = $request->bidang;
    $laporan->wilayah = $request->wilayah;
    $laporan->user = $request->user;
    $laporan->tanggal = $request->tanggal;
    $laporan->judul = $request->judul;
    $laporan->isi = $request->isi;
    $laporan->catatan = $request->catatan;
    $laporan->tempat = $request->tempat;
    $laporan->save();
    return redirect()->route('laporans.index')
    ->with('success','Laporan Has Been updated successfully');
    
}
else{

    $fileName=$today.'_'.$request->file->getClientOriginalName();
    $filePath = $request->file('file')->storeAs('uploads', $fileName, 'public');
    
    $request->file->move(public_path('uploads'), $fileName);

    $laporan = Laporan::find($id);
    $laporan->bidang = $request->bidang;
    $laporan->wilayah = $request->wilayah;
    $laporan->user = $request->user;
    $laporan->tanggal = $request->tanggal;
    $laporan->judul = $request->judul;
    $laporan->isi = $request->isi;
    $laporan->catatan = $request->catatan;
    $laporan->tempat = $request->tempat;
    $laporan->filename = $fileName;
    $laporan->url = $filePath;
    $laporan->save();
    return redirect()->route('laporans.index')
    ->with('success','Laporan Has Been updated successfully');
}

}

/**
* Remove the specified resource from storage.
*
* @param  \App\Company  $company
* @return \Illuminate\Http\Response
*/
public function destroy(Request $request)
{
$com = Laporan::where('id',$request->id)->delete();
return Response()->json($com);
}
    //end
}
