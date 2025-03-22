package CoreJavaApplication;

public class BankingApplication {
	
	private String Number;
	private double Balance;
	private String Name;
	private String Email;
    private String PhoneNumber;

    public BankingApplication(String number, double balance, String name, String email, String phoneNumber) {
		super();
	    	this.Number=Number;
	    	this.Balance=Balance;
	    	this.Name=Name;
	    	this.Email=Email;
	    	this.PhoneNumber=PhoneNumber;
	    
	    	}

	public void DepositeMoney(double DepositedMoney){
		this.Balance+=DepositedMoney;
		System.out.println("Deposit is SuccessFully , new Balance is  "+this.Balance);
	}
    
    public void WithDrawMoney(double WithDrawMoney){
    	if(this.Balance-WithDrawMoney<0){
    		System.out.println("WithDraw Unsuccessfull Only "+this.Balance+" is left");
    	}
    	else{
    		this.Balance-=WithDrawMoney;
    		System.out.println("WithDraw Successfull ,Current Balance is  "+this.Balance);
    	}
    }

public String getNumber() {
		return Number;
	}

	public void setNumber(String number) {
		Number = number;
	}

	public double getBalance() {
		return Balance;
	}

	public void setBalance(double balance) {
		Balance = balance;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

public static void main(String[] args) {
	
}
}
