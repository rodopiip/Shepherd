package com.example.shepherd_be.models.entities;

import jakarta.persistence.*;
import lombok.*;

import java.sql.Time;

@Entity
@Table(name = "time_management_settings")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@EqualsAndHashCode
@ToString
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
}

