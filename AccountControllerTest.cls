@isTest
public class AccountControllerTest {
    public static testmethod void Positive(){
        List<Opportunity> olist=new List<Opportunity>();
        List<Contact> clist=new List<Contact>();
        Account a=new Account(Name='Anshul');
        insert a;
        Opportunity o=new Opportunity(AccountId=a.id,Name='Anshul',Closedate=System.today()+1,stagename='prospecting');
        Contact c=new Contact(AccountId=a.id,LastName='Anshul');
       AccountController firstInstance=new AccountController();
        System.Test.startTest();
        clist.add(c);
        olist.add(o);
        
        insert clist;
        insert olist;
        firstInstance.recId=a.Id;
        firstInstance.getcontacts();
        //System.assert(false,firstInstance.contacts.size());
      // System.assert(false,firstInstance.contacts.size());
       System.assertEquals(1,firstInstance.contacts.size());
       System.assertEquals(1,firstInstance.opp.size());
        System.Test.stopTest();
    }
    public static testmethod void Negative(){
        List<Opportunity> olist=new List<Opportunity>();
        List<Contact> clist=new List<Contact>();
        Account a=new Account(Name='Anshul');
        insert a;
        Contact c=new Contact(AccountId=a.id,LastName='Anshul');
       AccountController firstInstance=new AccountController();
        System.Test.startTest();
        clist.add(c);
        
        insert clist;
        firstInstance.recId=a.Id;
        firstInstance.getcontacts();
        System.assertEquals(1,firstInstance.contacts.size());
       System.assertEquals(0,firstInstance.opp.size());
        System.Test.stopTest();
    }
}