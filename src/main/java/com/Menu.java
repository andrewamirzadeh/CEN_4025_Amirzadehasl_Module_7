package com;
import java.util.Scanner;

public class Menu {
	int userResponse;
	Scanner input = new Scanner(System.in);

	public int getUserResponse() {
		return userResponse;
	}

	public void setUserResponse(int userResponse) {
		this.userResponse = userResponse;
	}
	public String printMenu2() {
		return "----Main Menu---- \n\n(1). Add a To Do List Item. \n(2). Delete a To Do List Item. \n"
				+ "(3). List To Do Items \n(4). Exit\n";
	}
	
	public int printMenu() {
		do {
			try {
				System.out.print("----Main Menu---- \n\n(1). Add a To Do List Item. \n(2). Delete a To Do List Item. \n"
						+ "(3). List To Do Items \n(4). Exit\n");
				userResponse = Integer.parseInt(input.next());
				if (userResponse < 1 || userResponse > 4) {
					System.out.print("Enter a value of 1 to 4. \n");
				}
			} catch (Exception E) {
				System.out.print("Please enter a valid value. \n");
			}
		} while (userResponse < 1 || userResponse > 4);

		return userResponse;
	}
	
	
}
