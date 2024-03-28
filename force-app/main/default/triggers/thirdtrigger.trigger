trigger thirdtrigger on Opportunity (before update) 
{
for (Opportunity oldOpp : Trigger.old)
{
    for (Opportunity newOpp : Trigger.new)
    {
        if (oldOpp.Id == newOpp.Id && oldOpp.Amount != newOpp.Amount)
         newOpp.Amount.addError('Amount cannot be changed');    
    }
}
}