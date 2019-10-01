package app.bbs.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {
  private int idx; // cno
  private int bbs_idx; // bno
  private int account_idx;
  private String content;
  private Date regDate;// reg_date
  private Date modifyDate;
  private String nickname;

  // private String Writer;
}