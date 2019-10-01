package app.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.bbs.vo.CommentVO;

@Mapper
public interface CommentMapper {
  // 댓글 개수
  public int commentCount() throws Exception;

  // 댓글 목록
  public List<CommentVO> commentList() throws Exception;

  // 댓글 작성
  public int commentInsert(CommentVO comment) throws Exception;

  // 댓글 수정
  public int commentUpdate(CommentVO comment) throws Exception;

  // 댓글 삭제
  public int commentDelete(int idx) throws Exception;

  // 특정글 댓글 목록
  public List<CommentVO> commentList(int bbs_idx) throws Exception;

}
