package dao;

import static db.DbBridge.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import vo.AccountVO;

public class AccountDAO {
    DataSource ds;
    Connection con;
    private static AccountDAO AccountDAO;

    private AccountDAO() {
        // TODO Auto-generated constructor stub
    }

    public static AccountDAO getInstance(){
        if(AccountDAO == null){
            AccountDAO = new AccountDAO();
        }
        return AccountDAO;
    }

    public void setConnection(Connection con){
        this.con = con;
    }
    /* ---------------------INSERT---------------------------
     사용자가 등록을 할때 DB에 등록된 값을 삽입해주는 메서드 */
    public int insertCard(AccountVO param){
        int result = 0;
        PreparedStatement ps = null;

        String sql = "INSERT INTO account (id, password, authority) VALUES (?,?,?)";

        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, param.getId());
            ps.setString(2, param.getPassword());
            ps.setString(3, param.getAuthority());
            result = ps.executeUpdate();
        } catch (Exception e){
            e.printStackTrace();
        } finally{
            close(ps);
        }
        return result;
    }
    //전체 명함의 개수 구하기
    public int getListCount() {
        int count = 0;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "SELECT count(*) from card";

        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            System.out.println("하이");

            if(rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(ps);
            close(rs);
        }
        return count;
    }

// 메인화면에 현재 명함들을 List로 전부 가지고오는 메서드
    public List<AccountVO> getCardList(int page, int limit){
        List<AccountVO> list = new ArrayList();
        PreparedStatement ps = null;
        ResultSet rs = null;
        AccountVO card = null;
        int startrow = (page - 1) * 10;
        System.out.println(startrow);

        String sql = "SELECT * FROM card ORDER BY id DESC limit ?, 9";

        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, startrow);
            rs = ps.executeQuery();

            while(rs.next()){
                card = new AccountVO();
                card.setId(rs.getString("id"));
                card.setPassword(rs.getString("name"));
                card.setAuthority(rs.getString("authority"));
                list.add(card);
            }

        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            close(ps);
            close(rs);
        }
        return list;
    }
    // 명함 삭제하는 사용자가 본인 자신인지 체크하는 메서드
    public boolean isChkCardWriter(int id, String password) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean chk = false;

        String sql = "SELECT * FROM card WHERE id = ?";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();

            if(password.equals(rs.getString("name"))) {// 카드DB에도 비번이 필요해 보이는데
                    chk = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return chk;
    }

    /* ---------------------UPDATE---------------------------
//     사용자가 수정을 필요로할때 수정 할 수 있도록 해주는 메서드 */
    public int ModifyCard(AccountVO vo){
        PreparedStatement ps = null;
        int result = 0;

        String sql = "UPDATE card SET name=?, phone=?, email=?, position=?, "
                    +"address=?, fax=?, url=?, company=?, photo_path=? WHERE id = ?";

        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, vo.getId());
            ps.setString(2, vo.getPassword());
            ps.setString(3, vo.getAuthority());
            result = ps.executeUpdate();

        }catch(Exception e){
            e.printStackTrace();
        }finally{
            close(ps);
        }
        return result;
    }
    /* ---------------------DELETE---------------------------
            사용자가 명함을 삭제할때 필요한 메서드 */
    public int deleteCard(int id){
        int result = 0;
        PreparedStatement ps = null;

        String sql = "DELETE FROM card WHERE id = ?";

        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            result = ps.executeUpdate();
            System.out.println("DAO도착");

        }catch(Exception e){
            e.printStackTrace();
        }finally{
            close(ps);
        }
        return result;
    }
}
