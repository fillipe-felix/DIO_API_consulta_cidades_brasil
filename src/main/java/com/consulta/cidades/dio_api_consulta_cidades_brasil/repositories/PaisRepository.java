package com.consulta.cidades.dio_api_consulta_cidades_brasil.repositories;

import com.consulta.cidades.dio_api_consulta_cidades_brasil.entities.Pais;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PaisRepository extends JpaRepository<Pais, Long> {
}
