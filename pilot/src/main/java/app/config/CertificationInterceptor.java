package app.config;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import app.sign.service.SignService;
import app.sign.vo.SignVO;

@Component
public class CertificationInterceptor implements HandlerInterceptor {

  @Autowired
  SignService signService;

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    boolean isSign = request.getSession().getAttribute("signVO") == null;
    if (isSign && request.getCookies() != null) {
      Cookie[] cookies = request.getCookies();
      SignVO signVO = new SignVO();
      for (Cookie cookie : cookies) {
        if (cookie.getName().startsWith("signVO.")) {
          switch (cookie.getName().substring("signVO.".length())) {
          case "idx":
            signVO.setIdx(cookie.getValue());
            break;
          case "userId":
            signVO.setUserId(cookie.getValue());
            break;
          case "nickname":
            signVO.setNickname(cookie.getValue());
            break;
          case "email":
            signVO.setEmail(cookie.getValue());
            break;
          case "pw":
            signVO.setPw(cookie.getValue());
            break;
          default:
            break;
          }
        }
      }

      if (signVO.getIdx() != null && signVO.getUserId() != null && signVO.getNickname() != null
          && signVO.getPw() != null) {
        HttpSession session = request.getSession();
        session.setAttribute("signVO", signVO);
      }
    }
    return true;
  }

  @Override
  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
      ModelAndView modelAndView) throws Exception {
    HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
  }

  @Override
  public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
      throws Exception {
    HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
  }
}