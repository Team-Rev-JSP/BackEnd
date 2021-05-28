package action;

import service.CardModifyService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CardModifyViewAction implements Action{
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
//        String ids = request.getParameter("id");
//        int id = Integer.parseInt(ids);
        int id = 32;

        CardModifyService cardModifyViewService = new CardModifyService();
        CardVO param = cardModifyViewService.ModifyView(id);
        request.setAttribute("modList", param);
        ActionForward forward = new ActionForward();
        forward.setPath("/view/modifyForm.jsp");
        return forward;
    }
}
