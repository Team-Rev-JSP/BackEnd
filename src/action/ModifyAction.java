package action;

import action.Action;
import dao.CardDAO;
import service.CardModifyService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class ModifyAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        CardVO vo = new CardVO();
        String ids = request.getParameter("idx");
        int idx = Integer.parseInt(ids);
        int page = Integer.parseInt(request.getParameter("page"));
        vo.setId(idx);
        vo.setName(request.getParameter("name"));
        System.out.println("ModifyAction name : " + vo.getName());
        vo.setPosition(request.getParameter("position"));

        vo.setCompany(request.getParameter("company"));
        vo.setAddress(request.getParameter("address"));

        vo.setFax(request.getParameter("fax"));
        vo.setPhone(request.getParameter("phone"));
        vo.setEmail(request.getParameter("email"));
        vo.setUrl(request.getParameter("url"));

        CardModifyService cardModifyService = new CardModifyService();
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
            forward.setPath("Detail.bo?idx="+idx+"&page="+page);
        }
        return forward;
    }
}
