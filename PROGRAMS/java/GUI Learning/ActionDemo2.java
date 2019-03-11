import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
class ActionDemo2
{
	
	public static void main(String args[])
	{
		JFrame frame=new JFrame("Color background");
		frame.setVisible(true);
		frame.setBounds(200,100,1000,600);
		Container c=frame.getContentPane();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLayout(null);
		
		JButton yellow=new JButton("Yellow");
		JButton blue=new JButton("Blue");
		
		c.add(yellow);
		c.add(blue);
		
		yellow.setBounds(390,285,100,30);
		blue.setBounds(510,285,100,30);
		
		yellow.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e)
			{
				c.setBackground(Color.YELLOW);
			}
		});
		blue.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e)
			{
				c.setBackground(Color.BLUE);
			}
		});
	}
}