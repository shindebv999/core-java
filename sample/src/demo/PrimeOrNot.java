package demo;

import java.util.Scanner;
//
//public class PrimeOrNot {
//public static void main(String[] args) {
////	System.out.println(isPrime(19));
////	System.out.println(isPrime(49));
//	Scanner scanner = new Scanner(System.in);
//    System.out.print("Enter a number: ");
//    int number = scanner.nextInt();
//
//    System.out.println("Is Prime? " + isPrime(number));
//
//    scanner.close();
//}
//	public static boolean isPrime(int n) {
//	if(n==0||n==1){
//		return false;
//	}
//	if(n==2){
//		return true;
//	}
//	for(int i=2;i<=n/2;i++){
//		if(n % i==0){
//			return false;
//			}
//		}
//	return true;
//}
//}

public class PrimeOrNot {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int number = scanner.nextInt();

        if (isPrime(number)) {
            System.out.println(number + " is a prime number.");
        } else {
            System.out.println(number + " is not a prime number.");
        }

        scanner.close();
    }

    public static boolean isPrime(int n) {
        if (n <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}

