package app.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.bbs.vo.CommentVO;
import app.bbs.mapper.CommentMapper;

@Service
public class CommentService {

  @Autowired
  CommentMapper mCommentMapper;

  public List<CommentVO> commentListService(int bbs_idx) throws Exception {

    return mCommentMapper.commentList(bbs_idx);
  }

  public int commentInsertService(CommentVO comment) throws Exception {

    return mCommentMapper.commentInsert(comment);
  }

  public int commentUpdateService(CommentVO comment) throws Exception {

    return mCommentMapper.commentUpdate(comment);
  }

  public int commentDeleteService(int idx) throws Exception {

    return mCommentMapper.commentDelete(idx);
  }

}
