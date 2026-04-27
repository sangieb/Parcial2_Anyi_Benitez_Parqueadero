package com.parqueadero.parqueadero.service;

import com.parqueadero.parqueadero.model.Vehiculo;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@Transactional
public class VehiculoService {

    @PersistenceContext
    private EntityManager em;

    public List<Vehiculo> listarTodos() {
        return em.createQuery("SELECT v FROM Vehiculo v", Vehiculo.class).getResultList();
    }

    public Vehiculo buscarPorId(Long id) {
        return em.find(Vehiculo.class, id);
    }

    public void guardar(Vehiculo vehiculo) {
        em.persist(vehiculo);
    }

    public void actualizar(Vehiculo vehiculo) {
        em.merge(vehiculo);
    }

    public void eliminar(Long id) {
        Vehiculo v = em.find(Vehiculo.class, id);
        if (v != null) em.remove(v);
    }
}