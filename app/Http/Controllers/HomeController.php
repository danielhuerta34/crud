<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use PDOCrud;
use App\Http\Controllers\ApiController;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        require_once app_path() . "/script/pdocrud.php";
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pdocrud = Controller::PDOCrudConection();
        $pdocrud->addChart("chart5", "google-chart", "SELECT nombreIndicador, id, valorIndicador FROM historical WHERE fechaIndicador BETWEEN fechaIndicador AND fechaIndicador", "fechaIndicador", "total", "sql", array("title" => "Historial Uf", "width" => "100%", "height" => "800", "google-chart-type" => "BarChart"));
        $chart =  $pdocrud->render("chart", array("chart5"));

        return view(
            'home',
            ['chart' => $chart]
        );
    }

    public function historic_uf(Request $request)
    {
        $api = new ApiController();
        $api->api_historic_uf();

        $pdocrud = Controller::PDOCrudConection();
        $pdocrud->tableHeading("");
        $pdocrud->tableColFormatting("fechaIndicador", "date", array("format" => "m/d/Y"));
        $pdocrud->setSettings("printBtn", false);
        $pdocrud->setSettings("pdfBtn", false);
        $pdocrud->setSettings("csvBtn", false);
        $pdocrud->setSettings("excelBtn", false);
        $render = $pdocrud->dbTable("historical")->render();
        return view('historic_uf/historic_uf', [
            'render' => $render
        ]);
    }

    public function users()
    {
        $pdocrud = Controller::PDOCrudConection();
        $pdocrud->tableHeading("");
        $pdocrud->fieldHideLable("active");
        $pdocrud->fieldDataAttr("active", array("style" => "display:none"));
        $pdocrud->formFieldValue("active", "1");
        $pdocrud->tableColFormatting("avatar", "image", array("width" => "60px"));
        $pdocrud->viewColFormatting("avatar", "image", array("width" => "60px"));
        $pdocrud->formFields(array("name", "email", "avatar", "password", "active"));
        $pdocrud->fieldTypes("avatar", "FILE_NEW");
        $pdocrud->crudRemoveCol(array("email_verified_at", "password", "id", "active", "remember_token", "created_at", "updated_at"));
        $pdocrud->addCallback("before_insert", "insert_users");
        $pdocrud->addCallback("before_update", "update_users");
        $pdocrud->setSettings("printBtn", false);
        $pdocrud->setSettings("pdfBtn", false);
        $pdocrud->setSettings("csvBtn", false);
        $pdocrud->setSettings("excelBtn", false);
        $render = $pdocrud->dbTable("users")->render();
        return view('users', [
            'render' => $render
        ]);
    }

    public function filtrar_grafico(Request $request)
    {
        $fecha_desde = $request->get('fecha_desde');
        $fecha_hasta = $request->get('fecha_hasta');

        $desde =  date("Y-m-d", strtotime($fecha_desde));
        $hasta =  date("Y-m-d", strtotime($fecha_hasta));

        $pdocrud = Controller::PDOCrudConection();
        $pdocrud->addChart("chart5", "google-chart", "SELECT nombreIndicador, id, valorIndicador FROM historical WHERE fechaIndicador BETWEEN '" . $desde . "' AND '" . $hasta . "'", "fechaIndicador", "total", "sql", array("title" => "Historial Uf", "width" => "100%", "height" => "800", "google-chart-type" => "BarChart"));
        echo $pdocrud->render("chart", array("chart5"));
    }
}
