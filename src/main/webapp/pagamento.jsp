<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Página de Pagamento</title>
    <script>
        function atualizarTotal() {
            var valorDiario = parseFloat('<%= request.getParameter("total") %>'); // Obtenha o valor diário da URL
            var metodoPagamento = document.getElementById("metodoPagamento").value;
            var parcelamentoSelect = document.getElementById("parcelamento");
            var parcelamento = parseInt(parcelamentoSelect.value);
            var cupom = document.getElementById("cupom").value;
            var desconto = 0;

            // Desabilite a seleção de parcelamento para PayPal e Boleto
            if (metodoPagamento === "paypal" || metodoPagamento === "boleto") {
                parcelamentoSelect.disabled = true;
            } else {
                parcelamentoSelect.disabled = false;
            }

            // Aplicar o desconto do cupom em tempo real
            if (cupom === "Imovel35") {
                desconto = 0.35 * valorDiario;
            }

            var diasLocacao = parseInt(document.getElementById("diasLocacao").value);

            // Forçar que a quantidade de dias esteja entre 1 e 30
            if (diasLocacao < 1) {
                diasLocacao = 1;
            } else if (diasLocacao > 30) {
                diasLocacao = 30;
            }

            var valorTotalBase = valorDiario * diasLocacao - desconto;

            if (parcelamento >= 4) {
                valorTotalBase *= 1.015; // Aplicar 1,5% de juros
            }

            document.getElementById("total").innerHTML = "Total: R$ " + valorTotalBase.toFixed(2);
        }
    </script>
</head>
<body>
    <h2>Opções de Pagamento:</h2>
    <form method="post" action="finalizarcompra.jsp">
        <label for="metodoPagamento">Método de Pagamento:</label>
        <select id="metodoPagamento" name="metodoPagamento" onchange="atualizarTotal()">
            <option value="cartaoCredito">Cartão de Crédito</option>
            <option value="paypal">PayPal</option>
            <option value="boleto">Boleto Bancário</option>
        </select>
        <br>

        <label for="parcelamento">Parcelamento:</label>
        <select id="parcelamento" name="parcelamento" onchange="atualizarTotal()">
            <option value="1">1x sem Juros</option>
            <option value="2">2x sem Juros</option>
            <option value="3">3x sem Juros</option>
            <option value="4">4x com 1.5% de Juros</option>
            <option value="5">5x com 1.5% de Juros</option>
        </select>
        <br>

        <label for="cupom">Cupom de Desconto:</label>
        <input type="text" id="cupom" name="cupom" oninput="atualizarTotal()">
        <br>
        
        <label for="diasLocacao">Dias de Locação (1-30):</label>
        <input type="number" id="diasLocacao" name="diasLocacao" min="1" max="30" value="1" oninput="atualizarTotal()">
        
        <input type="submit" value="Confirmar Compra">
    </form>

    <p id="total">Total: R$ <%= request.getParameter("total") %></p>
</body>
</html>