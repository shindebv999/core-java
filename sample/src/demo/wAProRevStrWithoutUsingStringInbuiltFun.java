package demo;
//Write a programme without string Inbuilt Function
public class wAProRevStrWithoutUsingStringInbuiltFun {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str="Bhagyashri";
		StringBuilder str2=new StringBuilder();
		str2.append(str);
		str2=str2.reverse();
		System.out.println(str2);
	}

}
