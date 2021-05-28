//package action;
//
//import action.Action;
//import dao.CardDAO;
//import vo.ActionForward;
//import vo.CardVO;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class CardDetailAction implements Action {
//    @Override
//    public ActionForward execute(HttpServletRequest request, HttpServletResponse response){
//        int id = 19;
//        request.setAttribute("list", CardDAO.findCard(id));
//        ActionForward forward = new ActionForward();
//        forward.setPath("view/testpro.jsp");
//        return forward;
//    }
//}
