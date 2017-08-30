trigger campMember on CampaignMember (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        List<CampaignMember> cm=new List<CampaignMember>(trigger.new);
        List<Lead> leadList=[select id from Lead where RSVP__c=true];
        List<CampaignMember> listCM=[select RSVP__c,LeadId,Id,CampaignId from CampaignMember];
        List<CampaignMember> cmToBeUpdated=new List<CampaignMember>();
        for(CampaignMember c:cm){
            	
    }
        update cmToBeUpdated;
        system.debug(cmToBeUpdated);
}
}