package action;

import service.ModifyService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DetailAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response){

        int idx = Integer.parseInt( request.getParameter("idx") ) ;
        int page = Integer.parseInt( request.getParameter("page") ) ;
        ModifyService cardModifyViewService = new ModifyService();
        CardVO card = cardModifyViewService.ModifyCard(idx);
        request.setAttribute("card", card);
        request.setAttribute("page", page);
        ActionForward forward = new ActionForward();
        forward.setPath("/view/Detail.jsp");
        return forward;
    }
}