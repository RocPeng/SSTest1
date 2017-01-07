package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.User;
import util.FileUtil;

// User数据库操作具体实现类
public class UserDao implements IUserDao {
	
	public void println(Object object){
		System.out.println(object);
	}
	
	public List<User> getListUser() {
		List<User> listUsers = new ArrayList<User>();
		Map<String, String> users=FileUtil.readFileUsers(FileUtil.currentPath);
		for(String port:users.keySet()){
			User user=new User(port, users.get(port));
			listUsers.add(user);
		}
		return listUsers;
	}

	public void addUser(User user) {
		List<User> listUsers = getListUser();
		listUsers.add(user);
		Map<String, String> userData=new HashMap<String, String>();
		for(User user2:listUsers){
			userData.put(user2.getPort(), user2.getPassword());
		}
		FileUtil.writeUsersToFile(FileUtil.currentPath, userData);
	}

	public void deleteUser(String port) {
		Map<String, String> userData=FileUtil.readFileUsers(FileUtil.currentPath);
		userData.remove(port);
		FileUtil.writeUsersToFile(FileUtil.currentPath, userData);
	}

	public void updateUser(User user) {
		Map<String, String> userData=FileUtil.readFileUsers(FileUtil.currentPath);
		userData.put(user.getPort(), user.getPassword());
		FileUtil.writeUsersToFile(FileUtil.currentPath, userData);
	}

	public void login(String username, String password) {
		
	}

	public List<User> findUser(String key) {
		List<User> listUsers = new ArrayList<User>();// 用以返回的List<User>实例
		return listUsers;
	}

	public User loadUser(String port) {
		return new User(port, "");
	}
}
