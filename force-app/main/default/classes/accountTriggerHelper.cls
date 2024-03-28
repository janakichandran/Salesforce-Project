public class accountTriggerHelper {
    public static void createTask(List<Account> accNewList){
        List<Task> taskList = new List<Task>();
        for(Account acc : accNewList)
        {
            Task t1 = new Task();
            t1.Priority = 'High';
            t1.Subject = acc.Name + 'to test trigger';
            t1.Status = 'in progress';
            t1.WhatId = acc.Id ;
            taskList.add(t1);
        }
        insert taskList;    
    }
    public static void createOpportunity(List<Account> accNewList){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc : accNewList)
        {
            Opportunity opp1 = new Opportunity();
            opp1.Name = acc.Name + 'oppportunity';
            opp1.CloseDate = Date.Today();
            opp1.StageName = 'Prospecting';
            oppList.add(opp1);
        }
        insert oppList;    
    }
    public static void updatePrequalified(List<Account> accNewList , Map<Id,Account> amap){
        set<Id> aId = new set<Id>();
        for(Account a : accNewList){
            if(a.Active__c == 'yes' && amap.get(a.Id).Active__c == 'No'){
                aId.add(a.Id);
            }
            
        }
        list<Contact> cListToUpdate = [SELECT AccountId, LastName, Active__c  FROM Contact WHERE AccountId =: aId];
        for(Contact c1 : cListToUpdate)
        {
            c1.Active__c = 'yes';
        }
        update cListToUpdate;
    }
}