package action;

import service.ListService;
import vo.ActionForward;
import vo.CardVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class SearchAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ArrayList<CardVO> list = new ArrayList<>();
        int page = 0;
        int limit = 9;
        if(request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }

        String uid = (String)request.getSession().getAttribute("id");
        String search = (String)request.getParameter("search");
        ListService cardListService = new ListService();
        int totalItem = cardListService.getTotalItemWithName(uid, search) ;
        int totalPage = (totalItem/9) + (totalItem%9 > 0 ? 1 : 0);
        list = cardListService.getListsWithName(page, limit, uid, search);
        ActionForward forward = new ActionForward();
        request.setAttribute("lists", list);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("page", page);
        request.setAttribute("search", search);
        forward.setPath("/view/Main.jsp");
        return forward;
    }
}
