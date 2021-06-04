package controller;

import action.*;
import vo.ActionForward;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "*.bo")
public class WebController extends HttpServlet {

    protected void doProcess(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String RequestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String command = RequestURI.substring(contextPath.length());
        ActionForward forward = null;
        /* 웹에서 어떤 로직을 수행할지를 결정해주는 Action객체 -> 유지보수 및 관리를 위한 분산 처리
        동일한 action 라는 인터페이스를 이용하여 동일한 메소드를 통해 각자 알맞은 로직을 수행하게 만들기위한 객체.*/
        Action action = null;

        if (command.equals("/main_page.bo")) { //메인 페이지
            forward = new ActionForward();
            forward.setPath("/view/main.jsp");
        } else if (command.equals("/cardAdd_page.bo")) { // 명함 등록 페이지 login으로 알면됨
            forward = new ActionForward();
            forward.setPath("/view/login.jsp");
        } else if (command.equals("/cardAdd.bo")) { //명함 등록 서비스
            action = new CardAddAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (command.equals("/cardDelete.bo")) { // 명함 삭제 서비스
            action = new CardDeleteAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (command.equals("/cardLists.bo")) { // 명함 리스트 가져오기 서비스
            action = new CardListAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (command.equals("/cardModifyView.bo")) { // 수정을 위해 하나의 명함 정보를 가져오는 화면
            action = new CardModifyViewAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (command.equals("/cardModify.bo")) { // 명함을 수정하기 위한 서비스
            action = new CardModifyAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        else if (command.equals("/join_page.bo")) { // 회원가입 페이지
            forward = new ActionForward();
            forward.setPath("/view/join.jsp");
        } else if (command.equals("/join.bo")) {
            action = new JoinAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (command.equals("/cardDetail.bo")) {
            action = new CardDetailAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (command.equals("/login_page.bo")) { // 로그인 페이지
            forward = new ActionForward();
            forward.setPath("/view/login.jsp");
        } else if (command.equals("/login.bo")) {
            HttpSession session = request.getSession(true);
            action = new LoginAction(session);
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (forward != null) {
            if (forward.isRedirect()) {
                response.sendRedirect(forward.getPath());
            } else {
                RequestDispatcher dispatcher =
                        request.getRequestDispatcher(forward.getPath());
                dispatcher.forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }
}