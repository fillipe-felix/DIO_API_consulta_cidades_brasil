package com.consulta.cidades.dio_api_consulta_cidades_brasil.controllers;

import com.consulta.cidades.dio_api_consulta_cidades_brasil.entities.Pais;
import com.consulta.cidades.dio_api_consulta_cidades_brasil.services.PaisService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/pais")
@AllArgsConstructor(onConstructor = @__(@Autowired))
public class PaisController {

    @Autowired
    private PaisService paisService;

    @GetMapping()
    public List<Pais> listPaises(){
        return paisService.listPaises();
    }
}
