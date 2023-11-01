package test;

public class employee {
	private int age;
	private String name;
	private double salary;

    public employee(String name, int age, double basic, double hra, double da, double allowance) {
        this.name = name;
        this.age = age;
        this.salary = calSal(basic, hra, da, allowance);
    }
   
    public employee(String name, int age, double basic, double hra, double da) {
        this(name, age, basic, hra, da, 0.0);
    }
  
    private double calSal(double basic, double hra, double da, double allowance) {
        return basic + hra + da + allowance;
    }
  
    public void emp() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Salary: " + salary);
    }
}

