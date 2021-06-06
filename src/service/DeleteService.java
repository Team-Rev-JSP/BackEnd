package service;

import dao.CardDAO;
import static db.DbBridge.*;
import java.sql.Connection;

public class DeleteService {
    public boolean deleteCard(int idx) throws Exception{ // 명함 삭제
        boolean isDeleteSuccess = false;
        CardDAO cardDAO = CardDAO.getInstance();
        Connection con = getConnection();
        cardDAO.setConnection(con);
        int delete = cardDAO.deleteCard(idx);

        if(delete > 0){
            commit(con);
            isDeleteSuccess = true;
        }
        else{
            rollback(con);
        }
        return isDeleteSuccess;
    }
}