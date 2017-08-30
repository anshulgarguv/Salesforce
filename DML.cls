public class DML {
    public DML(){
        insertR();
    }
    public void insertR(){
		List<Lead> lstLead=new List<Lead>();
		
		for(Integer i=210;i<240;i++){
            if(i<225){
    	Lead ld=new Lead(lastname='John'+string.valueof(i),company='Eternus'+string.valueof(i),status='closed');
                lstLead.add(ld);}
            else{
                Lead NotIns=new Lead(lastname='john' +(i+100),company='',status='');
                lstlead.add(NotIns);
            }
		}
        Database.SaveResult[] sr=Database.insert(lstlead,false);
		List<Log__c> lo=new List<Log__c>();
        for(Database.SaveResult s:sr){
            if(s.isSuccess()){
                Log__c lo1=new Log__c(error__c='success');
                lo.add(lo1);
                system.debug('success');
            }
            else{
                for(Database.Error err:s.getErrors()){
                    Log__c lo2=new Log__c(error__c=err.getMessage());
                    lo.add(lo2);
                    
                    System.debug('Fail' + err.getMessage());
                }
                
            }
        }
        insert lo;
        
	}
    public void del(){
        datetime dt=date.today()-20;
		List<Account> lstAcct=new List<Account>();
		for(Account a:[select name,id from account where LastModifiedDate<:dt])
		{
    		lstAcct.add(a);
		}
		for(Account x:lstAcct){
   			 system.debug(x.name);
		}
	delete lstAcct;
    }
    public void create(){
        
    }
}