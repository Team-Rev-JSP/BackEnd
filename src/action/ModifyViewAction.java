
package action;

import service.ModifyService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModifyViewAction implements Action{
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        String ids = request.getParameter("idx");
        int id = Integer.parseInt(ids);
        int page = Integer.parseInt(request.getParameter("page"));

        ModifyService cardModifyViewService = new ModifyService();
        CardVO param = cardModifyViewService.ModifyCard(id);
        request.setAttribute("card", param);
        request.setAttribute("idx", id);
        request.setAttribute("page", page);
        ActionForward forward = new ActionForward();
        forward.setPath("/view/ModifyForm.jsp");
        return forward;
    }
}