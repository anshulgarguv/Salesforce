@isTest
public class RecordCloneTest {
	static testMethod void positiveopportunityInsertTest() {
        
        List<Opportunity> listOpportunity = new List<Opportunity>();
        for(Integer i = 0 ; i < 100 ; i++){
        	
        	Opportunity objectOpportunity = new Opportunity(Name='Demo Opportunity'+i,
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1));
                                       
           listOpportunity.add(objectOpportunity);                      
        	
        }
        
        System.Test.startTest();
        insert listOpportunity;
        System.Test.stopTest();
        
         List<Opportunity> objectOppNew = [select id from Opportunity];
         Integer objectRecordCount = objectOppNew.size();
         System.assertEquals(200,objectRecordCount);

    }
    
}