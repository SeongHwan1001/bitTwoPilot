package app.account.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.account.vo.AccountVO;

@Mapper
public interface AccountMapper {

  public int count();

  public List<AccountVO> list();

  public AccountVO read(int idx);

  public int create(AccountVO accountVO);

  public int update(AccountVO accountVO);

  public int delete(int bno);
}