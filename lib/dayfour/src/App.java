import java.io.*;
import java.util.*;

public class App {
    private int age;

    public App(int initialAge) {
        if (initialAge < 0) {
            System.out.println("Age is not valid, setting age to 0.");
            this.age = 0;
        } else
            this.age = initialAge;
    }

    public void amIOld() {
        String message;
        if (this.age < 13)
            message = "You are young.";
        else if (this.age >= 13 && this.age < 18)
            message = "You are a teenager.";
        else
            message = "You are old.";

        System.out.println(message);
    }

    public void yearPasses() {
        this.age++;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int T = sc.nextInt();
        for (int i = 0; i < T; i++) {
            int age = sc.nextInt();
            App p = new App(age);
            p.amIOld();
            for (int j = 0; j < 3; j++) {
                p.yearPasses();
            }
            p.amIOld();
            System.out.println();
        }
        sc.close();
    }
}