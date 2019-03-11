import javax.swing.*;
import java.awt.*;

class Second 
{
	public static void main(String args[])
	{
		JFrame frame=new JFrame();
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocation(100,100);
		frame.setSize(600,600);
		frame.setTitle("First java GUI");
		ImageIcon icon = new ImageIcon("ICON.png");
		frame.setIconImage(icon.getImage());
		Container c=frame.getContentPane();
		Color clr=new Color(77,184,255);
		c.setBackground(clr);
		JLabel label=new JLabel("Hi there Everybody!!!");
		c.add(label);
		c.setLayout(null);
		label.setBounds(30,40,500,35);
		
		label.setText("Yannaitike!");
		ImageIcon img=new ImageIcon("NITK.png");
		JLabel nitk=new JLabel(img);
		c.add(nitk);
		nitk.setBounds(15,65,img.getIconWidth(),img.getIconHeight());
		
		Font f=new Font("TimesNewRoman",Font.ITALIC,30);
		label.setFont(f);
		
		Cursor cur=new Cursor(Cursor.CROSSHAIR_CURSOR);
		
		ImageIcon arjun=new ImageIcon("Arjun.jpeg");
		JLabel pic=new JLabel("A R J U N",arjun,JLabel.LEFT);
		pic.setBounds(0,0,arjun.getIconWidth(),arjun.getIconHeight());
		c.add(pic);
		
		JTextField myText=new JTextField();
		c.add(myText);
		myText.setBounds(100,400,200,30);
		Font fo=new Font("TimesNewRoman",Font.BOLD,15);
		myText.setBackground(Color.YELLOW);
		myText.setForeground(Color.BLUE);
		ImageIcon google=new ImageIcon("Google.png");
		JButton btn=new JButton(google);
		c.add(btn);
		btn.setCursor(cur);
		//btn.setBackground(new Color(255, 51, 204));
		btn.setBounds(100,435,google.getIconWidth(),google.getIconHeight());
		btn.setBackground(clr);
	}
}