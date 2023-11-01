package work;
import java.util.*;

public class Studentss {
	private HashMap<String, String> stuNames = new HashMap<>();
    public void setNames() {
        stuNames.put("1", "Yogi");
        stuNames.put("2", "Siva");
        stuNames.put("3", "Babu");
    }
    public void printNames() {
        for (Map.Entry<String, String> entry : stuNames.entrySet()) {
            System.out.println("Roll No: " + entry.getKey() + ", Name: " + entry.getValue());

        }
    }
    public void getName(String key) {
        if (stuNames.containsKey(key)) {
            System.out.println("Name for Roll No " + key + ": " + stuNames.get(key));
        } else {
            System.out.println("Roll No " + key + " not found");
        }
    }
    public void printNamesKeySet() {
        Set<String> keys = stuNames.keySet();
        for (String key : keys) {
            System.out.println("Name: " + stuNames.get(key));
        }
    }
    public void printSize() {
        System.out.println("Size of the HashMap: " + stuNames.size());
    }
    public void remove(String key) {
        if (stuNames.containsKey(key)) {
            stuNames.remove(key);
            System.out.println("Roll No " + key + " has been removed");
        } else {
            System.out.println("Roll No " + key + " not found");
        }
    }
}
