package app.bbs.vo;

import lombok.Data;

@Data
public class PageMakeVO {
  private PageVO pageVO;
  private int totalCount;
  private int startPage;
  private int endPage;
  private boolean prev;
  private boolean next;

  private int displayPageNum = 10;

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;
    calcData();
  }

  private void calcData() {
    // 끝페이지 번호 : (현재 페이지 번호 / 화면에 보여질 페이지 번호의 갯수) * 화면에 보여질 페이지 번호의 갯수
    endPage = (int) (Math.ceil(pageVO.getPage() / (double) displayPageNum) * displayPageNum);

    // 마지막 페이지 번호 : 총 게시글 수 / 한 페이지당 보여줄 게시글의 갯수
    int tempEndPage = (int) (Math.ceil(totalCount / (double) pageVO.getPerPageNum()));
    if (endPage > tempEndPage) {
      endPage = tempEndPage;
    }

    // 시작 페이지 번호 : (끝페이지 번호 - 화면에 보여질 페이지 번호의 갯수) + 1
    startPage = (endPage - displayPageNum) + 1;

    // 이전 버튼 생성 여부 : 시작 페이지 번호 == 1 ? false : true
    prev = startPage == 1 ? false : true;

    // 다음 버튼 생성 여부 : 끝페이지 번호 * 한 페이지당 보여줄 게시글의 갯수 >= 총 게시글의 수 ? false : true
    next = endPage * pageVO.getPerPageNum() >= totalCount ? false : true;
  }

}