import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

class Test2
{
	public static void main(String args[])
	{
		JFrame frame=new JFrame();
		Container c=frame.getContentPane();
		c.setLayout(null);
		frame.setBounds(100,100,500,300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
		
		JButton jb=new JButton("hello From the other side...!");
		c.add(jb);
		jb.setBounds(50,50,200,30);
		jb.setFont(new Font("Arial",Font.BOLD,13));
		jb.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
				jb.setBackground(Color.WHITE);
				jb.setText("Pressed!");
			}
		});
	}
}