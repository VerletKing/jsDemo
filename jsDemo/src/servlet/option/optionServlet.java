package servlet.option;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class optionServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/xml;charset=utf-8");
		String province = request.getParameter("province");
		PrintWriter pw = response.getWriter();
		pw.write("<?xml version='1.0' encoding='UTF-8'?>");
		pw.write("<root>");
		if("����".equals(province)){
			pw.write("<city>������</city>");
			pw.write("<city>һ������</city>");
			pw.write("<city>��������</city>");
		}else if("����".equals(province)){
			pw.write("<city>�人��</city>");
			pw.write("<city>Т����</city>");
			pw.write("<city>������</city>");
			pw.write("<city>������</city>");
			pw.write("<city>����</city>");
		}
		
		pw.write("</root>");
		pw.flush();
		pw.close();
	}

}
