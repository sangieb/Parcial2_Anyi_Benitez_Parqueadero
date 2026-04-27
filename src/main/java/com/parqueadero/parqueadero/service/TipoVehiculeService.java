package com.parqueadero.parqueadero.service;

import com.parqueadero.parqueadero.model.TipoVehiculo;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@Transactional
public class TipoVehiculoService {

    @PersistenceContext
    private EntityManager em;

    public List<TipoVehiculo> listarTodos() {
        return em.createQuery("SELECT t FROM TipoVehiculo t", TipoVehiculo.class).getResultList();
    }
}