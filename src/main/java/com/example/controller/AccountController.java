package com.example.controller;

import com.example.entity.Account;
import com.example.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AccountController {

    @Autowired
    private AccountService accountService;

    @RequestMapping("/")
    public String createPersonPage(Model model) {
        final List<Account> allAccounts = accountService.getAllAccounts();
        model.addAttribute("allAccount", allAccounts);
        return "/createPersonPage";
    }

    @RequestMapping("/addNewAccount")
    public String addNewAccount(Model model) {
        Account account = new Account();
        model.addAttribute("account", account);
        return "accountInformation";
    }

    @RequestMapping("/saveAccount")
    public String saveAccount(@ModelAttribute("account") Account account) {
        accountService.saveAccount(account);
        return "redirect:/";
    }

    @RequestMapping("/updateInfo")
    public String updateAccount(@RequestParam("accId") int id, Model model) {
        Account account = accountService.getAccount(id);
        model.addAttribute("account", account);
        return "accountInformation";
    }

    @RequestMapping("/deleteAccount")
    public String deleteAccount(@RequestParam("accId") int id) {
        accountService.deleteAccount(id);
        return "redirect:/";
    }
}