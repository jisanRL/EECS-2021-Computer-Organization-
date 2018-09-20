
public class LabA6 {
	
	public static void main(String[] args) {
		
	int x = Integer.parseInt(args[0]);
	System.out.println(Integer.toBinaryString(x) + "\t(x)");
	
//	int z = x << 21;    // make bit #10 the MSb 
//	z = z >>> 31;       // make bit #10 the LSb 
	
	x |= 1 << 10;
	System.out.println(Integer.toBinaryString(x) + "\t(bit #10 set)");
	
	x &= ~(1 << 11);
	
//	int mask = 1024; 
//	int y = x & mask; 
//	y = y >> 10; 
	System.out.println(Integer.toBinaryString(x) + "\t(bit #11 cleared)");
	
	}	
}
