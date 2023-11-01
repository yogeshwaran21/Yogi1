package yogi;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

public class Stream {

	public static void main(String[] args) {
		List<Integer> num=new ArrayList<Integer>();
		num.add(12);
		num.add(22);
		num.add(32);
		num.add(13);
		num.add(11);
		
		double avg= num.stream().mapToDouble(Integer::doubleValue).average().getAsDouble();

	}

}
