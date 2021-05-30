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
        int id = 47;
        vo.setId(id);
        vo.setName("김똥필");
        vo.setPhone("0102139210213");
        vo.setEmail("동팔동팔");
        vo.setPosition("똥팔");
        vo.setAddress("월성");
        vo.setFax("팩스팩스");
        vo.setUrl("///dongpal");
        vo.setCompany("고속도로");
        vo.setPhoto_path("폰없음");
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
