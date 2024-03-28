public class SearchNew2 {
    public static void myMethod() {
        List<List<sObject>> searchResults = [FIND 'UNI*' IN NAME FIELDS RETURNING Account(Name,BillingCountry), Contact(FirstName,LastName)];

        List<Account> accList = (List<Account>)searchResults[0];
         For(Integer i=0 ; i<acclist.size() ; i++)
         {
        System.debug('Name :   ' + accList[i].Name + 'Country:   ' + accList[i].BillingCountry);
         }
        List<Contact> conList = (List<Contact>)searchResults[1];
        System.debug(conList[0].FirstName + ' ' + conList[0].LastName);
        
    }
}