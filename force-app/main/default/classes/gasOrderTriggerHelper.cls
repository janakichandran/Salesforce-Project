public class gasOrderTriggerHelper {
    public static void createrefillDate(List<Gas_Order__c> gasOrderList){
        Gas_Order__c go1 = new Gas_Order__c();
        for(Gas_Order__c gOrder : gasOrderList){
            if(gOrder.Refill__c == true){
                gOrder.Refill_Booking_Date__c = Date.Today();
            }
        }
    }
    public static void updateInCompany(List<Gas_Order__c> gasOrderList){
       map<Id, GasCompany__c> gcmap = new map<Id, GasCompany__c>();
        map<Id, Customer__c> cnmap = new map<Id, Customer__c>(); 
        set<Id> customerId = new set<Id>(); 
        set<Id> gasCompanyIds = new set<Id>();
        for(Gas_Order__c gasorder : gasOrderList){
            gasCompanyIds.add(gasorder.GasCompanyId__c);
            customerId.add(gasorder.Consumer_Name__c);
        }
        List<Customer__c> cusnamList = [Select Name, Id  From Customer__c Where Id =: customerId ];
        List<GasCompany__c> gascomList = [Select Name, Id, Mail_Id__c From GasCompany__c Where Id =: gasCompanyIds];
              for(Customer__c cun : cusnamList){
                cnmap.put(cun.Id , cun);                    
                }       
        for(GasCompany__c gc : gascomList){
                gcmap.put(gc.Id , gc);                    
                } 
        for(Gas_Order__c gasorder : gasOrderList){
            if(gasorder.Refill__c == true){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
                String[] toAddresses = new String[] {gcmap.get(gasorder.GasCompanyId__c).Mail_Id__c}; 
                    mail.setToAddresses(toAddresses); 
                    mail.setSubject('Request Raised'); 
                    mail.setPlainTextBody('Hi' + cnmap.get(gasorder.Consumer_Name__c).Name   + ' has raised a request for refill booking'); 
                    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail }); 
            } 
            else{
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
                String[] toAddresses = new String[] {gcmap.get(gasorder.GasCompanyId__c).Mail_Id__c}; 
                    mail.setToAddresses(toAddresses); 
                    mail.setSubject('Request Raised'); 
                    mail.setPlainTextBody('Hi' + cnmap.get(gasorder.Consumer_Name__c).Name  + ' your request for' +gasorder.Other_Enquiries__c + ' check to that immediately'); 
                    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail }); 
             
            }                   
            }
            
        }
}