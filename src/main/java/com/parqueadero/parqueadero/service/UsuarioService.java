package com.parqueadero.parqueadero.service;

import com.parqueadero.parqueadero.model.Usuario;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UsuarioService {

    @PersistenceContext
    private EntityManager em;

    public Usuario buscarPorUsername(String username) {
        try {
            return em.createQuery(
                "SELECT u FROM Usuario u WHERE u.username = :username", Usuario.class)
                .setParameter("username", username)
                .getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }
}