package com;


public class App 
{
    public static void main( String[] args )
    {
    	ToDoList toDoList = new ToDoList();
		Menu menu = new Menu();
		
		do {
			menu.printMenu();
			switch (menu.getUserResponse()) {
			case 1:
				toDoList.addItem();
				break;

			case 2:
				toDoList.removeItem();
				break;
			case 3:
				toDoList.displayItems();
				break;
			case 4:
				System.out.print("Thanks for using the program!");
				break;

			}
			
		} while (menu.getUserResponse() != 4);
		
		
		
    }
}
