@isTest
private class crosssShipTest {
private static testMethod void positivecrossShip() {
    
        
        List<SalesHeader__c> listSalesHeaderRecord = new List<SalesHeader__c>();
        for(Integer i = 0 ; i < 100 ; i++ ){
    	SalesHeader__c objSalesHeaderRecord = new SalesHeader__c(status__c = 'Open',
                                   								totalamount__c = 400,
								                                BillToState__c = 'Haryana',
								                                BillToCity__c = 'Delhi',
								                                BillToStreet__c = 'TimesStreet'+i,
								                                ShipToState__c = 'Haryana',
								                                ShipToCity__c = 'Delhi',
								                                ShipToStreet__C = 'TimesStreet'+i );
        	listSalesHeaderRecord.add(objSalesHeaderRecord);
        }
        System.debug('Size of SalesHeaderlist == > '+listSalesHeaderRecord.size());
        List<Case> listCase = [Select Id From Case];
        Integer caseListSizeInitially = listCase.size();
        System.debug('Size of Initial Caselist == > '+caseListSizeInitially);
    
        
        System.Test.startTest();
        insert listSalesHeaderRecord;
        System.Test.stopTest();
        
        List<Case> listCase2 = [Select Id From Case];
        Integer caseListSize = listCase2.size();
        System.debug('Size of After Caselist == > '+caseListSize);
        
        System.assertEquals(100,caseListSize);
}
    private static testMethod void negativecrossShip() {
    
        
        List<SalesHeader__c> listSalesHeaderRecord = new List<SalesHeader__c>();
        for(Integer i = 0 ; i < 100 ; i++ ){
    	SalesHeader__c objSalesHeaderRecord = new SalesHeader__c(status__c = 'closed',
                                   								totalamount__c = 600,
								                                BillToState__c = 'Haryana',
								                                BillToCity__c = 'Delhi',
								                                BillToStreet__c = 'TimesStreet'+i,
								                                ShipToState__c = 'Haryana',
								                                ShipToCity__c = 'Delhi',
								                                ShipToStreet__C = 'TimesStreet'+i );
        	listSalesHeaderRecord.add(objSalesHeaderRecord);
        }
        System.debug('Size of SalesHeaderlist == > '+listSalesHeaderRecord.size());
        List<Case> listCase = [Select Id From Case];
        Integer caseListSizeInitially = listCase.size();
        System.debug('Size of Initial Caselist == > '+caseListSizeInitially);
    
        
        System.Test.startTest();
        insert listSalesHeaderRecord;
        System.Test.stopTest();
        
        List<Case> listCase2 = [Select Id From Case];
        Integer caseListSize = listCase2.size();
        System.debug('Size of After Caselist == > '+caseListSize);
        
        System.assertEquals(0,caseListSize);
}
}