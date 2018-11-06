<?php require "../views/header.view.php"; ?>

</div>
<div class="container text-center" style="margin-top:10px;">
    <div class=="row">
        
        <?php require "../views/menuNav.view.php"; ?>

        <div class="col-sm-9">

            <div class="row">
                <div class="col-sm-12" >

                    <?php for ($i = 0 ; $i <17 ; $i++): ?>
                        
                    <div class="panel panel-primary">
                        <div class="panel-heading text-left">
                            <p><span class="glyphicon glyphicon-pencil"></span> SEMANA <?php echo $i+1; ?> : <?php echo isset($clases[$i]['nombre']) ? $clases[$i]['nombre'] : ""; ?> <span class="glyphicon glyphicon-calendar" style="float:right"> 15/08/2018</span></p>
                        </div>
                        <div class="panel-body">
                            <p>
                                <?php echo isset($clases[$i]['descripcion']) ? $clases[$i]['descripcion'] : ""; ?>
                            </p>
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item"><a href="<?php echo RUTA ?>clases/<?php echo $clases[$i]['archivo'] ?>"><img src="" alt=""> <?php echo isset($clases[$i]['archivo']) ? $clases[$i]['archivo'] : ""; ?></a></li>
                        </ul>
                    </div>

                    <?php endfor ?>

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
