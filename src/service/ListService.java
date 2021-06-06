package service;

import dao.CardDAO;
import vo.CardVO;

import static db.DbBridge.*;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

<<<<<<< HEAD:src/service/ListService.java
public class ListService {
    public int getTotalpage(String uid) throws Exception {
=======
public class CardListService {
    public int getTotalItem(String uid) throws Exception {
>>>>>>> teayeong:src/service/CardListService.java
        int count = 0;
        Connection con = getConnection();
        CardDAO cardDAO = CardDAO.getInstance();
        cardDAO.setConnection(con);
        count = cardDAO.getListCount(uid);
<<<<<<< HEAD:src/service/ListService.java
//        close(con);
=======
        close(con);
>>>>>>> teayeong:src/service/CardListService.java
        return count;
    }

    public ArrayList<CardVO> getLists(int page, int limit, String uid) throws Exception {
        ArrayList<CardVO> list = null;
        Connection con = getConnection();
        CardDAO cardDAO = CardDAO.getInstance();
        cardDAO.setConnection(con);
        list = (ArrayList<CardVO>) cardDAO.getCardList(page, limit, uid);
        close(con);
        return list;
    }
}
