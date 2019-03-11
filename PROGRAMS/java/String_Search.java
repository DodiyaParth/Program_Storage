import java.util.Scanner;
import java.util.*;
import java.io.File;
//import java.lang.ArrayList;
class String_Search
{
	static Scanner obj;
	static ArrayList<String> bestmatch;
	public static void main(String args[])
	{
		File file=new File("cmpname.txt");
		bestmatch=new ArrayList<String>();
		
		try{
		obj=new Scanner(file);
		}catch(Exception e)
		{
			//System.out.println(e.getMessage);
			return;
		}
		int i;
		Scanner scn=new Scanner(System.in);
		System.out.println("Enter a String");
		String search=scn.nextLine();
		int cm;
		for(i=0;i<1146;i++)
		{	
			String s=obj.nextLine();
			System.out.println(s);
			cm=0;
			for(char j:search.toCharArray())
			{
				for(char k:s.toCharArray())
				{
					if(j==k)
					{
						cm++;
					}
				}
			}
			if(cm>(0.7*search.length()))
			{	
				bestmatch.add(s);
			}
			System.out.println("  "+cm);
			
		}
		System.out.println("Total found: "+bestmatch.size());
	}
}