public class Replace{


public static void rep(String source){

String[] chars=source.split('');
List<Integer> rb = new List<Integer>();



for(Integer i=0;i<source.length();i++){

if(source.charAt(i)==64){
rb.add(65);
}else{
rb.add(source.charAt(i));
}
}
system.debug(String.fromCharArray(rb));
String sub=String.fromCharArray(rb).substring(11,27);
system.debug(sub);
    String withoutSpaces=sub.replaceAll('\\s+','');
    system.debug(withoutSpaces);

String[] splitted=sub.split(' ');
system.debug(splitted);
system.debug(sub.touppercase());
system.debug(sub.tolowercase());
}
}