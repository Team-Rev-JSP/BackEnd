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

public class CardModifyAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        CardVO vo = new CardVO();
        int id = 38;
        vo.setId(id);
        vo.setName("마스터손");
        vo.setPhone("01039004879");
        vo.setEmail("니머하노지금");
        vo.setPosition("메시");
        vo.setAddress("반미콘");
        vo.setFax("팩스있다");
        vo.setUrl("///qweqwqe");
        vo.setCompany("영진전문대학");
        vo.setPhoto_path("아이폰");
//        vo.setId(request.getParameter("id"));
//        vo.setName(request.getParameter("name"));
//        vo.setPhone(request.getParameter("phone"));
//        vo.setEmail(request.getParameter("email"));
//        vo.setPosition(request.getParameter("position"));
//        vo.setAddress(request.getParameter("address"));
//        vo.setFax(request.getParameter("fax"));
//        vo.setUrl(request.getParameter("url"));
//        vo.setCompany(request.getParameter("company"));
//        vo.setPhoto_path(request.getParameter("photo_path"));

        CardModifyService cardModifyService = new CardModifyService();
        boolean isModifyChk = cardModifyService.ModifyCards(vo);
        ActionForward forward = new ActionForward();

        if(!isModifyChk) {
            request.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('명함수정에 실패하였습니다.');");
            out.println("history.back();");
            out.println("</script>");
            out.close();
        } else {
            forward.setPath("/view/login.jsp");
        }
        return forward;
    }
}
