trigger TriggerOneAccount on Account (before insert, 

                                 after insert,
                                 before update,
                                 after update,
                                 before delete) {
                                     
                                     if(trigger.isBefore && trigger.isInsert){
                                         system.debug(trigger.new);
                                     }
                                     if(trigger.isAfter && trigger.isInsert){
                                         system.debug(trigger.newMap);
                                     }
                                     if(trigger.isBefore && trigger.isUpdate){
                                         system.debug(trigger.new);
                                     }
                                     if(trigger.isAfter && trigger.isUpdate){
                                         system.debug(trigger.newMap);
                                     }
                                     if(trigger.isBefore && trigger.isDelete){
                                         system.debug(trigger.oldMap);
                                     }
                                     if(trigger.isAfter && trigger.isDelete){
                                         system.debug(trigger.newMap);
                                     }
}