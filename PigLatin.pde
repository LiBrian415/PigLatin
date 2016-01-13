import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int n = 0; n< sWord.length()-1; n++)
	{
	 if(sWord.substring(n,n+1).equals("a"))
	 	return n;
	 if(sWord.substring(n,n+1).equals("e"))
	 	return n;
	 if(sWord.substring(n,n+1).equals("i"))
	 	return n;
	 if(sWord.substring(n,n+1).equals("o"))
	 	return n;
	 if(sWord.substring(n,n+1).equals("u"))
	 	return n;
	return -1;
	}
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(sWord.substring(0,2)=="qu")
	{
		return sWord.substring(2) + "quay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord >=1))
	{
		return sWord +"ay";
	}
	else
	{
		return "ERROR!";
	}
}
