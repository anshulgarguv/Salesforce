public class ReverseString{


public static void revString(String source){

String[] chars;
List<Integer> rb = new List<Integer>();
chars = source.split('');
for(Integer i=source.length();i>0;i--){

rb.add(source.charAt(i-1));
}
    system.debug(rb.size());
system.debug(String.fromCharArray(rb));
    if(String.fromCharArray(rb)==source){
        system.debug('Yes  it is palindrome');
    }
    else{
        system.debug('No');
    }
}
    
}