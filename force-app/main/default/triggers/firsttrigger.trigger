trigger firsttrigger on Account (before insert) 
{
 Account a=Trigger.new[0];
 
  a.Rating = 'warm';
 a.BillingCountry = 'Belgium';
 a.NumberOfEmployees = 8976;
}