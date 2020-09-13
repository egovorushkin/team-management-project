package com.egovorushkin.teammanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.egovorushkin.teammanagement.entity.Position;

@RepositoryRestResource(collectionResourceRel = "employeePosition", path = "employee-position")
public interface PositionRepository extends JpaRepository<Position, Long> {

}
