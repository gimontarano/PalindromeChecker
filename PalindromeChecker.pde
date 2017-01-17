public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String back = new String();
  for(int i = 1; i < word.length()+1; i++)
  {
    String s = word.substring(word.length()-i, word.length()-i+1);
    if(s.equals(" ") || s.equals("!") || s.equals(",") || s.equals(".") || s.equals("'"))
    {
      back = back;
    }
    else
    {
      back = back + s;
    }
  }
  String forward = new String();
  for(int i = 1; i < word.length(); i++)
  {
    String s = word.substring(i,i+1);
    if(s.equals(" ") || s.equals("!") || s.equals(",") || s.equals(".") || s.equals("'"))
    {
      forward = forward;
    }
    else
    {
      forward = forward + s;
    }
  }
  if(back.equalsIgnoreCase(forward))
  {
    return true;
  }
  return false;
}


