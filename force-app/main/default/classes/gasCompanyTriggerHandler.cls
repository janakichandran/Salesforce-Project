public class gasCompanyTriggerHandler {
    public static void beforeInsert(List<GasCompany__c> gasCompanyNewList){
        gasCompanyTriggerHelper.createNewRecords(gasCompanyNewList);
    }
     public static void beforeUPdate(List<GasCompany__c> gasCompanyNewList, Map<Id,GasCompany__c> gmap){
       gasCompanyTriggerHelper.updateRecord(gasCompanyNewList, gmap);
    }
    public static void afterInsert(List<GasCompany__c> gasCompanyNewList){
        gasCompanyTriggerHelper.createNewCustomer(gasCompanyNewList);
    }

}