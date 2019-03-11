import javax.swing.*;
import java.awt.*;

class First 
{
	public static void main(String args[])
	{
		JFrame frame=new JFrame();
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocation(100,100);
		frame.setSize(500,500);
		frame.setTitle("First java GUI");
		ImageIcon icon = new ImageIcon("ICON.png");
		frame.setIconImage(icon.getImage());
		Container c=frame.getContentPane();
		c.setBackground(Color.RED);
		frame.setResizable(false);
	}
}