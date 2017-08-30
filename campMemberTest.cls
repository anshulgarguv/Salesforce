@isTest
public class campMemberTest {
    static testmethod void positivecampMemberTrigger(){
        List<Lead> leadList=new List<Lead>();
        for(Integer i=0;i<99;i++){
            Lead leadObj=new Lead();
            leadObj.LastName='tyrion'+i;
            leadObj.RSVP__c=True;
            leadObj.Company='Acer';
            leadList.add(leadObj);
        }
        insert leadList;
        Campaign campObj=new Campaign(Name='Offer',IsActive=True);
        insert campObj;
        List<CampaignMember> listCampMember=new List<CampaignMember>();
        for(Lead leadListInstance:leadList){
            CampaignMember campMemberObj=new CampaignMember(LeadId=leadListInstance.ID,status='sent',campaignId=campObj.Id);
            listCampMember.add(campMemberObj);
        }
        System.Test.startTest();
        insert listCampMember;
        System.Test.stopTest();
    }
    static testmethod void negativecampMemberTrigger(){
        List<Lead> leadList=new List<Lead>();
        for(Integer i=0;i<100;i++){
            Lead leadObj=new Lead();
            leadObj.LastName='tyrion'+i;
            leadObj.Company='Acer';
            leadList.add(leadObj);
        }
        insert leadList;
        Campaign campObj=new Campaign(Name='Offer',IsActive=True);
        insert campObj;
        List<CampaignMember> listCampMember=new List<CampaignMember>();
        for(Lead leadListInstance:leadList){
            CampaignMember campMemberObj=new CampaignMember(LeadId=leadListInstance.ID,status='sent',campaignId=campObj.Id);
            listCampMember.add(campMemberObj);
        }
        System.Test.startTest();
        insert listCampMember;
        System.Test.stopTest();
        
       List<CampaignMember> listCampaignMember=[Select Id,LeadId,RSVP__c from campaignmember where RSVP__c=true];
        Integer listCampaignMemberSize=listCampaignMember.size();
        System.assert(listCampaignMemberSize==0);
        
    }
}