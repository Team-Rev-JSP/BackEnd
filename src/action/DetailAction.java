package action;

import action.Action;
import dao.CardDAO;
import service.CardModifyService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DetailAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response){
        HttpSession hs = request.getSession();

        //        int id = Integer.parseInt(request.getParameter("id"));
        int idx = 1;
        CardModifyService cardModifyViewService = new CardModifyService();
        CardVO param = cardModifyViewService.ModifyView(idx);
        request.setAttribute("detailList", param);
        ActionForward forward = new ActionForward();
        forward.setPath("/view/detail.jsp");
        return forward;
    }
}
