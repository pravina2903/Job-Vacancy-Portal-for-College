package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.model.Vacancies;

public interface VacancyRepository extends JpaRepository<Vacancies, Long> {
}

