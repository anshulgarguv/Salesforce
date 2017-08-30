trigger crossShip on SalesHeader__c (before insert,after insert) {
    if(trigger.isAfter && trigger.isInsert){
        case c;
        for(SalesHeader__c sh:trigger.new){
            if(sh.status__c=='open' && sh.totalamount__c>300){
                if((sh.BillToCity__c==sh.ShipToCity__c) || (sh.BillToStreet__c==sh.ShipToStreet__C) ||(sh.BillToState__c==sh.ShipToState__c)){
                c=new case();
                c.AccountId=sh.Account__c;
                c.contactId=sh.contact__c;
               // c.recordtype.name='Assignment';
               	c.origin='internal';
                c.ownerId='00G7F000000JZ1Y';
                c.reason='Unable to cross';
                c.status='new';
                c.type='Unable';
                c.subject=sh.Account__c + '' +c.type;
                c.SalesOpenOrder__c=(String)sh.Id;
                c.SalesOrderNumber__c=sh.Name;
                insert c;}
            }
            system.debug(c);
        }
    }
}