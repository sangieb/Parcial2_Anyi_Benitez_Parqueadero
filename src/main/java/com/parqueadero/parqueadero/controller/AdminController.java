package com.parqueadero.parqueadero.controller;

import com.parqueadero.parqueadero.model.Vehiculo;
import com.parqueadero.parqueadero.service.VehiculoService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/acomodador")
@Tag(name = "Acomodador", description = "Operaciones del acomodador")
public class AcomodadorController {

    @Autowired
    private VehiculoService vehiculoService;

    @Operation(summary = "Listar vehículos")
    @GetMapping("/vehiculos")
    public String listar(Model model) {
        model.addAttribute("vehiculos", vehiculoService.listarTodos());
        return "acomodador/vehiculos";
    }

    @Operation(summary = "Formulario actualizar ubicación")
    @GetMapping("/vehiculos/editar/{id}")
    public String editar(@PathVariable Long id, Model model) {
        model.addAttribute("vehiculo", vehiculoService.buscarPorId(id));
        return "acomodador/formulario";
    }

    @Operation(summary = "Actualizar ubicación del vehículo")
    @PostMapping("/vehiculos/actualizar")
    public String actualizar(@ModelAttribute Vehiculo vehiculo) {
        vehiculoService.actualizar(vehiculo);
        return "redirect:/acomodador/vehiculos";
    }
}