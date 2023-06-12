package com.example.shepherd_be.models;

import jakarta.persistence.*;

@Entity
@Table(name = "mental_health_resources")
public class MentalHealthResource {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "url")
    private String url;

    //todo:  Getters and setters...
}

