package streamdemo;
import java.util.stream.Stream;
import java.util.ArrayList;
import java.util.List;

public class streammdemo {

    public static void main(String[] args) {
        List<Integer> num = new ArrayList<Integer>();
        num.add(12);
        num.add(22);
        num.add(32);
        num.add(13);
        num.add(11);

        double avg = num.stream().mapToDouble(Integer::doubleValue).average().orElse(0.0);

        System.out.println("Average: " + avg);
    }
}
