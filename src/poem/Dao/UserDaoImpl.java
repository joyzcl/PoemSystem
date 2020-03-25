package poem.Dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import poem.entity.User;
import poem.mapper.UserMapper;

//@Repository��Ӧ���ݷ��ʲ�Bean
//
//@Repository(value=��userDao��)ע���Ǹ���Spring����Spring����һ�����ֽС�userDao����UserDaoImplʵ����
//
//��Service��Ҫʹ��Spring��������Ϊ��userDao����UserDaoImplʵ��ʱ�� 
//�Ϳ���ʹ��@Resource(name =��userDao��)ע�����Spring��Spring�Ѵ����õ�userDaoע���Service���ɡ�
@Repository("userDao")
public class UserDaoImpl implements UserDao {
    //ע������Mapper����Դ
    @Resource(name = "userMapper")
    private UserMapper userMapper;

    /* �����û��������û����� */
    public User findUserByName(String uname) {
        //����Mapper������ݿ��еõ�User����
        return userMapper.getUserByName(uname);
    }
}
