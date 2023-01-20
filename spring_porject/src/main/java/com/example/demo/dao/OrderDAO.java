package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.example.demo.order.entity.Order;

@EnableJpaRepositories("com.acme.repositories")
public interface OrderDAO extends JpaRepository<Order, Integer> {

}
