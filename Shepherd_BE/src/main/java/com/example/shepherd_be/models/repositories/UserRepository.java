package com.example.shepherd_be.models.repositories;

import com.example.shepherd_be.models.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository <User, Integer> {
}
