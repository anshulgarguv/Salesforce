public class CampaignFilter {
    
		public String listValue {get;set;}
    public List<SelectOption> listOptions {get;set;}
    public List<Campaign> filteredCampaign {get;set;}
    public List<Campaign> CampaignDetails {get;set;}
    public List<Campaign> question{get;set;}
    public string recId{get;set;}
    boolean firsttime=true;
    public CampaignFilter(){
        FilteredCampaign();
    }
    public CampaignFilter(ApexPages.StandardController controller) {
        listOptions = new List<SelectOption>();
        listOptions.add(new SelectOption('All Active','All Active'));
        listOptions.add(new SelectOption('All Inactive','All Inactive'));
        listOptions.add(new SelectOption('All Campaign','All Campaign'));
        listOptions.add(new SelectOption('Recently Modified','Recently Modified'));
        filteredCampaign = [select name,status,startdate from campaign order by lastmodifieddate desc];
    }
        public void FilteredCampaign() {	
            
            if(listValue=='All active'){
                filteredCampaign = [select name,status,startdate from campaign where IsActive=true Order by StartDate desc];}
            if(listValue=='All Inactive'){
                filteredCampaign = [select name,status,startdate from campaign where IsActive=false Order by StartDate desc];}
            if(listValue=='All Campaign'){
                filteredCampaign = [select name,status,startdate from campaign Order by StartDate desc];}
            if(listValue=='Recently Modified'){
                filteredCampaign = [select name,status,startdate from campaign order by lastmodifieddate desc];}
            
            
            
    }
    
    
}