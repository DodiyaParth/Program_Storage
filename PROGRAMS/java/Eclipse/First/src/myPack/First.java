package myPack;
import java.awt.*;

import javax.swing.*;
public class First
{
	static Container c;
	public static void main(String[] args)
	{
		System.out.println("Hello");
		JFrame frame=new JFrame();
		frame.setVisible(true);
		c=frame.getContentPane();
		c.setLayout(null);
		frame.setBounds(200,100,1000,700);
		
		JLabel lab=new JLabel("Hello Guys!!!");
		c.add(lab);
		lab.setBounds(200,300,250,50);
		lab.setFont(new Font("TimesNewRoman",Font.ROMAN_BASELINE,30));
		
		
	}

}
