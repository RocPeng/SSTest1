package model;

// 用户信息类
public class User {
	
	private String port;// 用户端口
	private String password;// 密码
	
	// 构造方法
	public User(){}
	public User(String port, String password) {
		this.port = port;
		this.password = password;
	}
	
	// 各属性Get&Set
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
