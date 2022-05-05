package com.example.dao;

import com.example.entity.Account;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AccountDaoImpl implements AccountDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Account> getAllAccounts() {
        Session session = sessionFactory.getCurrentSession();
        List<Account> allAccounts = session.createQuery("from Account ", Account.class)
                .getResultList();
        return allAccounts;
    }

    @Override
    public void saveAccount(Account account) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(account);
    }

    @Override
    public Account getAccount(int id) {
        Session session = sessionFactory.getCurrentSession();
        Account account = session.get(Account.class, id);
        return account;
    }

    @Override
    public void deleteAccount(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Account> query = session.createQuery("delete from Account " +
                "where id =:accountId");
        query.setParameter("accountId", id);
        query.executeUpdate();
    }
}

