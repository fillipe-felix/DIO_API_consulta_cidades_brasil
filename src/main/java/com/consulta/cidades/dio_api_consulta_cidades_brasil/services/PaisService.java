package com.consulta.cidades.dio_api_consulta_cidades_brasil.services;

import com.consulta.cidades.dio_api_consulta_cidades_brasil.entities.Pais;
import com.consulta.cidades.dio_api_consulta_cidades_brasil.repositories.PaisRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor(onConstructor = @__(@Autowired))
public class PaisService {

    @Autowired
    private final PaisRepository paisRepository;


    public List<Pais> listPaises() {
        return paisRepository.findAll();
    }
}
