package app.account.vo;

import java.sql.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import lombok.Data;

@Data
public class AccountVO {
  private int idx;
  @Pattern(regexp = "\\S{4,20}", message = "아이디를 4~20자 양식에 맞춰서 주세요.")
  private String userid;
  @Pattern(regexp = "\\S{4,8}", message = "비밀번호를 4~8자로 입력해주세요.")
  private String pw;
  private String platform;
  private String token;

  @Email(message = "이메일 양식에 맞춰서 넣어주세요.")
  private String email;
  @Pattern(regexp = "\\S{4,8}", message = "닉네임을 4~8자로 입력해주세요.")
  private String nickname;

  @NotNull(message = "우편번호를 넣어주세요.")
  private String zipcode;
  @NotNull(message = "주소를 넣어주세요.")
  private String address;
  private String extraaddress;

  private Date regdate;
  private Date modifydate;
}