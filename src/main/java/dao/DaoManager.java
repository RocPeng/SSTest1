package dao;

// Dao管理器,方便统一操作Dao
public class DaoManager {

	// 静态方法创建一个UserDao
	public static IUserDao getUserDao(){
		return new UserDao();
	}
}
