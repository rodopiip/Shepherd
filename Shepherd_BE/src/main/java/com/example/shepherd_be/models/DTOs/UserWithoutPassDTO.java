package com.example.shepherd_be.models.DTOs;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserWithoutPassDTO {
    private int id;
    private String username;
    private String email;
    private String profilePhoto;
}
