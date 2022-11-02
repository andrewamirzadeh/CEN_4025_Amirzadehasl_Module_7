package com;

import java.util.ArrayList;
import java.util.Scanner;

public class ToDoList {
	Scanner input = new Scanner(System.in);
	
	private int tdListId;
	private ArrayList<String> toDoListItems;

	public ArrayList<String> getToDoListItems() {
		return toDoListItems;
	}

	public void setToDoListItems(ArrayList<String> toDoListItems) {
		this.toDoListItems = toDoListItems;
	}
	
	
	public void addItem() {
		System.out.println("Type your To Do list item: ");
		toDoListItems.add(input.nextLine());
	}
	
	public void removeItem() {
		toDoListItems = null;
		System.out.println("Item has been removed!");
	}
	
	
	public void displayItems() {
		if (toDoListItems.size() == 0) {
			System.out.println("There are no items in your to do list!");
		} else {
				System.out.println(toDoListItems);
				
		}
	}

	public int getTdListId() {
		return tdListId;
	}

	public void setTdListId(int tdListId) {
		this.tdListId = tdListId;
	}
	
	
	
	
}

