package com.example.demo.repositories;
 
import org.springframework.data.repository.CrudRepository;
 
import com.example.demo.entities.BankAccount;
 
 
public interface BankAccountRepository extends CrudRepository<BankAccount, Long> {
    BankAccount findByAccountNumber(String accountNumber);
}
 