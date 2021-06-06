package action;


import service.ListService;
import vo.ActionForward;
import vo.CardVO;

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
<<<<<<< HEAD
//        if(request.getParameter("page")!= null){
//            page = Integer.parseInt(request.getParameter("page"));
//        }
        ListService cardListService = new ListService();
        int totalCount = cardListService.getTotalpage(uid);
=======

        CardListService cardListService = new CardListService();
        int totalItem = cardListService.getTotalItem(uid) ;
        System.out.println("TotalItem : " + totalItem);
        int totalPage = (totalItem/9) + (totalItem%9 > 0 ? 1 : 0);
        System.out.println("TotalItem : " + totalPage);
>>>>>>> teayeong
        list = cardListService.getLists(page, limit, uid);
        ActionForward forward = new ActionForward();
        request.setAttribute("lists", list);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("page", page);

        forward.setPath("/view/Main.jsp");
        return forward;
    }
}
