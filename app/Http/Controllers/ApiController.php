<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;

class ApiController extends Controller
{

    /* creamos el método estatico encargado de generar el token aleatorio */
    public static function generarToken()
    {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://postulaciones.solutoria.cl/api/acceso',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => '{
                "userName": "daniel.telematico@gmail.com",
                "flagJson": true
            }',
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
        ));

        $response = curl_exec($curl);
        $data = json_decode($response, true);

        if ($data) {
            return $data["token"];
        }
    }

    public function api_historic_uf()
    {

        /*if (!$request->isMethod('post')) {
            return redirect()->route('unauthorized');
        }*/

        $token = ApiController::generarToken(); /* leemos el token */

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://postulaciones.solutoria.cl/api/indicadores',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
            CURLOPT_HTTPHEADER => array(
                'Authorization: Bearer ' . $token
            ),
        ));

        $response = curl_exec($curl);
        $uf = json_decode($response);

        $pdocrud = Controller::PDOCrudConection();
        $pdomodel = $pdocrud->getPDOModelObj();
        $historial = $pdomodel->select("historical");

        if (empty($historial)) {
            $sql = [];
            foreach ($uf as $value) {
                $uf = $value->codigoIndicador;
                if ($uf == "UF") {
                    $sql['nombreIndicador'] =  $value->nombreIndicador;
                    $sql['codigoIndicador'] =  $value->codigoIndicador;
                    $sql['unidadMedidaIndicador'] = $value->unidadMedidaIndicador;
                    $sql['valorIndicador'] =  $value->valorIndicador;
                    $sql['fechaIndicador'] = $value->fechaIndicador;
                    $sql['tiempoIndicador'] =  $value->tiempoIndicador;
                    $sql['origenIndicador'] = $value->origenIndicador;

                    $pdomodel->insertBatch("historical", array($sql));
                }
            }
        }
    }
}
