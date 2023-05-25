package br.edu.imepac.interfaces;

import br.edu.imepac.Usuario;

public interface IUsuarioRepositorio extends IRepositorio<Usuario> {
    public Usuario obterPorUsuario(String usuario);

}
