package com.example.shepherd_be.models;

import jakarta.persistence.*;

import java.sql.Time;

@Entity
@Table(name = "time_management_settings")
public class TimeManagementSettings {

    @Id
    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "daily_usage_limit")
    private Integer dailyUsageLimit;

    @Column(name = "break_reminder_interval")
    private Integer breakReminderInterval;

    @Column(name = "automatic_shutdown_time")
    private Time automaticShutdownTime;

    //todo:  Getters and setters...
}

