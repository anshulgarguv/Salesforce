public class fibonnaci{
	public fibonnaci(){
	}
	public Static void  a(Integer n){
		Integer a=0;
		Integer b=1;
		Integer c;
		if(n==0)
		system.debug(a);
		for(Integer i=2;i<=n;i++){
		c=a+b;
		a=b;
		b=c;
		system.debug(b);}

	}
    public static void prime(Integer n){
        Integer count=0;
        for(Integer i=2;i*i<n;i++){
            if(Math.mod(n,i)==0){
                count++;
                system.debug('Number is not prime');
                break;
            }
            
        }
        if(count==0){
                system.debug('Number is prime');
            }
    }
}