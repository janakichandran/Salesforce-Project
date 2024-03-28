trigger gasCompanyTrigger on GasCompany__c (before insert, before update, before delete, after insert, after update, after delete) {
    if(Trigger.isBefore && Trigger.isInsert){
      //  gasCompanyTriggerHandler.beforeInsert(Trigger.new);
    }
   if(Trigger.isBefore && Trigger.isUpdate){
       // gasCompanyTriggerHandler.beforeUpdate(Trigger.new, Trigger.oldMap);
    } 
     if(Trigger.isAfter && Trigger.isInsert){
        //gasCompanyTriggerHandler.afterInsert(Trigger.new);
    } 
    
}