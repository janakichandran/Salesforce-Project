trigger accountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete)
{
    if(Trigger.isBefore && Trigger.isInsert)
    {
        accountTriggerHandler.beforeInsert(Trigger.new);
        
    }
    if(Trigger.isAfter && Trigger.isInsert)
    {
        accountTriggerHandler.afterInsert(Trigger.new, Trigger.newmap);
        
    }
    if(Trigger.isAfter && Trigger.isupdate)
    {
        accountTriggerHandler.afterUpdate(Trigger.new, Trigger.oldmap);
        
    }
}