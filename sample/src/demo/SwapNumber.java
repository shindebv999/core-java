package demo;

public class SwapNumber {
public static void main(String[] args) {
	int a=20,b=50;
	System.out.println("a is "+a+" and b is "+b);
	a=a+b;
	b=a-b;
	a=a-b;
	System.out.println("After swapping a is "+a+" and b is "+b);
}
}
