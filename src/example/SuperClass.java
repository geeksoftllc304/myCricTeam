package example;

public class SuperClass {
	
	public static int a=1;
	public static  int b=2;
	public static  int c = 3;
	 public int d = 4;
	
	private final int addPrivate() {
		
		return 1+2;
	}

	
	public static int addPublic() {
		SuperClass s = new SuperClass();
		s.d = 2;
		return 1+2;
	}
	
	public final int addPublic(int a) {
		return 1+2;
	}
	
	 final int addDefault() {
		return 1+2;
	}
	
	protected final int addProtected() {
		return 1+2;
	}
}
