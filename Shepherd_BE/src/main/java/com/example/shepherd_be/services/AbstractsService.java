package com.example.shepherd_be.services;

import com.example.shepherd_be.models.repositories.UserRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractsService {
    @Autowired
    protected ModelMapper mapper;
    @Autowired
    protected UserRepository userRepository;
}
