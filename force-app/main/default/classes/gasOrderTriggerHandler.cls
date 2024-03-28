public class gasOrderTriggerHandler {
    public static void beforeInsert(List<Gas_Order__c> gasOrderList){
       // gasOrderTriggerHelper.createrefillDate(gasOrderList);
    }
    public static void afterInsert(List<Gas_Order__c> gasOrderList){
       gasOrderTriggerHelper.updateInCompany(gasOrderList);
    }

}