import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

class MyFrame extends JFrame implements ActionListener
{
	JButton btn=new JButton("Yellow");
	JButton btn1=new JButton("Blue");
	Container c;
	MyFrame()
	{
		c=this.getContentPane();
		c.setLayout(null);
		btn.setBounds(100,80,100,25);
		btn1.setBounds(210,80,100,25);
		btn.addActionListener(this);
		btn1.addActionListener(this);
		c.add(btn);
		c.add(btn1);
	}
	public void actionPerformed(ActionEvent e)
	{
		if(e.getSource()==btn)
			c.setBackground(Color.YELLOW);
		else if(e.getSource()==btn1)
			c.setBackground(Color.BLUE);
	}
}


class ActionDemo
{
	public static void main(String args[])
	{
		MyFrame frame=new MyFrame();
		frame.setTitle("Hello people!");
		frame.setVisible(true);
		frame.setDefaultCloseOperation(frame.EXIT_ON_CLOSE);
		frame.setBounds(300,200,410,225);
	}
}