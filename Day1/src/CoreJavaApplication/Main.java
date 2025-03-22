package CoreJavaApplication;

public class Main {


	public static void main(String[] args) {
		BankingApplication acco=new BankingApplication("1234", 0.0, "Bhagyashri", "Bhagya123@gmail.com", "9898786754");
		
		acco.DepositeMoney(100);
		acco.DepositeMoney(150);
		acco.WithDrawMoney(200);
		
	}

}
