<?php require "../views/header.view.php"; ?>

</div>
<div class="container text-center" style="margin-top:10px;">
    <div class=="row">
        
        <?php require "../views/menuNav.view.php"; ?>

        <div class="col-sm-9">

            <div class="row">
                <div class="col-sm-11" >

                    <?php for ($i = 0 ; $i <17 ; $i++): ?>

                        <?php $encontrado = FALSE; ?>
                        


                        <?php foreach ($clases as $clase): ?>
                            
                            <?php if (($i+1) == $clase['semana']): ?>

                                <div class="panel panel-primary" id="<?php echo $i+1; ?>">
                                    <div class="panel-heading text-left">
                                        <p><span class="glyphicon glyphicon-pencil"></span> SEMANA <?php echo $i+1; ?> : <?php echo isset($clase['nombre']) ? $clase['nombre'] : ""; ?> <span class="glyphicon glyphicon-calendar" style="float:right"> 15/08/2018</span></p>
                                    </div>
                                    <div class="panel-body">
                                        <p>
                                            <?php echo isset($clase['descripcion']) ? $clase['descripcion'] : ""; ?>
                                        </p>
                                    </div>
                                    <ul class="list-group">
                                        <li class="list-group-item"><a href="<?php echo RUTA ?>clases/<?php echo $clase['archivo'] ?>"><img src="" alt=""> <?php echo isset($clase['archivo']) ? $clase['archivo'] : ""; ?></a></li>
                                    </ul>
                                </div>

                                <?php $encontrado = true; ?>
                                    
            
                            <?php endif ?>  
                            
                        <?php endforeach ?>

                            <?php if ($encontrado==false): ?>
                                
                                <div class="panel panel-primary" id="<?php echo $i+1; ?>">
                                    <div class="panel-heading text-left">
                                        <p><span class="glyphicon glyphicon-pencil"></span> SEMANA <?php echo $i+1; ?> :  <span class="glyphicon glyphicon-calendar" style="float:right"> 15/08/2018</span></p>
                                    </div>
                                    <div class="panel-body">
                                        <p>
                                            
                                        </p>
                                    </div>
                                    <ul class="list-group">
                                        <li class="list-group-item"><a href="#"><img src="" alt=""> </a></li>
                                    </ul>
                                </div> 

                            <?php endif ?>

                        

                    <?php endfor ?>

                </div>
                <div class="col-sm-1 lista-semana" >
                    <ul class="list-group">
                        <h4 class="titulo">Semana</h4>
                        <a href="#" class="list-group-item item-semana">1</a>
                        <a href="#1" class="list-group-item item-semana">2</a>
                        <a href="#2" class="list-group-item item-semana">3</a>
                        <a href="#3" class="list-group-item item-semana">4</a>
                        <a href="#4" class="list-group-item item-semana">5</a>
                        <a href="#5" class="list-group-item item-semana">6</a>
                        <a href="#6" class="list-group-item item-semana">7</a>
                        <a href="#7" class="list-group-item item-semana">8</a>
                        <a href="#8" class="list-group-item item-semana">9</a>
                        <a href="#9" class="list-group-item item-semana">10</a>
                        <a href="#10" class="list-group-item item-semana">11</a>
                        <a href="#11" class="list-group-item item-semana">12</a>
                        <a href="#12" class="list-group-item item-semana">13</a>
                        <a href="#13" class="list-group-item item-semana">14</a>
                        <a href="#14" class="list-group-item item-semana">15</a>
                        <a href="#15" class="list-group-item item-semana">16</a>
                        <a href="#16" class="list-group-item item-semana">17</a>
                    </ul>
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
