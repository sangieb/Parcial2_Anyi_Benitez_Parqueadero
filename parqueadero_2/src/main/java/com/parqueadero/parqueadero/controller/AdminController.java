package com.parqueadero.parqueadero.controller;

import com.parqueadero.parqueadero.model.Vehiculo;
import com.parqueadero.parqueadero.service.TipoVehiculoService;
import com.parqueadero.parqueadero.service.VehiculoService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
@Tag(name = "Administrador", description = "Operaciones del administrador")
public class AdminController {

    @Autowired
    private VehiculoService vehiculoService;

    @Autowired
    private TipoVehiculoService tipoVehiculoService;

    @Operation(summary = "Listar todos los vehículos")
    @GetMapping("/vehiculos")
    public String listar(Model model) {
        model.addAttribute("vehiculos", vehiculoService.listarTodos());
        model.addAttribute("tipos", tipoVehiculoService.listarTodos());
        return "admin/vehiculos";
    }

    @Operation(summary = "Formulario nuevo vehículo")
    @GetMapping("/vehiculos/nuevo")
    public String nuevo(Model model) {
        model.addAttribute("vehiculo", new Vehiculo());
        model.addAttribute("tipos", tipoVehiculoService.listarTodos());
        return "admin/formulario";
    }

    @Operation(summary = "Guardar nuevo vehículo")
    @PostMapping("/vehiculos/guardar")
    public String guardar(@ModelAttribute Vehiculo vehiculo) {
        vehiculoService.guardar(vehiculo);
        return "redirect:/admin/vehiculos";
    }

    @Operation(summary = "Formulario editar vehículo")
    @GetMapping("/vehiculos/editar/{id}")
    public String editar(@PathVariable Long id, Model model) {
        model.addAttribute("vehiculo", vehiculoService.buscarPorId(id));
        model.addAttribute("tipos", tipoVehiculoService.listarTodos());
        return "admin/formulario";
    }

    @Operation(summary = "Actualizar vehículo")
    @PostMapping("/vehiculos/actualizar")
    public String actualizar(@ModelAttribute Vehiculo vehiculo) {
        vehiculoService.actualizar(vehiculo);
        return "redirect:/admin/vehiculos";
    }

    @Operation(summary = "Eliminar vehículo")
    @GetMapping("/vehiculos/eliminar/{id}")
    public String eliminar(@PathVariable Long id) {
        vehiculoService.eliminar(id);
        return "redirect:/admin/vehiculos";
    }
}