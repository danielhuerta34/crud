<?php
/*enable this for development purpose */
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);
date_default_timezone_set(@date_default_timezone_get());
define('PDOCrudABSPATH', dirname(__FILE__) . '/');
require_once PDOCrudABSPATH . "../../vendor/autoload.php";
$dotenv = Dotenv\Dotenv::createImmutable(dirname(__DIR__, 2));
$dotenv->load();
function evalBool($value)
{
    return (strcasecmp($value, 'true') ? false : true);
}
require_once PDOCrudABSPATH . "config/config.php";
spl_autoload_register('pdocrudAutoLoad');

function pdocrudAutoLoad($class)
{
    if (file_exists(PDOCrudABSPATH . "classes/" . $class . ".php"))
        require_once PDOCrudABSPATH . "classes/" . $class . ".php";
}

if (isset($_REQUEST["pdocrud_instance"])) {
    $fomplusajax = new PDOCrudAjaxCtrl();
    $fomplusajax->handleRequest();
}

function insert_users($data, $obj)
{
    $password_hash = password_hash($data["users"]["password"], PASSWORD_DEFAULT);
    $data["users"]["password"] = $password_hash;
    return $data;
}

function update_users($data, $obj)
{
    $password_hash = password_hash($data["users"]["password"], PASSWORD_DEFAULT);
    $data["users"]["password"] = $password_hash;
    return $data;
}


function beforeloginCallback($data, $obj)
{
    $pass = htmlspecialchars($data['users']['password']);
    $email = htmlspecialchars($data['users']['email']);

    $pdomodel = $obj->getPDOModelObj();
    $pdomodel->where("email", $email);
    $hash = $pdomodel->select("users");

    if (password_verify($pass, $hash[0]['password'])) {
        @session_start();
        $_SESSION["data"] = $data;
        $obj->setLangData("no_data", "Bienvenido");
        $obj->formRedirection(base_url . "/home/index");
    } else {
        echo "El correo o la contraseña ingresada no coinciden";
        die();
    }

    $newdata = array();
    $newdata["users"]["password"] = $data["users"]["password"];
    $newdata["users"]["email"] = $data["users"]["email"];

    return $newdata;
}


function resetloginCallback($data, $obj)
{
    $email = htmlspecialchars($data['users']['email']);
    $pdomodel = $obj->getPDOModelObj();
    $pdomodel->where("email", $email);
    $hash = $pdomodel->select("users");

    if ($hash) {
        $pass = $pdomodel->getRandomPassword(15, true);
        $encrypt = password_hash($pass, PASSWORD_DEFAULT);

        $pdomodel->where("id", $hash[0]["id"]);
        $pdomodel->update("users", array("password" => $encrypt));

        $emailBody = "Correo enviado  tu nueva contraseña es: $pass";
        $subject = "prueba de email";
        $to = $email;
        Mailer::send($to, $subject, $emailBody, $cc = array(), true);
        $obj->setLangData("success", "Correo enviado con éxito");
        die();
    }

    return $data;
}
