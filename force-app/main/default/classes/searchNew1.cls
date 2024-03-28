public class searchNew1 {
    public static void myMethod() 
    {
        List<List<sObject>> searchResults = [FIND 'UNI*' IN NAME FIELDS RETURNING Account(Name,BillingCountry) , Contact(FirstName,LastName)];
        List<Account> accList = (List<Account>)searchResults[0];
        System.debug(accList[0].Name);
        List<Contact> conList = (List<Contact>)searchResults[1];
        System.debug(conList[0].FirstName);
   
    
    
    
    
    }
    }