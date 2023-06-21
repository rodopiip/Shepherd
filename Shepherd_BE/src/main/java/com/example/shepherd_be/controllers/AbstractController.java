package com.example.shepherd_be.controllers;

import com.amazonaws.services.mq.model.BadRequestException;
import com.amazonaws.services.mq.model.UnauthorizedException;
import com.example.shepherd_be.models.DTOs.ErrorDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.time.LocalDateTime;

public abstract class AbstractController {
    //todo exceptions
    @ExceptionHandler(BadRequestException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ErrorDTO handleBadRequest(Exception e){
        return generatedErrorDTO(e, HttpStatus.BAD_REQUEST);
    }
    private ErrorDTO generatedErrorDTO(Exception e, HttpStatus s){
        e.printStackTrace();
        ErrorDTO errorDTO = ErrorDTO.builder()
                .time(LocalDateTime.now())
                .status(s.value())
                .build();
        errorDTO.setException(e);
        return errorDTO;
    }
    //todo http session getLoggedId method
}
