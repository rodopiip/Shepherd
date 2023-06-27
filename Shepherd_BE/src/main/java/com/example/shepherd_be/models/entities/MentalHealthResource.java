package com.example.shepherd_be.models.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "mental_health_resources")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@EqualsAndHashCode
@ToString
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
}

