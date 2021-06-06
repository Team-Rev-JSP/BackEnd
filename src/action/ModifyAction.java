package action;

import service.ModifyService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ModifyAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        CardVO vo = new CardVO();
        vo.setId(Integer.parseInt(request.getParameter("idx")));
        vo.setName(request.getParameter("name"));
        vo.setPhone(request.getParameter("phone"));
        vo.setEmail(request.getParameter("email"));
        vo.setPosition(request.getParameter("position"));
        vo.setAddress(request.getParameter("address"));
        vo.setFax(request.getParameter("fax"));
        vo.setUrl(request.getParameter("url"));
        vo.setCompany(request.getParameter("company"));

        ModifyService cardModifyService = new ModifyService();
        boolean isModifyChk = cardModifyService.ModifyCards(vo);
        ActionForward forward = new ActionForward();

        if(!isModifyChk) {
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('명함수정에 실패하였습니다.');");
            out.println("history.back();");
            out.println("</script>");
            out.close();
        } else {
            forward.setPath("Detail.bo");
        }
        return forward;
    }
}
