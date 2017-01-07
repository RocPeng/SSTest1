package util;
import java.io.File;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.FileUtils;

import com.alibaba.fastjson.JSONObject;

public class FileUtil {
	public static String macTestPath="/Users/roc_peng/Downloads/config.json";
	public static String vpsServerPath="/etc/shadowsocks/config.json";
	public static String macShadowSockLog="/Users/roc_peng/Downloads/shadowsocks.log";
	public static String shadowSockLog="/var/log/shadowsocks.log";
	public static String currentPath=vpsServerPath;
	public static String currentLogPath=shadowSockLog;
	
	/**
	 * 读取文件转换成String
	 */
	public static String readFileToStr(String filePath){
		String content="";
		File file=new File(filePath);
		try {
			content=FileUtils.readFileToString(file, Charset.forName("UTF-8"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return content;
	}
	
	/**
	 * 读取文件转换成map
	 */
	public static Map readFileToMap(String filePath){
		Map<String, Object> data=new HashMap<String, Object>();
		String content=readFileToStr(filePath);
		data=JSONObject.parseObject(content, Map.class);
		return data;
	}
	
	/**
	 * 读取文件转换成user的map对象
	 */
	public static Map readFileUsers(String filePath){
		Map<String, Object> data=readFileToMap(filePath);
		Map<String, String> users=(Map<String, String>)data.get("port_password");
		return users;
	}
	
	/**
	 * 用户信息重新写入文件
	 */
	public static void writeUsersToFile(String filePath,Map<String, String> userData){
		Map<String, Object> data=readFileToMap(filePath);
		data.put("port_password", userData);
		writeMapToFile(filePath, data);
	} 
	
	/**
	 * String写入文件
	 */
	public static void writeStrToFile(String filePath,String content){
		File file=new File(filePath);
		try {
			FileUtils.writeStringToFile(file, content, Charset.forName("UTF-8"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * map写入文件
	 */
	public static void writeMapToFile(String filePath,Map<String, Object> map) {
		String content=JSONObject.toJSONString(map);
		writeStrToFile(filePath, content);
	}
}
