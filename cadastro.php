<?php
    include('inc/database.php');
    $cadastro = mysqli_query($conn, "INSERT INTO usuario (cnpj, email, nome, senha, tipo) 
    values ('{$cnpj}', '{$email}', '{$nome}', '{$senha}', '{$tipo}') ");
    $cadastro = mysqli_query($conn, "INSERT INTO usuario (cnpj, email, nome, senha, tipo, telefone, cep) 
    values ('{$cnpj}', '{$email}', '{$nome}', '{$senha}', '{$tipo}'), '{$telefone}', '{$cep}') ");
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#cnpj").mask("99.999.999/9999-99");
        });
    </script>
    <link rel="stylesheet" href="estilo.css">
    <title>Cadastro</title>
</head>
<body>
    <section class="area-cadastro">
        <div class="cadastro">
            <div>
                <img src="img/images.png" alt="">
            </div>
            <form action="" method="POST">
                <input type="text" name="nome" placeholder="Nome">
                <select name="tipo" id="tipo">
                    <option selected disabled>Selecione o Tipo de conta a ser aberta</option>
                    <option value="A">Adminstrador</option>
                    <option value="T">Transportadora</option>
                    <option value="E">Empresa</option>
                    <option value="C">Correios</option>
                </select>
                <input type="text" name="cnpj"  placeholder="CNPJ" id="cnpj" required>
                <input type="email" name="email" placeholder="E-mail">
                <input type="password" name="senha" placeholder="Senha">
                <input type="submit" name="enviar">
            </form>
            <p class="back">
                <a  href="dashboard/cadastrar.php">Voltar</a>
            </p>
        </div>
    </section>
</body>
</html>