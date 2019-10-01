package app.sign.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import app.sign.vo.SignVO;

@Mapper
public interface SignMapper {
  SignVO in(@Param("userId") String userId, @Param("pw") String pw);

  SignVO find(@Param("email") String email);
}