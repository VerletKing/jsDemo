package servlet.code;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CodeAction extends ActionSupport{
	
	private String code;
	public void setCode(String code){
		this.code=code;
	}

	@Override
	public String execute() throws Exception {
		String tip = "img/MsgError.gif";
		String codeServlet = (String) ActionContext.getContext().getSession().get("CHECKNUM");
		if(codeServlet.equals(code)){
			tip = "img/MsgSent.gif";
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		pw.write(tip);
		pw.flush();
		pw.close();
		return null;
	}
	
	
	
}
