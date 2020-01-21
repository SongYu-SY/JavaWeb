package service.impl;

import damain.PageBean;
import damain.User;
import dao.UserDao;
import dao.impl.UserDaoImpl;
import service.UserService;

import java.util.List;
import java.util.Map;

public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();

    @Override
    public List<User> findAll() {
        return dao.findAll();
    }

    @Override
    public User login(User user) {
        return dao.findUserByUsernameAndPassword(user.getUsername(), user.getPassword());
    }

    @Override
    public void addUser(User user) {
        dao.addUser(user);
    }

    @Override
    public void deleteUser(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public User findUserById(String id) {
        return dao.findById(Integer.parseInt(id));
    }

    @Override
    public void updateUser(User user) {
        dao.update(user);
    }

    @Override
    public void delSelectedUser(String[] ids) {
        if (ids != null && ids.length > 0) {
            for (String id : ids) {
                dao.delete(Integer.parseInt(id));
            }
        }
    }

//    @Override
//    public PageBean<User> findUserByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
//        int currentPage = Integer.parseInt(_currentPage);
//        int rows = Integer.parseInt(_rows);
//
//        if (currentPage <= 0) {
//            currentPage = 1;
//        }
//        //1.创建空的PageBean对象
//        PageBean<User> pb = new PageBean<User>();
//        //2.设置参数
//        pb.setCurrentPage(currentPage);
//        pb.setRows(rows);
//        //3.调用dao查询总记录数
//        int totalCount = dao.findTotalCount(condition);
//        pb.setTotalCount(totalCount);
//        //4.调用dao查询list集合
//        //计算开始的记录索引
//        int start = (currentPage - 1) * rows;
//        List<User> list = dao.findByPage(start, rows, condition);
//        pb.setList(list);
//        //5.计算总页码
//        int totalPage = (totalCount % rows) == 0 ? (totalCount / rows) : (totalCount / rows) + 1;
//        if (currentPage >= totalPage) {
//            currentPage = totalPage;
//        }
//        pb.setTotalPage(totalPage);
//        return pb;
//    }

    @Override
    public PageBean<User> findUserByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);
        //1.创建空的PageBean对象
        PageBean<User> pb = new PageBean<User>();
        //2.调用dao查询总记录数
        int totalCount = dao.findTotalCount(condition);
        //3.计算总页码
        int totalPage = (totalCount % rows) == 0 ? (totalCount / rows) : (totalCount / rows) + 1;
        if (currentPage <= 0) {
            currentPage = 1;
        }
        if (currentPage >= totalPage) {
            currentPage = totalPage;
        }
        //4.调用dao查询list集合
        //计算开始的记录索引
        int start = (currentPage - 1) * rows;
        List<User> list = dao.findByPage(start, rows, condition);
        //5.设置参数
        pb.setTotalCount(totalCount);
        pb.setList(list);
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);
        pb.setTotalPage(totalPage);
        return pb;
    }
}
