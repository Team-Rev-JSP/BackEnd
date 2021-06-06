package action;

import vo.ActionForward;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        System.out.println(session.getAttribute("id"));
        session.invalidate();
        ActionForward forward = new ActionForward();
        forward.setPath("/Login.bo");
        return forward;
    }
}
