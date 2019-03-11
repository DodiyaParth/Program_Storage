package questions;
import javax.swing.*;

class Functions
{
	static String func1(String k)
	{
		long a = 0;
		try
		{
		int m=Integer.parseInt(k);
		a = (long) Math.pow(m/10, m%10);
		}
		catch(Exception e)
		{
			//Exception
		}
		return Long.toString(a);
	}
	
	static String func3(String k)
	{
		int sum=0;
		try
		{
			for(char x: k.toCharArray())
			{
				sum+=Math.pow((int)x-'0',2);
			}
		}
		catch(Exception e)
		{
			//exception
		}
		return String.valueOf(sum);
	}
	
	static String func5(String k)
	{
		int m= 0;
		int count=1;
		try
		{
			m=Integer.parseInt(k);
			for(int i=1;i<=m/2;i++)
			{
				if(m%i==0)
				{
					count++;
				}
			}
		}
		catch(Exception e)
		{
			//exception
		}
		return String.valueOf(count);
	}
}

class Test1
{
	public static void main(String args[])
	{
		String in;
		int i;
		String option[]= {"pow 2 digit","sum of square of digit","no of factors"};
		while(true)
		{
			Object[] options = null;
			i=JOptionPane.showOptionDialog(null, "Click OK to continue", "Warning",JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE,null, options, options[0]);
			in=JOptionPane.showInputDialog("Input int");
			if(i==0)
			{
				Functions.func1(in);
			}
			else if(i==1)
				Functions.func3(in);
			else if(i==2)
				Functions.func5(in);
			else
				return;
		}
	}
}






