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
        // Write code determining if this person's age is old and print the correct
        // statement:
        System.out.println(/* Insert correct print statement here */);
    }

    public void yearPasses() {
  		// Increment this person's age.
	}

public static void main(String[] args) {