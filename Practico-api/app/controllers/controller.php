<?php

require_once 'models/PeliculasModel.php';
require_once("api/JsonView.php");

class controller {
    private $model;
    private $APIView;
    private $data;

    public function __construct() {
        $this->model = new model();
        $this->view = new APIView();
        $this->data = file_get_contents("php://input"); 
    }

    function getData(){ 
        return json_decode($this->data); 
    }  

    
    // Muestro las peliculas
    public function showMovies($params = []){
    
        $movies = $this->model->getMovies();
        return $this->APIView->response($movies, 200);
    }

    // Agrego peliculas
    public function agregarPeliculas();

        $pelis = $this->model->agregarPelis();
        return $this->APIView->response($pelis,200);

    //Traer una sola pelicula
    function get($params = []){

        if(empty($params)){
            $movies = $this->model->getMovies();
            return $this->view->response($movies,200);
        }
        else {
            $movie = $this->model->getMovie($params[":ID"]);
            if(!empty($movie)) {
                return $this->view->response($movie,200);
            }
        }    
        
    public function deleteMovie($params = []) {
        $movie_id = $params[':ID'];
        $movie = $this->model->getMovie($movie_id);
    
        if ($movie) {
            $this->model->deleteMovie($task_id);
            $this->view->response("Pelicula id=$movie_id eliminada con éxito", 200);
        }
        else 
            $this->view->response("Pelicula id=$movie_id not found", 404);
    }
    
    
    
}









?>