package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.CardAddService;
import service.JoinService;
import vo.AccountVO;
import vo.ActionForward;
import vo.CardVO;

public class JoinAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        AccountVO vo = new AccountVO();
        ActionForward forward = new ActionForward();
        vo.setId(request.getParameter("id"));
        vo.setPassword(request.getParameter("password"));
        vo.setAuthority(request.getParameter("auth"));
        JoinService joinService = new JoinService();
        boolean isWriteSuccess = joinService.registcard(vo);

        if(!isWriteSuccess){
            request.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('명함등록에 실패하였습니다.');");
            out.println("history.back();");
            out.println("</script>");
            out.close();
        }else{
            forward.setRedirect(true);
            forward.setPath("main_page.bo");
        }
        return forward;
    }
}
