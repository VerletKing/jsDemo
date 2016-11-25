package servlet.json;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class ProvinceAndCityAndAreaAction extends ActionSupport{
	
	private Bean bean;
	public Bean getBean() {
		return bean;
	}
	public void setBean(Bean bean) {
		this.bean = bean;
	}
	
	private List<String> cityList;
	public List<String> getCityList() {
		return cityList;
	}
	
	private List<String> areaList;
	public List<String> getAreaList() {
		return areaList;
	}
	
	public String findProvinceByCity() throws Exception {
		cityList = new ArrayList<String>();
		if("湖北".equals(bean.getProvince())){
			cityList.add("武汉");
			cityList.add("孝感");
			cityList.add("襄阳");
			cityList.add("天门");
		}else if("湖南".equals(bean.getProvince())){
			cityList.add("张家界");
			cityList.add("长沙");
			cityList.add("岳阳");
		}else if("上海".equals(bean.getProvince())){
			cityList.add("浦东新区");
			cityList.add("松江区");
		}
		return SUCCESS;
	}
	
	public String findCityByArea(){
		areaList = new ArrayList<String>();
		if("武汉".equals(bean.getCity())){
			areaList.add("武昌区");
			areaList.add("江夏区");
			areaList.add("汉口区");
			areaList.add("汉阳区");
		}else if("襄阳".equals(bean.getCity())){
			areaList.add("AA");
			areaList.add("BB");
		}else if("孝感".equals(bean.getCity())){
			areaList.add("汉川市");
			areaList.add("安陆市");
			areaList.add("孝南区");
		}else if("天门".equals(bean.getCity())){
			areaList.add("CC");
		}
		return SUCCESS;
	}
}
