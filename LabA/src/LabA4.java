
public class LabA4 {
	
	public static void main(String[] args) {
//		int x = Integer.parseInt(args[0]);
		
	
//		System.out.println(Integer.toBinaryString(x));	

//		System.out.printf("One shift: ");
//		System.out.printf(Integer.toBinaryString(x << 1) + " ");
//		System.out.println(x << 1);
//		
//		System.out.println(x << 1);
//		System.out.printf(Integer.toBinaryString(x >> 1) + " ");
//		
//		System.out.println(x >>> 1);
//		System.out.printf(Integer.toBinaryString(x >> 1) + " ");
//		System.out.println(x >> 1);
//		
//		System.out.println("Two shift: ");
//        System.out.print(Integer.toBinaryString(x << 2) + " ");
//        System.out.println(x << 2);
//        System.out.print(Integer.toBinaryString(x >>> 2) + " ");
//        System.out.println(x >>> 2);
//        System.out.print(Integer.toBinaryString(x >> 2) + " ");
//        System.out.println(x >> 2);


		int x = Integer.parseInt(args[0]);
		//int y = Integer.parseInt(args[1]);
		
        System.out.println(Integer.toBinaryString(x));
        
     
        System.out.println("One shift:");
        System.out.print(Integer.toBinaryString(x << 1) + " ");
        System.out.println(x << 1);
        System.out.print(Integer.toBinaryString(x >>> 1) + " ");
        System.out.println(x >>> 1);
        System.out.print(Integer.toBinaryString(x >> 1) + " ");
        System.out.println(x >> 1);

        
        System.out.println("Two shift:");
        System.out.print(Integer.toBinaryString(x << 2) + " ");
        System.out.println(x << 2);
        System.out.print(Integer.toBinaryString(x >>> 2) + " ");
        System.out.println(x >>> 2);
        System.out.print(Integer.toBinaryString(x >> 2) + " ");
        System.out.println(x >> 2);

	}

}
