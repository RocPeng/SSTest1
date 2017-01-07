package dao;

import java.util.List;

import model.User;


// 用户操作接口
public interface IUserDao {

	public void addUser(User user);// 增
	public void deleteUser(String port);// 删
	public void updateUser(User user);// 改
	public User loadUser(String port);// 加载实体
	public List<User> getListUser();// 加载所有
	public void login(String username, String password);// 登陆
	public List<User> findUser(String key);// 模糊查询
	
}
