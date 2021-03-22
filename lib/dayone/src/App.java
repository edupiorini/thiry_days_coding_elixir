
import java.util.*;

public class App {

    public static void main(String[] args) {
        int i = 4;
        double d = 4.0;
        String s = "HackerRank ";

        Scanner scan = new Scanner(System.in);

        /* Declare second integer, double, and String variables. */
        System.out.println("Inteiro:");
        int integer = scan.nextInt();

        System.out.println("Double:");
        double dec = scan.nextDouble();

        scan.nextLine();
        System.out.println("String:");
        String string = scan.nextLine();

        /* Read and save an integer, double, and String to your variables. */
        // Note: If you have trouble reading the entire String, please go back and
        // review the Tutorial closely.

        /* Print the sum of both integer variables on a new line. */
        System.out.println(i + integer);
        System.out.println(d + dec);
        System.out.println(s + string);

        /* Print the sum of the double variables on a new line. */

        /*
         * Concatenate and print the String variables on a new line; the 's' variable
         * above should be printed first.
         */

        scan.close();
    }
}