public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  if(word.equals(reverse(word)))
  return true;
  else
  return false;
}
public String reverse(String str)
{
    String lul = new String();
    for(int i = str.length()-1; i >= 0; i--)
      lul = lul + str.substring(i,i+1);
    return lul;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String res = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if(!sWord.substring(i,i+1).equals(" "))
      res = res + sWord.substring(i,i+1);
  }
  return res;
}

public String onlyLetters(String sString){
  String res = new String();
  for(int i = 0; i< sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true)
    res = res + sString.substring(i,i+1);
  }
  return res;
}
