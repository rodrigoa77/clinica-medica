package br.edu.imepac.utils;


import java.util.ArrayList;

public class MessagesArrayList<T> extends ArrayList<T> {

    private boolean novoFormulario;
    private TipoMensagem tipoMensagem;

    private String messagemContexto;

    public boolean isNovoFormulario() {
        return novoFormulario;
    }

    public void setNovoFormulario(boolean novoFormulario) {
        this.novoFormulario = novoFormulario;
    }

    public TipoMensagem getTipoMensagem() {
        return tipoMensagem;
    }

    public void setTipoMensagem(TipoMensagem tipoMensagem) {
        this.tipoMensagem = tipoMensagem;
    }

    public String getMessagemContexto() {
        return messagemContexto;
    }

    public void setMessagemContexto(String messagemContexto) {
        this.messagemContexto = messagemContexto;
    }
}
