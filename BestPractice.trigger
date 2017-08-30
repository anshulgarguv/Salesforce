trigger BestPractice on Contact (before insert) {
    if(checkRecursive.isFirstRun()){
			if(trigger.isBefore && trigger.isInsert){
               List<Account> listAccount=[select Email__c from Account where Email__c != null];
                system.debug(listAccount);
                for(Contact c:Trigger.new){
                    if(c.Email!=null){
                    String[] contactsplitted=c.Email.split('@');
                    String[] contactdotsplitted=contactsplitted[1].split('.com');
                    for(Account a:listAccount){
                        String[] accountsplitted=a.Email__c.split('@');
                        String[] accountdotsplitted=accountsplitted[1].split('.com');
                        if(contactdotsplitted[0]==accountdotsplitted[0]){
                            c.AccountId=a.Id;
                        }
                    }
                    }}
            }}
}