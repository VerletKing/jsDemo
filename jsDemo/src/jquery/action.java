package jquery;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class action extends ActionSupport{
	private String province;
	public void setProvince(String province) {
		this.province = province;
		System.out.println(province);
	}
	List<String> cityList;
	public List<String> getCityList() {
		return cityList;
	}
	
	public String find(){
		cityList = new ArrayList<String>();
		if("湖北".equals(province)){
			cityList.add("武汉");
			cityList.add("孝感");
			cityList.add("黄冈");
		}else if("湖南".equals(province)){
			cityList.add("长沙");
			cityList.add("张家界");
		}
		return SUCCESS;
	}
}
