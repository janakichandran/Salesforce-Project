trigger contactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete) {
    if(Trigger.isBefore ){
        if(Trigger.isInsert){
            contactTriggerHandler.beforeInsert(Trigger.new);
        }
        if(Trigger.isUpdate){            
            contactTriggerHandler.beforeUpdate(Trigger.new, Trigger.oldmap);
            
        }
        
    }
}