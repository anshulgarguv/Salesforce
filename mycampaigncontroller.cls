public class mycampaigncontroller {
    public Campaign campaign{get;set;}
    public mycampaigncontroller(){
        Id id=apexpages.currentPage().getParameters().get('ID');
        campaign=[select Id,name from Campaign where Id=:id];
    }
}