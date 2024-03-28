public class gasOrder                                          
{
	public static void gasOrderMethod(list<Gas_Order__c> Olist)
    {
        set<Id> customerId = new set<Id>();
        set<Id> gcId = new set<Id>();
        for( Gas_Order__c g : Olist)
        {
           gcId.add(g.GasCompanyId__c);
           customerId.add(g.Consumer_Name__c);
        }
         map<Id, Customer__c> cnmap = new map<Id, Customer__c>(); 
        map<id, GasCompany__c> gcmap = new map<id,GasCompany__c>();
        List<Customer__c> cusnamList = [Select Name, Id  From Customer__c Where Id =: customerId ];
        list<GasCompany__c> gclist = [Select Id, Mail_Id__c from GasCompany__c where Id =: gcId];
        for(Customer__c cun : cusnamList){
                cnmap.put(cun.Id , cun);                    
                }   
        for(GasCompany__c gc : gclist)
        {
            gcmap.put(gc.Id, gc);
        }      
        for( Gas_Order__c g : Olist)
        {
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
                String[] toAddresses = new String[] {gcmap.get(g.GasCompanyId__c).Mail_Id__c}; 
                    mail.setToAddresses(toAddresses); 
                    mail.setSubject('Request Raised'); 
                    mail.setPlainTextBody('Hi'+ cnmap.get(g.Consumer_Name__c).Name + 'has raised a request for' + g.Other_Enquiries__c +'. Check to that immediately' ); 
                    Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail}); 
        
        }
       
    }
}