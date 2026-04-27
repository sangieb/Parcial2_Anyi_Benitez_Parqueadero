package com.parqueadero.parqueadero.controller;

import com.parqueadero.parqueadero.service.VehiculoService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cliente")
@Tag(name = "Cliente", description = "Operaciones del cliente")
public class ClienteController {

    @Autowired
    private VehiculoService vehiculoService;

    @Operation(summary = "Ver entradas de vehículos")
    @GetMapping("/vehiculos")
    public String listar(Model model) {
        model.addAttribute("vehiculos", vehiculoService.listarTodos());
        return "cliente/vehiculos";
    }
}