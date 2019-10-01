package app.bbs.vo;

import java.util.Date;

import lombok.Data;

@Data
public class FileVO {
  private int idx;
  private int bbs_idx;
  private String fileName;
  private String fileOriName;
  private String fileUrl;
  private Date regDate;
}