package app.bbs.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BbsVO {
  private int idx;
  private int account_idx;
  private String nickname;
  private String category;
  private String title;
  private String content;
  private int readCount;
  private Date regDate;
  private Date modifyDate;
}