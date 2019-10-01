package app.sign.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.account.service.AccountService;
import app.sign.mapper.SignMapper;
import app.sign.vo.SignVO;

@Service
public class SignService {

  @Autowired
  AccountService accountService;

  @Autowired
  SignMapper signMapper;

  public SignVO in(String userId, String pw) {
    return signMapper.in(userId, pw);
  }

  public SignVO up() {
    return null;
  }

  public SignVO find(String email) {
    return signMapper.find(email);
  }
}