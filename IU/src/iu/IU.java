package iu;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

public class IU {
 private static final String driver = "com.mysql.jdbc.Driver";
 private static final String url = "jdbc:mysql://localhost:3306/iu" 
   + "?useUnicode=true&"
   + "characterEncoding=UTF-8";
 private static final String user = "root";
 private static final String password = "";
 
 public static Connection getConnection() {
  Connection conn = null;
  try {
   Class.forName(driver);
   conn = DriverManager.getConnection(url, user, password);
   
  } catch (ClassNotFoundException e) {
	  // TODO Auto-generated catch block
      System.out.println("mysql驱动未找到，请复制mysql-connector-java-5.1.30-bin.jar文件到lib目录");
      e.printStackTrace();
  } catch (SQLException e) {
	  // TODO Auto-generated catch block
      e.printStackTrace();
  }
  return conn;
 }
 public static List<Map> queryMap(String sql, Object... values) {
  Connection conn = null;
  PreparedStatement pstmt = null;
  List<Map> ret = new LinkedList();
  System.out.println("execute sql:" + sql);
  try {
   conn = getConnection();
   pstmt = conn.prepareStatement(sql);
   for (int i = 0; i < values.length; i++) {
    pstmt.setObject(i + 1, values[i]);
   }
   ResultSet rs = pstmt.executeQuery();
   ResultSetMetaData rsmt = pstmt.getMetaData();
   int colNum = rsmt.getColumnCount();
   while (rs.next()) {
    Map<String, Object> row = new HashMap<String, Object>(colNum);
    for (int i = 1; i <= colNum; i++) {
     row.put(rsmt.getColumnLabel(i), rs.getObject(i));
    }
    ret.add(row);
   }
   IU.close(rs);
   System.out.println("return :" + ret.size());
  } catch (SQLException e) {
   e.printStackTrace();
  }
  IU.close(pstmt);
  IU.close(conn);
  return ret;
 }
 public static List<List> queryList(String sql, Object... values) {
	  Connection conn = null;
	  PreparedStatement pstmt = null;
	  List<List> ret = new LinkedList();
	  System.out.println("execute sql:" + sql);
	  try {
	   conn = getConnection();
	   pstmt = conn.prepareStatement(sql);
	   for (int i = 0; i < values.length; i++) {
	    pstmt.setObject(i + 1, values[i]);
	   }
	   ResultSet rs = pstmt.executeQuery();
	   ResultSetMetaData rsmt = pstmt.getMetaData();
	   int colNum = rsmt.getColumnCount();
	   while (rs.next()) {
	    List<Object> row = new Vector<Object>(colNum);
	    for (int i = 1; i <= colNum; i++) {
	     row.add(rs.getObject(i));
	    }
	    ret.add(row);

	   }
	   System.out.println("return :" + ret.size());
	  } catch (SQLException e) {
	   e.printStackTrace();
	  }
	  IU.close(pstmt);
	  IU.close(conn);
	  return ret;
	 }
	 public static int executeUpdate(String sql, Object... values) {
	  Connection conn = null;
	  PreparedStatement pstmt = null;
	  int ret = -1;
	  System.out.println("execute sql:" + sql);
	  try {
	   conn = getConnection();
	   pstmt = conn.prepareStatement(sql);
	   for (int i = 0; i < values.length; i++) {
	    pstmt.setObject(i + 1, values[i]);
	   }
	   ret = pstmt.executeUpdate();
	   System.out.println("return :" + ret);
	  } catch (SQLException e) {
	   e.printStackTrace();
	  }
	  IU.close(pstmt);
	  IU.close(conn);
	  return ret;
	 }
	 public static void main(String[] args) {
		  int ret = 0;
		  // String sql="insert into tb_user(name,email,password) values(?,?,?)";
		  // ret=executeUpdate(sql,"test","test@789.com","789");
		  // System.out.println(ret);
		  String select = "select * from tb_user";
		  List<List> data = queryList(select);
		  for (List list : data) {
		   for (Object object : list) {
		    System.out.println(object + " ");
		   }
		   System.out.println();
		  }

		  select = "select * from tb_user";
		  List<Map> list = queryMap(select);
		  for (Map map : list) {
		   Set keys = map.keySet();
		   for (Object key : keys) {
		    System.out.println(key + ":" + map.get(key));
		   }
		   System.out.println();
		  }

		 }

		 public static void close(Object toClose) {
		  if (toClose == null) return;
		  Class<? extends Object> theClass = toClose.getClass();
		  try {
		   Method close = theClass.getMethod("close");
		   close.invoke(toClose);
		  } catch (NoSuchMethodException e) {
		   e.printStackTrace();
		  } catch (SecurityException e) {
		   e.printStackTrace();
		  } catch (IllegalAccessException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  } catch (IllegalArgumentException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  } catch (InvocationTargetException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
		 }

		}