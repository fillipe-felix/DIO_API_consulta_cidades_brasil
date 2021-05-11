package com.consulta.cidades.dio_api_consulta_cidades_brasil;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class DioApiConsultaCidadesBrasilApplication {

    public static void main(String[] args) {
        SpringApplication.run(DioApiConsultaCidadesBrasilApplication.class, args);
    }

}
