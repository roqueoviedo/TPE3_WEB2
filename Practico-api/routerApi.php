<?php
require_once "router.php";
require_once "./app/controllers/Controller.php";

define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
// crea el router
$router = new Router();

// define la tabla de ruteo 

$router->addRoute('peliculas', 'GET', 'Controller', 'showMovies'); //Mostrar todas las peliculas 
$router->addRoute('peliculas', 'POST', 'Controller', 'agregarPeliculas'); //Agregar pelicula
$router->addRoute('peliculas/:ID', 'GET', 'Controller', 'showMovie'); // Crear una pelicula


// rutea
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);