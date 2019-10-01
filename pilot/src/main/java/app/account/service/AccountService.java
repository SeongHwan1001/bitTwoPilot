package app.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.account.mapper.AccountMapper;
import app.account.vo.AccountVO;

@Service
public class AccountService {
  @Autowired
  AccountMapper AccountMapper;

  public List<AccountVO> list() {
    return AccountMapper.list();
  }

  public AccountVO read(int idx) {
    return AccountMapper.read(idx);
  }

  public int create(AccountVO account) {
    return AccountMapper.create(account);
  }

  public int update(AccountVO account) {
    return AccountMapper.update(account);
  }

  public int delete(int idx) {
    return AccountMapper.delete(idx);
  }
}