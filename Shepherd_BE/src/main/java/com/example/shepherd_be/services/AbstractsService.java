package com.example.shepherd_be.services;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractsService {
    //todo: solve
    @Autowired
    protected ModelMapper mapper;
}
