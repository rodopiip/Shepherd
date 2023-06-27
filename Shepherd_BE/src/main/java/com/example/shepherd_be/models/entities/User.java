package com.example.shepherd_be.models.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "users")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@EqualsAndHashCode
@ToString
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "username", nullable = false)
    private String username;
    @Column(name = "password", nullable = false)
    private String password;
    @Column(name = "email", nullable = false)
    private String email;
    @Column(name = "verification_code")
    private String verificationCode;
    @Column(name = "profile_photo")
    private String profilePhoto;
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Task> tasks;
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<TimeManagementSettings> timeManagementSettingsList;
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<PrivacySettings> privacySettingsList;
}
