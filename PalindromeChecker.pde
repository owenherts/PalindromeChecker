public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = noCapitals(word);
  String word3 = noSpaces(word2);
  String word4 = onlyLetters(word3);
  if(word4.equals(reverse(word4))){
    return true;
  } else{
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
    sNew = sNew + str.substring(i-1, i);
    }
    return sNew;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String str = "";
  for (int i = 0; i<sWord.length();i++){
    if(sWord.charAt(i) != ' '){
      str = str + sWord.charAt(i);
    }
  }
  return str;
}
public String onlyLetters(String sString){
  String str = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      str = str + sString.charAt(i);
    }
  }
  return str;
}


