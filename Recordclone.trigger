trigger Recordclone on Opportunity (after insert) {
    if(checkRecursive.isFirstRun()){
                if(trigger.isAfter && trigger.isInsert){
                    system.debug('1---->' + trigger.new);
                    List<Opportunity> clonedRecords=new List<Opportunity>();
                    
                    for(Opportunity opp:trigger.new){
                       Opportunity op=opp.clone();
                        op.name='I Am Clone';
                        system.debug('2----' + op);
                        clonedRecords.add(op);
                    }
                    insert clonedRecords;
                }}
}