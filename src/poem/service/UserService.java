package poem.service;

import poem.entity.User;


public interface UserService {
    // ͨ���û���������˲��û���¼
    public User checkLogin(String uname, String upass);
}