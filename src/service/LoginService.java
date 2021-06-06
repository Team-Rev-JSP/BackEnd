package service;

import static db.DbBridge.close;
import static db.DbBridge.commit;
import static db.DbBridge.getConnection;
import static db.DbBridge.rollback;

import dao.AccountDAO;
import java.sql.Connection;
import vo.AccountVO;

public class LoginService {

    public String registAccount(AccountVO param) throws Exception{

        String NickChk = "";
        AccountDAO accountDAO = AccountDAO.getInstance();
        Connection con = getConnection();
        accountDAO.setConnection(con);
        String nickname = accountDAO.getAccount(param);

        if(nickname != null){
            commit(con);
            NickChk = nickname;
        }
        else{
            rollback(con);
        }
<<<<<<< HEAD
//        close(con);
        return NickChk;
<<<<<<< HEAD
=======
=======
        close(con);
        return isWriteSuccess;
>>>>>>> teayeong
>>>>>>> 23a777e3c198c981baea1e02244c5f76a69c33ac
    }
}