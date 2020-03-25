package poem.Dao;

import poem.entity.User;

public interface UserDao {
    //接口方法，通过用户名得到User对象
    public User findUserByName(String uname);
}