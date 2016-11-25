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
		if("北京".equals(province)){
			pw.write("<city>朝阳区</city>");
			pw.write("<city>一环以内</city>");
			pw.write("<city>二环以内</city>");
		}else if("湖北".equals(province)){
			pw.write("<city>武汉市</city>");
			pw.write("<city>孝感市</city>");
			pw.write("<city>襄阳市</city>");
			pw.write("<city>天门市</city>");
			pw.write("<city>仙桃</city>");
		}
		
		pw.write("</root>");
		pw.flush();
		pw.close();
	}

}
