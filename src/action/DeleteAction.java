package action;

import action.Action;
import dao.CardDAO;
import service.CardDeleteService;
import vo.ActionForward;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

public class DeleteAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String ids = request.getParameter("idx");
        int id = Integer.parseInt(ids);
        ActionForward forward = new ActionForward();
        CardDeleteService cardDeleteService = new CardDeleteService();

        boolean isDeleteChk = cardDeleteService.deletecard(id);
        System.out.println("isChecke" + isDeleteChk);
        if(!isDeleteChk) {
            response.setContentType("text/html;charset=UTF-8");
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('삭제에 실패하였습니다.');");
            out.println("history.back();");
            out.println("</script>");
            out.close();
        }else{
            forward.setRedirect(true);
            forward.setPath("Main.bo");
        }
        return forward;
    }
}
