package action;

import action.Action;
import dao.CardDAO;
import service.CardDeleteService;
import vo.ActionForward;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

public class CardDeleteAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        /*
        String ids = request.getParameter("id");
        int id = Integer.parseInt(ids);
        String password = request.getParameter("user_password");
        */
        int id = 42;
        ActionForward forward = new ActionForward();
        CardDeleteService cardDeleteService = new CardDeleteService();
      /*  boolean isWriteDelete = cardDeleteService.isChkCardUser(id);  패스워드까지 넘겨야함 자기만 자기 명함을 지울수있게 체크
        System.out.println(isWriteDelete);
        if(!isWriteDelete){
            request.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('본인은 삭제할 권한이 없습니다');");
            out.println("history.back();");
            out.println("</script>");
            out.close();
        }else*/
            boolean isDeleteChk = cardDeleteService.deletecard(id);
            System.out.println("isChecke" + isDeleteChk);
            if(!isDeleteChk) {
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out=response.getWriter();
                out.println("<script>");
                out.println("alert('삭제에 실패하였습니다.');");
                out.println("history.back();");
                out.println("</script>");
                out.close();
            }else{
                forward.setRedirect(true);
                forward.setPath("cardLists.bo");
            }
        return forward;
    }
}
