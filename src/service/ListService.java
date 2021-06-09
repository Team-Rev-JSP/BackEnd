package service;

import dao.CardDAO;
import vo.CardVO;

import static db.DbBridge.*;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

public class ListService {
    public int getTotalItemWithName(String uid) throws Exception {
        int count = 0;
        Connection con = getConnection();
        CardDAO cardDAO = CardDAO.getInstance();
        cardDAO.setConnection(con);
        count = cardDAO.getListCount(uid);
        close(con);
        return count;
    }
    public int getTotalItemWithName(String uid, String search) throws Exception {
        int count = 0;
        Connection con = getConnection();
        CardDAO cardDAO = CardDAO.getInstance();
        cardDAO.setConnection(con);
        count = cardDAO.getListCountWithName(uid, search);
        close(con);
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
    public ArrayList<CardVO> getListsWithName(int page, int limit, String uid, String search) throws Exception {
        ArrayList<CardVO> list = null;
        Connection con = getConnection();
        CardDAO cardDAO = CardDAO.getInstance();
        cardDAO.setConnection(con);
        list = (ArrayList<CardVO>) cardDAO.getCardListWithName(page, limit, uid, search);
        close(con);
        return list;
    }
}
