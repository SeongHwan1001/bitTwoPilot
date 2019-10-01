package app.sign.controller;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.account.service.AccountService;
import app.account.vo.AccountVO;
import app.sign.service.SignService;
import app.sign.vo.SignVO;
import app.util.MailHandler;

@Controller
@RequestMapping("/sign")
public class SignController {

  @Autowired
  SignService signService;

  @Autowired
  AccountService accountService;

  @Autowired
  JavaMailSender sender;

  @GetMapping("/in")
  public String in() {
    return "/sign/in";
  }

  @GetMapping("/up")
  public String up(@ModelAttribute AccountVO accountVO) {
    return "/sign/up";
  }

  @GetMapping("/out")
  public void out(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
    for (Cookie cookie : request.getCookies()) {
      if (cookie.getName().startsWith("signVO")) {
        cookie.setMaxAge(0);
        cookie.setPath("/");
        response.addCookie(cookie);
      }
    }
    session.invalidate();
    response.setContentType("text/html; charset=utf-8");
    PrintWriter out = response.getWriter();
    out.println("<script>alert('로그아웃 되었습니다.'); location.href='/';</script>");
  }

  @GetMapping("/find")
  public String find() {
    return "/sign/find";
  }

  @PostMapping("/in")
  public void inExcute(@RequestParam("userid") String userId, @RequestParam("pw") String pw,
      @RequestParam(value = "check", required = false) String check, HttpSession session, HttpServletResponse response)
      throws Exception {

    SignVO signVO = signService.in(userId, pw);
    response.setContentType("text/html; charset=utf-8");
    PrintWriter out = response.getWriter();
    if (signVO != null) {
      if (check != null && check.equals("on")) {
        Cookie cookieIdx = new Cookie("signVO.idx", signVO.getIdx());
        Cookie cookieUserId = new Cookie("signVO.userId", signVO.getUserId());
        Cookie cookieNickname = new Cookie("signVO.nickname", signVO.getNickname());
        Cookie cookieEmail = new Cookie("signVO.email", signVO.getEmail());
        Cookie cookiePw = new Cookie("signVO.pw", signVO.getPw());

        cookieIdx.setMaxAge(60 * 60 * 24 * 30);
        cookieUserId.setMaxAge(60 * 60 * 24 * 30);
        cookieNickname.setMaxAge(60 * 60 * 24 * 30);
        cookieEmail.setMaxAge(60 * 60 * 24 * 30);
        cookiePw.setMaxAge(60 * 60 * 24 * 30);

        cookieIdx.setPath("/");
        cookieUserId.setPath("/");
        cookieNickname.setPath("/");
        cookieEmail.setPath("/");
        cookiePw.setPath("/");

        response.addCookie(cookieIdx);
        response.addCookie(cookieUserId);
        response.addCookie(cookieNickname);
        response.addCookie(cookieEmail);
        response.addCookie(cookiePw);
      }
      session.setAttribute("signVO", signVO);
      out.println("<script>alert('로그인 되었습니다.'); location.href='/';</script>");
    }
    out.print("<script>alert('비밀번호 혹은 아이디가 틀립니다. '); history.back();</script>");

  }

  @PostMapping("/up")
  public String upExcute(@Valid AccountVO accountVO, BindingResult bindingResult,
      @ModelAttribute @RequestParam("pwCheck") String pwCheck, Model model, HttpServletResponse response)
      throws Exception {

    if (!accountVO.getPw().equals(pwCheck)) {
      model.addAttribute("pwCheckError", "비밀번호 맞춰주세요");
      return "/sign/up";
    } else if (bindingResult.hasErrors()) {
      return "/sign/up";
    } else {
      PrintWriter out = response.getWriter();
      out.println("<script>alert('회원가입되었습니다');</script>");
      accountService.create(accountVO);
      return "redirect:/";
    }
  }

  @PostMapping("/find")
  public void findExcute(@RequestParam String email, HttpServletResponse response) throws Exception {
    response.setContentType("text/html; charset=utf-8");
    PrintWriter out = response.getWriter();
    SignVO signVO = signService.find(email);

    if (signVO != null) {
      String signEmail = signVO.getEmail();
      System.out.println(sender);
      MailHandler mail = new MailHandler(sender);
      mail.setFrom("0000000", "min");
      mail.setTo(signEmail);
      mail.setSubject("페이지 회원 인증 메일");
      mail.setText(new StringBuffer().append("<h1>회원.</h1>").append("<p>userId" + signVO.getUserId() + "</p>")
          .append("<p>pw : " + signVO.getPw() + "</p>").toString());
      mail.send();
      out.println("<script>alert('아이디와 비밀번호를 보냈습니다.'); location.href='/sign/in'</script>");
    } else {
      out.println("<script>alert('아이디가 없습니다.'); history.back();</script>");
    }
  }
}