trigger threetrigger on Opportunity (after insert) 
{
     Opportunity opp1 = Trigger.new[0] ;
   Account a1 = new Account();
    if (opp1.Account.Id == a1.Id)
    {
     a1.Name = 'Vaishnavi';
        a1.BillingCountry = 'Mexico';
     a1.Ownership = 'Private';
     a1.Type = 'Pending';
        }
    update a1;
    }