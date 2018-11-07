<?php require "../views/header.view.php"; ?>

<div class="container text-center" style="margin-top:10px;">
    <div class=="row">
    	
        <?php require "../views/menuNav.view.php" ?>

        <div class="col-sm-9">

            <div class="row" >
                <div class="col-sm-12" >
                    <div class="well" style="background: white; ">
                        
                        <div class="container">
                            <legend style="float: top center;">AGREGAR CLASE</legend>
                            <form role="form" method="POST" enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>">
                                
                                <div class="input row" >
                                    <div class="form-group"> 
                                        <label class="col-md-3 control-label">Curso</label>
                                        <div class="col-md-9 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                <select name="curso" class="form-control selectpicker" >
                                                    <option value=" " >Seleccione el curso</option>
                                                    <option>Interfaz Hombre Computador</option>
                                                    
                                                    <option>lenguaje y compiladores</option>
                                                    <option>Wisconsin</option>
                                                    <option >Wyoming</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="input row" >
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Semana</label>  
                                        <div class="col-md-9 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"></span>
                                                <input name="semana" placeholder="" class="form-control" type="number" min="1" max="17">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="input row" >
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Nombre de la clase</label>  
                                        <div class="col-md-9 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                <input name="nombreClase" placeholder="Nombre" class="form-control" type="text">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="input row" >
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Descripcion de la clase</label>
                                            <div class="col-md-9 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                    <textarea class="form-control" name="descripcion" placeholder="Descripcion"></textarea>
                                                </div>
                                            </div>
                                    </div>
                                </div>

                                <div class="input row" >
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Adjuntar un archivo</label>
                                        <div class="col-md-9 inputGroupContainer">
                                            <input type="file" id="ejemplo_archivo_1" name="archivo">
                                            <p class="help-block">Ejemplo de texto de ayuda.</p>
                                        </div>
                                     </div>
                                </div>

                              <button type="submit" class="btn btn-default">Subir Clase</button>
                            </form>
                        </div>
                    </div> 
                </div>
            </div>
        </div>

    </div>
</div>

<footer class="container-fluid text-center">
    <p></p>
    <hr>
    <p>@2018 Facultad de Ingenieria de Sistemas e Informatica</p>
    <br>
    <br>
    <br>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="../comportamiento/menu.js"></script>

</body>
</html>