public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
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
  String forward = new String("");
  String backward = new String("");
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)))
    {
      forward = forward + word.substring(i, i+1);
    }
  }
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(word.length()-1-i)))
    {
      backward = backward + word.substring(word.length()-1-i, word.length()-i);
    }
  }
  if(forward.equalsIgnoreCase(backward))
  {
    return true;
  }
  return false;
}

