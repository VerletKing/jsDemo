package servlet.jsonTool;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import servlet.json.Bean;
import net.sf.json.JSONArray;

public class testTool {
	
	public static void test(){
		List<Bean> list = new ArrayList<Bean>();
		list.add(new Bean("�人","����"));
		list.add(new Bean("Т��","����"));
		
		Map<String,Object> obj = new LinkedHashMap<String, Object>();
		obj.put("name", "����");
		obj.put("age", 12);
		obj.put("����", list);
	
		JSONArray jsonArray = JSONArray.fromObject(obj);
		System.out.println(jsonArray);
	}
	
	public static void main(String[] args){
		test();
	}
}
