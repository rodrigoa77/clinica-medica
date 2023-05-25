package br.edu.imepac.servlets;

import br.edu.imepac.UsuarioService;
import br.edu.imepac.utils.MessagesArrayList;
import br.edu.imepac.utils.TipoMensagem;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    private UsuarioService usuarioService;

    public LoginServlet() {
        this.usuarioService = new UsuarioService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String usuario = req.getParameter("username");
        String senha = req.getParameter("password");

        validarCamposObrigatorios(usuario, senha, req, resp);
        validarLogin(usuario, senha, req, resp);
    }

    private void validarLogin(String usuario, String senha, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (usuarioService.validarLogin(usuario, senha)) {
            getServletContext().getRequestDispatcher("/pages/home-page.jsp").forward(req, resp);
        } else {
            MessagesArrayList<String> messagesArrayList = new MessagesArrayList<String>();
            messagesArrayList.setTipoMensagem(TipoMensagem.ERRO);
            messagesArrayList.setMessagemContexto("Dados de acesso inválidos!");
            req.setAttribute("messagesArrayList", messagesArrayList);
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

    private void validarCamposObrigatorios(String usuario, String senha, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MessagesArrayList<String> messagesArrayList = new MessagesArrayList<String>();

        if (usuario.isEmpty()) {
            messagesArrayList.add("Usuário");
        }

        if (senha.isEmpty()) {
            messagesArrayList.add("Senha");
        }

        if (!messagesArrayList.isEmpty()) {
            messagesArrayList.setTipoMensagem(TipoMensagem.ERRO);
            messagesArrayList.setMessagemContexto("Campo(s) obrigatório(s) devem ser preenchidos");
            req.setAttribute("messagesArrayList", messagesArrayList);
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }


}
