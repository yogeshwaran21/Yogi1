package Yogi;

public class Book {
	private int bookNo;
	private String author;
	private String title;
	private float price;
	
	public Book() {
		this.bookNo=1;
		this.title="KAMBAN";
		this.author="RAMAYANAM";
		this.price=800;
	
	boolean True=false;
	if(title.length()<4 && (price<1 || price>5000)){
		True=true;
	}
    if(True)
    	System.out.println("Invalid");
    else
    	return;	
	}
	public void setBookNo(int bookNo){
	this.bookNo=bookNo;}
	public void setAuthor(String author){
	this.author=author;}
	public void setTitle(String title){
	this.title=title;}
	public void setPrice(float price){
	this.price=price;}
	
	public int getBookNo(){
	return bookNo;}
	public String getAuthor(){
	return author;}
	public String getTitle(){
	return title;}
	public float getPrice(){
	return price;}	
}
