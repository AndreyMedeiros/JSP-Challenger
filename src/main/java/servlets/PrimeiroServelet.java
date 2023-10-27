package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

@WebServlet("/PrimeiroServlet")
public class PrimeiroServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public PrimeiroServelet() {
        super();
    }

    // Adicione o HashMap para mapear IDs de produtos para nomes de produtos
    private HashMap<Integer, String> produtos = new HashMap<>();

    @Override
    public void init() throws ServletException {
        super.init();

        // Inicialize o HashMap com os mapeamentos de produtos
        produtos.put(11, "Bela Vista");
        produtos.put(12, "Pinheiros");
        produtos.put(13, "Moema");
        produtos.put(14, "Vila Olímpia");
        produtos.put(15, "Vila Madalena");
        produtos.put(16, "Vila Mariana");
        produtos.put(17, "Itaim Bibi");
        produtos.put(18, "Butantã");
        produtos.put(19, "Perdizes");
        produtos.put(20, "Faria Lima");
        // Adicione mais produtos conforme necessário
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Aqui você pode adicionar lógica para processar solicitações do servlet (caso necessário).
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Neste método, você pode configurar o HashMap 'produtos' na sessão e redirecionar para a página JSP.
        request.getSession().setAttribute("produtos", produtos);

        // Redirecionar para a página JSP produtos.jsp
        request.getRequestDispatcher("produtos.jsp").forward(request, response);
    }
}