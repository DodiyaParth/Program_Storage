package myPack;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

class Second
{
	private static JTextField jt;
	private static JLabel jb;
	private static JButton btnSet;

	public static void main(String args[])
	{
		JFrame frame=new JFrame();
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocation(100,100);
		frame.setSize(500,500);
		frame.setTitle("First java GUI");
		final Container c=frame.getContentPane();
		c.setBackground(Color.CYAN);
		frame.getContentPane().setLayout(null);
		
		btnSet = new JButton("Submit");
		btnSet.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String s=jt.getText();
				jb.setText(s);
			}
		});
		btnSet.setBounds(106, 89, 271, 100);
		frame.getContentPane().add(btnSet);
		frame.setResizable(false);
		
		jt = new JTextField();
		jt.setSize(373, 25);
		jt.setLocation(68, 40);
		c.add(jt);
		jt.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				jb.setText(jt.getText());
				//btnSet.setPressedIcon(new ImageIcon("ICON.png"));
			}
		});
		jt.setBackground(Color.YELLOW);
		
		jb = new JLabel();
		jb.setFont(new Font("Old English Text MT", Font.ITALIC, 17));
		jb.setSize(407, 100);
		jb.setLocation(36, 206);
		c.add(jb);
		
		
		
	}
}