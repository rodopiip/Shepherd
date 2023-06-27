package com.example.shepherd_be.models.DTOs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RegisterDTO {
    private int id;
    private String username;
    private String password;
    private String confirmPassword;
    private String email;
    private String profilePhoto;
    private String verificationCode;
}
