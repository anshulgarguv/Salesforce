public class Aggregate {
    public Aggregate(){
        show1();
    }
    public void show1(){
        List<AggregateResult> res=[select 
                           sum(amount) am,
                           CALENDAR_YEAR(CreatedDate) y 
                           from opportunity 
                           group by CALENDAR_YEAR(CreatedDate)];
		Map<Integer,Decimal> m=new Map<Integer,Decimal>();
		for(AggregateResult ar:res){
    			m.put((Integer)ar.get('y'),(Decimal)ar.get('am'));
		}
		for(Integer i:m.keyset()){
    			system.debug(i);
    			system.debug(m.get(i));
		}
    }
    public void show2(){
        	List<AggregateResult> r=[select count_distinct(name) x
                         from lead 
                         group by leadsource  
                         having count(name)>5];
			List<Integer> l=new List<Integer>();
			for(AggregateResult a:r){
    		l.add((Integer)a.get('x'));
		}
			for(Integer i:l){
    		system.debug(i);
		}
    }
    public void show3(){
        List<AggregateResult> lst=[select status,leadsource,count(name) countname from lead group by status,leadsource];
        Map<String,Integer> innerMap;
        Map<String,Map<String,Integer>> outerMap=new Map<String,Map<String,Integer>>();
        for(AggregateResult ar:lst){
            if(outerMap.containsKey((String)ar.get('status'))){
                innerMap=outerMap.get((String)ar.get('status'));
                innerMap.put((String)ar.get('LeadSource'),(Integer)ar.get('countname'));
                system.debug(outerMap);
                }
            else{
                outerMap.put((String)ar.get('status'),new Map<String,Integer>{(String)ar.get('LeadSource')=>(Integer)ar.get('countname')});
                system.debug(outerMap);
            }
        }
        system.debug('Result' + outerMap);
    }
}