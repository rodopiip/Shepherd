package com.example.shepherd_be.controllers;

public class TaskController extends AbstractController{
    //attention: each endpoint requires for the user
    // to be logged in -> HTTPs session
    //question: what is the alternative to a session login
    // when it comes to mobile applications?
    //GET: view tasks: /tasks
    //POST: create task: /tasks
    //PUT: update task: /tasks/{task-id}
    //DEL: delete task: /tasks/{task-id}
}
