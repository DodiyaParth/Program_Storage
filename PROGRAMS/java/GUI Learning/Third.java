import javax.swing.*;
import java.awt.*;
import java.util.Scanner;

class Third
{
	public static void main(String args[])
	{
		Scanner scan=new Scanner(System.in);
		System.out.println("Enter a Integer: ");
		int k=scan.nextInt();
		
		JFrame frame=new JFrame();
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setTitle("Test Application");
		frame.setBounds(100,100,800,800);
		Container c=frame.getContentPane();
		c.setLayout(null);
		
		JLabel text1=new JLabel("Pattern:");
		c.add(text1);
		Font f=new Font("Arial",Font.BOLD,20);
		text1.setBounds(10,10,500,30);
		String m="*";
		JLabel[] a=new JLabel[k];
		int i,j;
		Font fl=new Font("Arial",Font.BOLD,10);
		for(i=0;i<k;i++)
		{
			a[i]=new JLabel(m);
			m+="*";
			c.add(a[i]);
			a[i].setLocation(10,30+i*15);
			a[i].setSize(k*4,12);
			a[i].setFont(fl);
			
		}
		
		ImageIcon icon=new ImageIcon("ICON1.png");
		frame.setIconImage(icon.getImage());
	}
}