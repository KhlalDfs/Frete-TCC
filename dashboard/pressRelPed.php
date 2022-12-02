<?php 
    include('../inc/database.php');
    include('../protecao.php');
    $alert['error'] = $_SESSION['msg_error'] ?? null;
    $id = $_SESSION['user'];
    $sqlSelect = "SELECT * from usuario where id = $id";
    $resultEdit = mysqli_query($conn, $sqlSelect);
    if($resultEdit->num_rows > 0){
    while ($users = mysqli_fetch_assoc($resultEdit)) {
        $nome = $users['nome'];
        $tipo = $users['tipo'];
        }
    }
    $dados = "";
    
        $sqlSelect = "SELECT * from pedido where idUser = $id";
        $result = mysqli_query($conn, $sqlSelect);
        while($row = mysqli_fetch_assoc($result)){
        $dados .= "<h4>Número do Pedido:  ". $row['idPed']."</h4>";
        $dados .= "<h4>Nome do Remetente:  ". $row['nome']."</h4>";
        $dados .= "<h4>Valor do Frete  R$". $row['frete']."</h4>";
        $dados .= "<h4>Valor Desclarado do Produto:  R$". $row['valor'].",00</h4>";
        $dados .= "<h4>Tipo de Frete:  ".$row['tipoFrete']."</h4>";
        $dados .= "<h4>CEP de Origem:  ".$row['cepOrigem']."</h4>";
        $dados .= "<h4>CEP de Destino:  ".$row['cepDestino']."</h4>";
        $dados .= "<h4>Altura do Pacote: ". $row['altura']."</h4>";
        $dados .= "<h4>Largura do Pacote: ". $row['largura']."</h4>";
        $dados .= "<h4>Comprimento do Pacote: ". $row['comprimento']."</h4><br><br>";
    }
require_once 'dompdf/autoload.inc.php';
    use Dompdf\Dompdf;
    $dompdf = new Dompdf();
    $dompdf->loadHtml(
        '<h1 style="text-align: center;">Relatório de Pedidos Realizados</h1><br>' . 
        $dados
    );
    $dompdf->render();
    $dompdf->stream(
        "Relatório_Pedidos.pdf",
        array(
            "Attachment"=>true
        )
    );
?>
    
        