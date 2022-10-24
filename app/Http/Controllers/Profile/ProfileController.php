<?php

namespace App\Http\Controllers\Profile;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Role;
use App\Models\User;
use App\Http\Requests\Profile\UpdateProfileRequest;
use App\Http\Requests\Profile\UpdatePasswordProfileRequest;
use App\Http\Requests\Profile\UpdateAvatarProfileRequest;


class ProfileController extends Controller
{
    public function __construct()
    {
        require_once app_path() . "/script/pdocrud.php";
        $this->middleware("auth");
    }

    public function index()
    {
        $pdocrud = Controller::PDOCrudConection();
        $pdocrud->setPK("id");
        $pdocrud->fieldDataAttr("password", array("value" => ""));
        $pdocrud->formFields(array("name", "email", "avatar", "password"));
        $pdocrud->fieldTypes("avatar", "FILE_NEW");
        $pdocrud->addCallback("before_update", "update_users");
        $render = $pdocrud->dbTable("users")->render("editform", array("id" => Auth::user()->id));
        return view('profile.index', [
            'render' => $render
        ]);
    }
}
