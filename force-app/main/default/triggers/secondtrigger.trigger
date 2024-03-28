trigger secondtrigger on Contact (after insert) 
{
    Contact C1 = Trigger.new[0];
    Account a = new Account();
    a.Name = C1.lastName + '&Company';
    a.NumberofEmployees = 678 ;
    insert a;
}