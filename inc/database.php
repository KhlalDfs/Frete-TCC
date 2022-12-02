<?php 
    $usuario = 'root';
    $senha = '';
    $database = 'tcc';
    $host = 'localhost';

    $conn = mysqli_connect($host, $usuario, $senha, $database);

    if($conn->error) {
        die("Falha no Banco de Dados: " . $conn->error);
    }
    $cepOrigem = ""; $descricao = ""; $stats = ""; $pay = ""; $cepDestino = ""; $peso = ""; $valor = ""; $prazo = "";; $comprimento = ""; $altura = ""; $largura = ""; $tipoFrete = ""; $idUser = ""; $frete = "";
    $email = ""; $nome = ""; $senha = "";  $tipo = ""; $cpf = ""; $telefone = ""; $cep = ""; $endereco = ""; $dataNascimento = "";
    if(array_key_exists('nome', $_POST)) {
        $nome = $_POST['nome'];
    } 
    if(array_key_exists('email', $_POST)) {
        $email = $_POST['email'];
    } 
    if(array_key_exists('tipo', $_POST)) {
        $tipo = $_POST['tipo'];
    } 
    if(array_key_exists('formaPagamento', $_POST)) {
        $pay = $_POST['formaPagamento'];
    } 
    if(array_key_exists('cpf', $_POST)) {
        $cpf = $_POST['cpf'];
    } 
    if(array_key_exists('senha', $_POST)) {
        $senha = $_POST['senha'];
    } 
    if(array_key_exists('telefone', $_POST)) {
        $telefone = $_POST['telefone'];
    } 
    if(array_key_exists('cep', $_POST)) {
        $cep = $_POST['cep'];
    } 
    if(array_key_exists('endereco', $_POST)) {
        $endereco = $_POST['endereco'];
    } 
    if(array_key_exists('dataNascimento', $_POST)) {
        $dataNascimento = $_POST['dataNascimento'];
    } 
    if(array_key_exists('cepOrigem', $_POST)) {
        $cepOrigem = $_POST['cepOrigem'];
    } 
    if(array_key_exists('cepDestino', $_POST)) {
        $cepDestino = $_POST['cepDestino'];
    } 
    if(array_key_exists('valor', $_POST)) {
        $valor = $_POST['valor'];
    } 
    if(array_key_exists('peso', $_POST)) {
        $peso = $_POST['peso'];
    } 
    if(array_key_exists('comprimento', $_POST)) {
        $comprimento = $_POST['comprimento'];
    } 
    if(array_key_exists('altura', $_POST)) {
        $altura = $_POST['altura'];
    } 
    if(array_key_exists('largura', $_POST)) {
        $largura = $_POST['largura'];
    } 
    if(array_key_exists('tipoFrete', $_POST)) {
        $tipoFrete = $_POST['tipoFrete'];
    } 
    if(array_key_exists('idUser', $_POST)) {
        $idUser = $_POST['idUser'];
    }
    if(array_key_exists('stats', $_POST)) {
        $stats = $_POST['stats'];
    } 
?>