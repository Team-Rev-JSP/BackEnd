package action;


import service.CardListService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class CardListAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ArrayList<CardVO> list = new ArrayList<CardVO>();
        int page = 1;
        int limit = 9;
        int idx = 1;
//        if(request.getParameter("page")!= null){
//            page = Integer.parseInt(request.getParameter("page"));
//        }

        CardListService cardListService = new CardListService();
        int totalCount = cardListService.getTotalpage();
        list = cardListService.getLists(page, limit, idx);
        ActionForward forward = new ActionForward();
        request.setAttribute("lists", list);
        request.setAttribute("totalpage", totalCount);
        forward.setPath("main_page.bo");
        return forward;
    }
}
