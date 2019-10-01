package app.account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import app.account.service.AccountService;
import app.account.vo.AccountVO;

@Controller
@RequestMapping("/account")
public class AccountController {

  @Autowired
  AccountService accountService;

  @GetMapping("/read/{index}")
  public String read(@PathVariable int idx, Model model) {
    model.addAttribute("read", accountService.read(idx));
    return "/account/read";
  }

  @GetMapping("/update/{index}")
  public String update(@PathVariable int idx, Model model) {
    model.addAttribute("read", accountService.read(idx));

    return "/account/update";
  }

  @PostMapping("/update/{index}")
  public String updateExcute(AccountVO accountVO) {
    accountService.update(accountVO);
    return "redirect:/account/read/";
  }

  @PostMapping("/delete/{index}")
  public String deleteExcute(@PathVariable int idx) {
    accountService.delete(idx);
    return "/";
  }
}