package com.example.dao;

import com.example.entity.Account;

import java.util.List;

public interface AccountDao {
    List<Account> getAllAccounts();

    void saveAccount(Account account);

    Account getAccount(int id);

    void deleteAccount(int id);
}

