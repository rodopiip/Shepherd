package com.example.shepherd_be.controllers;
import com.example.shepherd_be.models.DTOs.LoginDTO;
import com.example.shepherd_be.models.DTOs.UserWithoutPassDTO;
import com.example.shepherd_be.services.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class UserController extends AbstractController{
    @Autowired
    private UserService userService;

    //GET: JWT authentication
    //GET: JWT validation
    //POST: log in: /users/auth
    @PostMapping("/users/auth")
    public UserWithoutPassDTO login(@RequestBody LoginDTO loginData, HttpSession session){
        //todo: finish endpoint + session (and other) validations
        UserWithoutPassDTO u = userService.login(loginData);
        session.setAttribute("LOGGED_ID", u.getId());
        return u;
        //todo: add to Postman
    }
    //attention: each of the following endpoints
    // requires for the user
    // to be logged in -> JWT validation
    //POST: sign up: /users
    //PUT: update profile: /users
    //DEL: delete profile: /users
    // ... other endpoints
}
