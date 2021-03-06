/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.guaruenglish.servlet;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.guaruenglish.service.UsuarioService;

/**
 *
 * @author Luiz Felipe
 */
public class CadastrarUsuario implements Tarefa {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {

        String tipoUsuario = req.getParameter("perfilAcesso");
        tipoUsuario = "com.guaruenglish.service." + tipoUsuario + "Service";

        try {
            Class<?> tipo = Class.forName(tipoUsuario);
            UsuarioService instacia
                    = (UsuarioService) tipo.newInstance();

            if (instacia.cadastrar(req, resp)) {
                return "WEB-INF/Paginas/secretaria/cadastrarUsuarioSucesso.jsp";
            }

        } catch (ClassNotFoundException e) {
        } catch (InstantiationException ex) {
            Logger.getLogger(CadastrarUsuario.class.getName()).
                    log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(CadastrarUsuario.class.getName()).
                    log(Level.SEVERE, null, ex);
        }

        return "WEB-INF/Paginas/secretaria/cadastrarUsuario.jsp";
    }

    @Override
    public Map perfil() {
        Map map = new HashMap();
        map.put("Secretaria", true);

        return map;
    }

}
