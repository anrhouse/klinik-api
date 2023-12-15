<?php
    namespace App\Http\Controllers;

    use App\Models\Poli;
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Validator;

    class PoliController extends Controller{
        function index() {
            $poli = Poli::all();
            $kode = 200;

            $response = [
                'code'      => $kode,
                'success'   => true,
                'message'   => 'List Poli',
                'data'      => $poli
            ];
            return response()->json($response,$kode);
        }   

        function store(Request $request) {
            $kode       = '';
            $response   = [];

            $validator = Validator::make($request->all(), [
                'poli'  => 'required'
            ]);

            if($validator->fails()){
                $kode       = 400;
                $response   = [
                    'code'      => $kode,
                    'success'   => false,
                    'message'   => 'Semua kolom wajib diisi',
                    'data'      => $validator->error()
                ];
            }else{
                $poli = Poli::create([
                    'poli'  => $request->input('poli')
                ]);

                if($poli){
                    $kode = 201;
                    $response   = [
                        'code'      => $kode,
                        'success'   => true,
                        'message'   => 'Poli Berhasil Disimpan',
                        'data'      => $poli
                    ];
                }else{
                    $kode = 400;
                    $response   = [
                        'code'      => $kode,
                        'success'   => false,
                        'message'   => 'Poli Gagal Disimpan',
                        'data'      => ''
                    ];
                }
            }

            return response()->json($response, $kode);
        }

        function show($id) {
            $poli = Poli::find($id);

            if($poli){
                $kode = 200;
                $response   = [
                    'code'      => $kode,
                    'success'   => true,
                    'message'   => 'Detail Poli',
                    'data'      => $poli
                ];
            }else{
                $kode = 404;
                $response   = [
                    'code'      => $kode,
                    'success'   => false,
                    'message'   => 'Poli Tidak Ditemukan',
                    'data'      => ''
                ];
            }
            return response()->json($response, $kode); 
        }

        function destroy($id) {

            $poli = Poli::whereId($id)->first();

            if($poli != null){
                $kode       = 200;
                $poli->delete();
                $response   = [
                    'code'      => $kode,
                    'success'   => true,
                    'message'   => 'Poli berhasil dihapus',
                    'data'      => ''
                ];
            }else{
                $kode       = 404;
                $response   = [
                    'code'      => $kode,
                    'success'   => false,
                    'message'   => 'Poli gagal dihapus',
                    'data'      => ''
                ];
            }

            return response()->json($response, $kode);
            
        }

        function update(Request $request, $id) {
            
            $validator = Validator::make($request->all(),[
                'poli'  => 'required'
            ]);

            if($validator->fails()){
                $kode       = 400;
                $response   = [
                    'code'      => $kode,
                    'status'    => false,
                    'message'   => 'Semua kolom wajib diisi',
                    'data'      => $validator->errors()
                ];
            }else{
                $poli = Poli::whereId($id)->update([
                    'poli'  => $request->input('poli')
                ]);

                if($poli){
                    
                    $kode       = 200;
                    $response   = [
                        'code'      => $kode,
                        'status'    => true,
                        'message'   => 'Poli berhasil diupdate',
                        'data'      => $poli
                    ];
                }else{
                    $kode       = 404;
                    $response   = [
                        'code'      => $kode,
                        'status'    => false,
                        'message'   => 'Poli gagal diupdate',
                        'data'      => ''
                    ];
                }
            }

            return response()->json($response, $kode);
        }
    }

?>