public class NewRelationquery1 {
    public static void myMethod(){
       //child to parent stand 
         List<Contact> conList1 = [Select Name , Phone , Title , Account.Name From Contact];
        System.debug(conList1);
        //child to parent relationship        
        List<Cultural_CCW__c> cultuList1 = [Select Name , Event_Category__c , Events__c , Student_Name__r.Name From Cultural_CCW__c Where Name LIKE '%Clg%'];
        System.debug(cultuList1);
        //Parent to child stand
        List<Account> accList1 = [Select Name , Type , Phone , (Select Name , AccountId, Amount From Opportunities) From Account];
        System.debug(accList1);
        //parent to child relationship
        List<Student_CCW__c> st1List = [Select Name , Email_ID__c , Age__c , Major__c , (Select Name , Event_Category__c , Event_Date__c From Culturals_CCW__r) From Student_CCW__c];
        System.debug(st1List);
    }
}