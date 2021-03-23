import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class App {

    // Complete the solve function below.
    static void solve(double meal_cost, int tip_percent, int tax_percent) {
        final double parsed_tip_percent = ((double) tip_percent / 100) + 1;
        final double parsed_tax_percent = (double) tax_percent / 100;

        final double final_price = (meal_cost * parsed_tip_percent) + (meal_cost * parsed_tax_percent);

        System.out.println(Math.round(final_price));

    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        double meal_cost = scanner.nextDouble();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        int tip_percent = scanner.nextInt();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        int tax_percent = scanner.nextInt();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        solve(meal_cost, tip_percent, tax_percent);

        scanner.close();
    }
}
