package action;

import com.opensymphony.xwork2.ActionSupport;

public class TaxAction extends ActionSupport{
	private String money;
	public void setMoney(String money) {
		this.money = money;
	}

	private Double taxMoney;
	public Double getTaxMoney() {
		return taxMoney;
	}
	@Override
	public String execute() throws Exception {
		taxMoney = tax(Double.parseDouble(money));
		return SUCCESS;
	}
	
	private Double tax(Double money){
		money = money-3500;
		if(money<=1500){
			money = money*0.03;
			money = money-0;
		}else if(money>1500 && money<=4500){
			money = money*0.1;
			money = money-105;
		}else if(money>4500 && money<=9000){
			money = money*0.2;
			money = money-555;
		}else if(money>9000 && money<=35000){
			money = money*0.25;
			money = money-1005;
		}else if(money>35000 && money<=55000){
			money = money*0.3;
			money = money-2755;
		}else if(money>55000 && money<=80000){
			money = money*0.35;
			money = money-5505;
		}else if(money>80000){
			money = money*0.45;
			money = money-13505;
		}
		return money;
	}
	
}
