package poem.Dao;

import poem.entity.User;

public interface UserDao {
    //�ӿڷ�����ͨ���û����õ�User����
    public User findUserByName(String uname);
}