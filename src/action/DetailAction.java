package action;

<<<<<<< HEAD
import service.ModifyService;
=======
import service.CardModifyService;
>>>>>>> teayeong
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DetailAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response){
<<<<<<< HEAD
        int idx = Integer.parseInt(request.getParameter("idx"));
        ModifyService cardModifyViewService = new ModifyService();
        CardVO card = cardModifyViewService.ModifyView(idx);
=======

        int idx = Integer.parseInt( request.getParameter("idx") ) ;
        int page = Integer.parseInt( request.getParameter("page") ) ;
        CardModifyService cardModifyViewService = new CardModifyService();
        CardVO card = cardModifyViewService.ModifyCard(idx);
>>>>>>> teayeong
        request.setAttribute("card", card);
        request.setAttribute("page", page);
        ActionForward forward = new ActionForward();
        forward.setPath("/view/Detail.jsp");
        return forward;
    }
}
