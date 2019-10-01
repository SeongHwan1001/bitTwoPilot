package app.bbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import app.bbs.vo.CommentVO;
import app.sign.vo.SignVO;
import app.bbs.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {

  @Autowired
  CommentService mCommentService;

  @RequestMapping("/list") // 댓글 리스트
  private String mCommentServiceList(Model model, int bbs_idx,
      @SessionAttribute(value = "signVO", required = false) SignVO signVO) throws Exception {
    model.addAttribute("comments", mCommentService.commentListService(bbs_idx));
    return "/bbs/comment/list";
  }

  @RequestMapping("/insert") // 댓글 작성
  @ResponseBody
  private int mCommentServiceInsert(@RequestParam int bbs_idx, @RequestParam String content,
      @RequestParam int account_idx) throws Exception {
    // System.out.println("bbs_idx : " + bbs_idx);
    // System.out.println("content : " + content);
    // System.out.println("account_idx : " + account_idx);
    CommentVO comment = new CommentVO();

    comment.setBbs_idx(bbs_idx);
    comment.setContent(content);
    comment.setAccount_idx(account_idx);

    return mCommentService.commentInsertService(comment);
  }

  @RequestMapping("/update") // 댓글 수정
  @ResponseBody
  private int mCommentServiceUpdateProc(@RequestParam int idx, @RequestParam String content) throws Exception {

    CommentVO comment = new CommentVO();
    comment.setIdx(idx);
    comment.setContent(content);

    return mCommentService.commentUpdateService(comment);
  }

  @RequestMapping("/delete/{idx}") // 댓글 삭제
  @ResponseBody
  private int mCommentServiceDelete(@PathVariable int idx) throws Exception {

    return mCommentService.commentDeleteService(idx);
  }

}