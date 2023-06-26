package com.example.shepherd_be.services;

import com.example.shepherd_be.models.DTOs.LoginDTO;
import com.example.shepherd_be.models.DTOs.RegisterDTO;
import com.example.shepherd_be.models.DTOs.UserWithoutPassDTO;
import com.example.shepherd_be.models.entities.User;
import org.springframework.stereotype.Service;

//question: does this service class need to extend an abstract service class
// what for?
@Service
public class UserService extends AbstractsService{
    public UserWithoutPassDTO login(LoginDTO loginData){
        //todo
        //...
        //attention: the following line is here only for compilation purposes
        return new UserWithoutPassDTO();
    }
    public UserWithoutPassDTO signUp(RegisterDTO regData){
        User u = mapper.map(regData, User.class);
        //todo: encode password
        //something JWT - related
        //email verification
        userRepository.save(u);
        return mapper.map(u, UserWithoutPassDTO.class);
    }
}
