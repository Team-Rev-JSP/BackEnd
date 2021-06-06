package action;


import service.CardListService;
import vo.ActionForward;
import vo.CardVO;
import vo.PageInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class MainAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ArrayList<CardVO> list = new ArrayList<CardVO>();

        int page = 0;
        int limit = 9;
        String uid = (String)request.getSession().getAttribute("id");
        CardListService cardListService = new CardListService();
        int totalCount = cardListService.getTotalpage(uid);
        list = cardListService.getLists(page, limit, uid);
        ActionForward forward = new ActionForward();
        request.setAttribute("lists", list);
        request.setAttribute("totalpage", totalCount);

        forward.setPath("/view/Main.jsp");
        return forward;
    }
}
