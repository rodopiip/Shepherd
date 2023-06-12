package com.example.shepherd_be.models;

import jakarta.persistence.*;

@Entity
@Table(name = "privacy_settings")
public class PrivacySettings {

    @Id
    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "show_online_status")
    private Boolean showOnlineStatus;

    @Column(name = "allow_data_collection")
    private Boolean allowDataCollection;

    @Column(name = "share_personal_info")
    private Boolean sharePersonalInfo;

    //todo:  Getters and setters...
}

