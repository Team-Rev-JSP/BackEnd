package action;

import service.ModifyService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModifyFormAction implements Action{
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        int idx = Integer.parseInt(request.getParameter("idx"));
        ModifyService cardModifyViewService = new ModifyService();
        CardVO param = cardModifyViewService.ModifyCard(idx);
        request.setAttribute("card", param);
        ActionForward forward = new ActionForward();
        forward.setPath("/view/Modify.jsp");
        return forward;
    }
}
