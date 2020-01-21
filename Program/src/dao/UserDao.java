package dao;

import damain.User;

import java.util.List;
import java.util.Map;

/**
 * 用户操作的DAO
 */
public interface UserDao {
    /**
     * 查询所有用户信息
     * @return List<User>
     */
    List<User> findAll();

    /**
     * 登录方法
     * @param username
     * @param password
     * @return
     */
    User findUserByUsernameAndPassword(String username, String password);

    /**
     * 添加User
     * @param user
     */
    void addUser(User user);

    /**
     * 根据id删除User
     * @param id
     */
    void delete(int id);

    /**
     * 根据id查询User
     * @param id
     * @return User
     */
    User findById(int id);

    /**
     * 修改用户信息
     * @param user
     */
    void update(User user);

    /**
     * 查询总记录数
     * @param condition
     * @return int
     */
    int findTotalCount(Map<String, String[]> condition);

    /**
     * 分页查询每页记录
     * @param start
     * @param rows
     * @param condition
     * @return List<User>
     */
    List<User> findByPage(int start, int rows, Map<String, String[]> condition);
}
