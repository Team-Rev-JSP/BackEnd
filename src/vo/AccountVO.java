package vo;

public class AccountVO {
    private String id;
    private String password;
    private String nickname;

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getAuthority() { return nickname; }
    public void setAuthority(String authority) { this.nickname = authority; }
}
