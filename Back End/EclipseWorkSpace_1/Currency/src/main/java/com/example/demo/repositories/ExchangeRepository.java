package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
 
import com.example.demo.entity.Exchange;
 
@Repository
public interface ExchangeRepository extends JpaRepository<Exchange, Long> {
    Exchange findByFromCurrencyAndToCurrency(String fromCurrency, String toCurrency);
}