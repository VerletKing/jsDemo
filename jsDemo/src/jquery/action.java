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
		if("����".equals(province)){
			cityList.add("�人");
			cityList.add("Т��");
			cityList.add("�Ƹ�");
		}else if("����".equals(province)){
			cityList.add("��ɳ");
			cityList.add("�żҽ�");
		}
		return SUCCESS;
	}
}
