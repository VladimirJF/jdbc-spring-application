package com.example.service;

import com.example.dao.AccountDao;
import com.example.entity.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountDao accountDao;

    @Override
    @Transactional
    public List<Account> getAllAccounts() {
        return accountDao.getAllAccounts();
    }

    @Override
    @Transactional
    public void saveAccount(Account account) {
        accountDao.saveAccount(account);
    }

    @Override
    @Transactional
    public Account getAccount(int id) {
        return accountDao.getAccount(id);
    }

    @Override
    @Transactional
    public void deleteAccount(int id) {
        accountDao.deleteAccount(id);
    }
}
