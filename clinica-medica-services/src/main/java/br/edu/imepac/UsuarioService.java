package br.edu.imepac;

import br.edu.imepac.interfaces.IUsuarioRepositorio;

public class UsuarioService {

    private IUsuarioRepositorio usuarioRepository;

    public int salvar(Usuario usuario) {
        return usuarioRepository.salvar(usuario);
    }

    public int atualizar(Usuario usuario) {
        return usuarioRepository.atualizar(usuario);
    }

    public boolean validarLogin(String usuario, String senha) {
        return true;
    }
}
