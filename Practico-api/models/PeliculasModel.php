<?php
class PeliculasModel{
    private $db;
  public function __construct()
  {
    $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_movieonline;charset=utf8', 'root', '');
  }

  //Esta función se utiliza para obtener todos los registros de la tabla peliculas y ordenarlos por el campo titulo en orden ascendente.
  public function getMovies(){
    $query = $this->db->prepare('SELECT * FROM peliculas ORDER BY titulo ASC');
    $query->execute();
    return $query->fetchAll(PDO::FETCH_OBJ);
  }

  //Esta función se utiliza para obtener todos los registros de la tabla genero_peliculas y ordenarlos por el campo id_genero en orden ascendente.
  public function getGenero(){
    $query = $this->db->prepare('SELECT * FROM genero_peliculas ORDER BY id_genero ASC');
    $query->execute();
    return $query->fetchAll(PDO::FETCH_OBJ);
  }

  
  public function getXgenero($genero){
    $query = $this->db->prepare('SELECT * FROM peliculas WHERE fk_genero=? ORDER BY titulo ASC');
    $query->execute([$genero]);
    $pelicula = $query->fetchAll(PDO::FETCH_OBJ);
    return $pelicula;
  }

  public function consultaDescripcion($idPeli){
    $consultaDescrip = $this->db->prepare('SELECT * FROM peliculas WHERE id=?'); 
    $consultaDescrip->execute([$idPeli]);
    return $consultaDescrip->fetchAll(PDO::FETCH_OBJ);

  }
  //Agregar nueva pelicula
  public function agregarPeli($titulo,$anio,$director,$clasificacion,$sinopsis,$fk_genero){
    $query = $this->db->prepare ('INSERT INTO peliculas (titulo, anio, director, clasificacion, sinopsis, fk_genero) VALUES(?,?,?,?,?,?)');
    $query->execute([$titulo,$anio,$director,$clasificacion,$sinopsis,$fk_genero]);
  }
  
  // Esto se utiliza para eliminar, cambiarlo.
  function eliminarPelis($titulo,$anio,$director,$clasificacion,$sinopsis,$fk_genero){
    $consulta = $this->db->prepare('DELETE FROM peliculas WHERE id=?'); 
    $consulta->execute([$id_artista]);
    return $consulta->rowCount();
}
}

