package com.example.shepherd_be.services;

import com.example.shepherd_be.models.DTOs.LoginDTO;
import com.example.shepherd_be.models.DTOs.UserWithoutPassDTO;

//question: does this service class need to extend an abstract service class
// what for?
public class UserService /*todo extends AbstractsService*/{
    public UserWithoutPassDTO login(LoginDTO loginData){
        //todo
        //...
        //attention: the following line is here only for compilation purposes
        return new UserWithoutPassDTO();
    }
}
