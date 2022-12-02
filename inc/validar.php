<?php

include('database.php');
$alert['error'] = $_SESSION['msg_error'] ?? null;
if(isset($_POST['email']) || isset($_POST['senha'])) {
        if(strlen($_POST['email']) == 0) {
            
        } if (strlen($_POST['senha']) == 0) {

        } else{
            $email = $conn->real_escape_string($_POST['email']);
            $senha = $conn->real_escape_string($_POST['senha']);

            $validar = "SELECT * FROM usuario WHERE email = '$email' AND senha = '$senha' and tipo = 'T'";
            $sql_query = $conn->query($validar) or die("Falha no codigo" . $conn->error);

            $q = $sql_query->num_rows;

            if($q == 1){
                $usuario = $sql_query->fetch_assoc();
                if(!isset($_SESSION)){
                    session_start();
                }
                $_SESSION['user'] = $usuario['id'];
                $_SESSION['nome'] = $usuario['nome'];

                header("Location: dashboard/painelT.php");

            }else {
                ?>
                <div class="modal-content" id="myModal" class="close">
                    <div class="modal-body">
                        <span class="close">&times;</span>
                        <p>E-mail ou Senha Incorretos</p>
                    </div>
                </div>
                <script>
                    var modal = document.getElementById("myModal");
                    var span = document.getElementsByClassName("close")[0];
                    span.onclick = function() {modal.style.display = "none";}
                    window.onclick = function(event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                </script>
                <?php
            }
        }
    }
    if(isset($_POST['email']) || isset($_POST['senha'])) {
        if(strlen($_POST['email']) == 0) {
            
        } if (strlen($_POST['senha']) == 0) {

        } else{
            $email = $conn->real_escape_string($_POST['email']);
            $senha = $conn->real_escape_string($_POST['senha']);

            $validar = "SELECT * FROM usuario WHERE email = '$email' AND senha = '$senha' and tipo = 'A'";
            $sql_query = $conn->query($validar) or die("Falha no codigo" . $conn->error);

            $q = $sql_query->num_rows;

            if($q == 1){
                $usuario = $sql_query->fetch_assoc();
                if(!isset($_SESSION)){
                    session_start();
                }
                $_SESSION['user'] = $usuario['id'];
                $_SESSION['nome'] = $usuario['nome'];
                $_SESSION['email'] = $usuario['email'];

                header("Location: dashboard/painelA.php");

            }else {
                ?>
                <div class="modal-content" id="myModal" class="close">
                    <div class="modal-body">
                        <span class="close">&times;</span>
                        <p>E-mail ou Senha Incorretos</p>
                    </div>
                </div>
                <script>
                    var modal = document.getElementById("myModal");
                    var span = document.getElementsByClassName("close")[0];
                    span.onclick = function() {modal.style.display = "none";}
                    window.onclick = function(event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                </script>
                <?php
            }
        }
    }
    if(isset($_POST['email']) || isset($_POST['senha'])) {
        if(strlen($_POST['email']) == 0) {
            
        } if (strlen($_POST['senha']) == 0) {

        } else{
            $email = $conn->real_escape_string($_POST['email']);
            $senha = $conn->real_escape_string($_POST['senha']);

            $validar = "SELECT * FROM usuario WHERE email = '$email' AND senha = '$senha' and tipo = 'E'";
            $sql_query = $conn->query($validar) or die("Falha no codigo" . $conn->error);

            $q = $sql_query->num_rows;

            if($q == 1){
                $usuario = $sql_query->fetch_assoc();
                if(!isset($_SESSION)){
                    session_start();
                }
                $_SESSION['user'] = $usuario['id'];
                $_SESSION['nome'] = $usuario['nome'];

                header("Location: dashboard/painelE.php");

            }else {
                ?>
                <div class="modal-content" id="myModal" class="close">
                    <div class="modal-body">
                        <span class="close">&times;</span>
                        <p>E-mail ou Senha Incorretos</p>
                    </div>
                </div>
                <script>
                    var modal = document.getElementById("myModal");
                    var span = document.getElementsByClassName("close")[0];
                    span.onclick = function() {modal.style.display = "none";}
                    window.onclick = function(event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                </script>
                <?php
            }
        }
    }
    if(isset($_POST['email']) || isset($_POST['senha'])) {
        if(strlen($_POST['email']) == 0) {
            
        } if (strlen($_POST['senha']) == 0) {

        } else{
            $email = $conn->real_escape_string($_POST['email']);
            $senha = $conn->real_escape_string($_POST['senha']);

            $validar = "SELECT * FROM usuario WHERE email = '$email' AND senha = '$senha' and tipo = 'C'";
            $sql_query = $conn->query($validar) or die("Falha no codigo" . $conn->error);

            $q = $sql_query->num_rows;

            if($q == 1){
                $usuario = $sql_query->fetch_assoc();
                if(!isset($_SESSION)){
                    session_start();
                }
                $_SESSION['user'] = $usuario['id'];
                $_SESSION['nome'] = $usuario['nome'];

                header("Location: dashboard/painelC.php");

            }else {
                ?>
                <div class="modal-content" id="myModal" class="close">
                    <div class="modal-body">
                        <span class="close">&times;</span>
                        <p>E-mail ou Senha Incorretos</p>
                    </div>
                </div>
                <script>
                    var modal = document.getElementById("myModal");
                    var span = document.getElementsByClassName("close")[0];
                    span.onclick = function() {modal.style.display = "none";}
                    window.onclick = function(event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                </script>
                <?php
            }
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../estilo.css">
    <title>Login</title>
</head>
<body>
    
</body>
</html>