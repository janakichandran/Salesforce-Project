public class accountTriggerHandler {
    public static void beforeInsert(List<Account> accNewList){
        
    }
    public static void beforeUpdate(){
        
    }
    public static void beforeDelete(){
        
    }
    public static void afterInsert(List<Account> accNewList, Map<Id, Account> accNewMap){
        accountTriggerHelper.createTask(accNewList);
        accountTriggerHelper.createOpportunity(accNewList);   
    }
    public static void afterUpdate(List<account> accNewList, map<Id,account> amap){
       accountTriggerHelper.updatePrequalified(accNewList , amap); 
    }
    public static void afterDelete(){
        
    }
    
}