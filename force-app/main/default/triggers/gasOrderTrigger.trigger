trigger gasOrderTrigger on Gas_Order__c (before insert, after insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        
    }
     if(Trigger.isAfter && Trigger.isInsert){
       // gasOrder.gasOrderMethod(trigger.new);
        gasOrderTriggerHelper.updateInCompany(trigger.new);
    }

    
}