@isTest
public class BestPracticeTest {
    public static testmethod void positiveBestPracticeTest(){
        Account aa=new Account(Name='Anshul',Email__c='a@g.com');
        insert aa;
        List<Contact> listContact=new List<Contact>();
        for(Integer i=0;i<100;i++){
            Contact c=new Contact(LastName='Anshul',Email='b@g.com');
            listContact.add(c);
        }
        insert listContact;
        String[] accountsplitted=aa.Email__c.split('@');
        String[] accountdotsplitted=accountsplitted[1].split('.com');
        for(Contact c:listContact ){
            String[] contactsplitted=c.Email.split('@');
           	String[] contactdotsplitted=contactsplitted[1].split('.com');
            System.assert(contactdotsplitted==accountdotsplitted);
            break;
        }
    }
    
    public static testmethod void negativeBestPracticeTest(){
        Account aa=new Account(Name='Anshul',Email__c='a@x.com');
        insert aa;
        List<Contact> listContact=new List<Contact>();
        for(Integer i=0;i<100;i++){
            Contact c=new Contact(LastName='Anshul',Email='b@g.com');
            listContact.add(c);
        }
        insert listContact;
        String[] accountsplitted=aa.Email__c.split('@');
        String[] accountdotsplitted=accountsplitted[1].split('.com');
        for(Contact c:listContact ){
            String[] contactsplitted=c.Email.split('@');
           	String[] contactdotsplitted=contactsplitted[1].split('.com');
            System.assert(contactdotsplitted!=accountdotsplitted);
            break;
        }
    }
    
}