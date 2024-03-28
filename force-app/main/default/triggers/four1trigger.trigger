trigger four1trigger on Mid_sem_Mark__c (before update) 
{
for (Mid_sem_Mark__c oldMark : Trigger.old)
{
    for (Mid_sem_Mark__c newMark : Trigger.new)
    {
        if (oldMark.Id == newMark.Id && oldMark.Rating_out_of_10__c == newMark.Rating_out_of_10__c)
         newMark.Rating_out_of_10__c.addError('Rating should be different');    
    }
}
}