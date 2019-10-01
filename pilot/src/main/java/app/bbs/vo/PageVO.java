package app.bbs.vo;

import lombok.Data;

@Data
public class PageVO {
  private int page;
  private int perPageNum;

  public PageVO() {
    this.page = 1;
    this.perPageNum = 10;
  }

  public int getPageStart() {
    return (this.page - 1) * perPageNum;
  }

  public void setPage(int page) {
    if (page <= 0) {
      this.page = 1;
    } else {
      this.page = page;
    }
  }

  public void setPerPageNum(int pageCount) {
    int cnt = this.perPageNum;
    if (pageCount != cnt) {
      this.perPageNum = cnt;
    } else {
      this.perPageNum = pageCount;
    }
  }

  public int getPerPageNum() {
    return perPageNum;
  }
}