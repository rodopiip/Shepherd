package com.example.shepherd_be.models;

import jakarta.persistence.*;

@Entity
@Table(name = "tunes")
public class Tune {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "url")
    private String url;

    //todo:  Getters and setters...
}

