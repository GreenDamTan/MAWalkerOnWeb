package walker;
import walker.*;
public class WalkerRun {
	private Go g1;
	Thread t1;
	public void run(String[] args){
		g1 = new Go();
		g1.setArgs(args);
		t1 = new Thread(g1);
		t1.start();
	}
	public void stop(){
		try {
			
			t1.sleep(3000);
			t1.interrupt();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
	}

}
