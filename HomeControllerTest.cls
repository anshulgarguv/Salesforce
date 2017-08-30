@isTest
public class HomeControllerTest {
    public static testmethod void searchPositive(){
       // List<List<SObject>> listOfObj=new List<List<SObject>>();
        List<Account> listAcct=new List<Account>();
        List<Opportunity> listOpportunity=new List<Opportunity>();
        List<Lead> listLead=new List<Lead>();
        List<Contact> listContact=new List<Contact>();
        Account a=new Account(Name='xyz');
        Lead l=new Lead(LastName='xyz',company='Google',status='closed-converted');
        Opportunity o=new Opportunity(Name='xyz',Closedate=System.today(),stagename='prospecting');
        Contact c=new Contact(LastName='xyz');
        insert a;
        insert l;
        insert o;
        insert c;
        //System.assert(false,[select id,name from Account]);
        
        System.Test.startTest();
        HomeController firstInstance=new HomeController();
        List<Id> fixedSearchResults=new List<Id>();
        fixedSearchResults.add(a.Id);
        fixedSearchResults.add(l.Id);
        fixedSearchResults.add(o.Id);
        fixedSearchResults.add(c.Id);
        Test.setFixedSearchResults(fixedSearchResults);
        firstInstance.controllerQuery='yz';
        
        firstInstance.executeSearch();
		System.assertEquals(4,firstInstance.listOfObj.size());
        System.Test.stopTest();
        
    }
    public static testmethod void searchNegative(){
        //List<List<SObject>> listOfObj=new List<List<SObject>>();
        List<Account> nlistAcct=new List<Account>();
        List<Opportunity> nlistOpportunity=new List<Opportunity>();
        List<Lead> nlistLead=new List<Lead>();
        List<Contact> nlistContact=new List<Contact>();
        Account a=new Account(Name='xyz');
        Contact c=new Contact(LastName='xyz');
        Lead l=new Lead(LastName='abc',company='Google',status='closed-converted');
        Opportunity o=new Opportunity(Name='abc',Closedate=System.today(),stagename='prospecting');
        insert a;
        insert c;
        insert l;
        insert o;
        System.Test.startTest();
         HomeController firstInstance=new HomeController();
        List<Id> fixedSearchResults=new List<Id>();
        fixedSearchResults.add(a.Id);
        fixedSearchResults.add(c.Id);
        Test.setFixedSearchResults(fixedSearchResults);
        firstInstance.controllerQuery='yz';
        firstInstance.executeSearch();
		System.assertEquals(0,firstInstance.listOfObj[2].size());
        System.Test.stopTest();
        
    }
}