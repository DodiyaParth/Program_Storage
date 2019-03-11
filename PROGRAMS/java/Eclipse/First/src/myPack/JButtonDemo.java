package myPack;

import java.awt.*;
import java.awt.event.*;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.JToggleButton;

@SuppressWarnings("serial")
public class JButtonDemo extends JFrame implements ActionListener
{
	Container c;
	JLabel lblNewLabel;
	JToggleButton jtb;
	public static void main(String[] args)
	{
		EventQueue.invokeLater(new Runnable()
		{
			public void run()
			{
				try
				{
					JButtonDemo frame = new JButtonDemo();
					frame.setVisible(true);
				} catch (Exception e)
				{
					e.printStackTrace();
				}
			}
		});
	}

	public JButtonDemo()
	{
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 452, 371);
		c = new JPanel();
		c.setBounds(100,100,1000,600);
		setContentPane(c);
		c.setLayout(null);
		
		JButton hourglass = new JButton("horglass");
		hourglass.addActionListener(this);

		hourglass.setBounds(29, 13, 162, 94);
		c.add(hourglass);
		
		JButton analog = new JButton("analog");
		analog.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		analog.setBounds(238, 13, 170, 94);
		analog.addActionListener(this);
		c.add(analog);
		
		JButton digital = new JButton("digital");
		digital.setBounds(29, 131, 162, 94);
		digital.addActionListener(this);
		c.add(digital);
		
		JButton stopwatch = new JButton("stopwatch");
		stopwatch.setBounds(238, 131, 170, 94);
		stopwatch.addActionListener(this);
		c.add(stopwatch);
		
		lblNewLabel = new JLabel("Choose a timepiece");
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setBounds(82, 238, 246, 16);
		c.add(lblNewLabel);
		
		jtb = new JToggleButton("Backlight");
		jtb.setBounds(141, 267, 137, 25);
		c.add(jtb);
		c.setVisible(true);
		jtb.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(jtb.isSelected()) 
				{
					lblNewLabel.setText("On");
					c.setBackground(Color.YELLOW);
				}
				else
				{
					lblNewLabel.setText("Off");
					c.setBackground(Color.GRAY);
				}
			}
		});
		
	}

	@Override
	public void actionPerformed(ActionEvent e)
	{
		lblNewLabel.setText("You Selected "+e.getActionCommand());
		
	}
}
