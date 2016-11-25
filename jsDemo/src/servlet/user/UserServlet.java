package servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		byte[] bytes = userName.getBytes("ISO8859-1");
		userName = new String(bytes,"UTF-8");
		System.out.println("get");
		String text ="<font color='red'>用户名可以使用</font>";
		if("李奇".equals(userName)){
			text = "<font color='green'>用户名存在</font>";
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.write(text);
		pw.flush();
		pw.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("userName");
		System.out.println("post "+userName); 
		String text = "img/MsgSent.gif";
		if("李奇".equals(userName)){
			text = "img/MsgError.gif";
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		pw.write(text);
		pw.flush();
		pw.close();
	}

}
