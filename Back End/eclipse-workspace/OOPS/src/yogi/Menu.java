package yogi;

public class Menu {
	private String name;
	private float calories;
	private int time;
	private int bottles;
	private float price;
	

	
	public Menu(String name, float calories, int time, int bottles, float price) {
		super();
		this.name = name;
		this.calories = calories;
		this.time = time;
		this.bottles = bottles;
		this.price = price;
	}
	public void setName(String name){
	this.name=name;}
	public void setCalories(float calories){
	this.calories=calories;}
	public void setTime(int time) {
	this.time=time;}
	public void setBottles(int bottles){
	this.bottles=bottles;}
	public void setPrice(float price){
	this.price=price;}
	
	public String getName(){
	return name;}
	public float getCalories(){
	return calories;}
	public int getTime(){
	return time;}
	public int getBottles (){
	return bottles;}
	public float getPrice(){
	return price;}
	
	public String toString() {
		return name+" contains "+calories+" calories, comes with "+bottles+" bottles and price "+price; 
	}
	public String toCook() {
		return name+" cooks in "+time;
	}
}

