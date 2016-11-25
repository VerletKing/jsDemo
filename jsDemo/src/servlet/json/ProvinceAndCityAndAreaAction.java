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
		if("����".equals(bean.getProvince())){
			cityList.add("�人");
			cityList.add("Т��");
			cityList.add("����");
			cityList.add("����");
		}else if("����".equals(bean.getProvince())){
			cityList.add("�żҽ�");
			cityList.add("��ɳ");
			cityList.add("����");
		}else if("�Ϻ�".equals(bean.getProvince())){
			cityList.add("�ֶ�����");
			cityList.add("�ɽ���");
		}
		return SUCCESS;
	}
	
	public String findCityByArea(){
		areaList = new ArrayList<String>();
		if("�人".equals(bean.getCity())){
			areaList.add("�����");
			areaList.add("������");
			areaList.add("������");
			areaList.add("������");
		}else if("����".equals(bean.getCity())){
			areaList.add("AA");
			areaList.add("BB");
		}else if("Т��".equals(bean.getCity())){
			areaList.add("������");
			areaList.add("��½��");
			areaList.add("Т����");
		}else if("����".equals(bean.getCity())){
			areaList.add("CC");
		}
		return SUCCESS;
	}
}
