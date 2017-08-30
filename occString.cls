public class occString{


	public static void revString(String source){

				String[] chars;
				Integer ch;
				Map<String,Integer> m=new Map<String,Integer>();
				chars = source.split('');
				for(Integer i=0;i<source.length();i++){
						Integer count=0;
						ch=source.charAt(i);
						for(Integer j=0;j<source.length();j++){
							if(ch==source.charAt(j)){
									count=count+1;
									}
						}
                    	m.put(String.fromCharArray(new List<integer> { ch }),count);
						system.debug(String.fromCharArray(new List<integer> { ch })+'-'+count);
                }
        	system.debug(m);

}
}