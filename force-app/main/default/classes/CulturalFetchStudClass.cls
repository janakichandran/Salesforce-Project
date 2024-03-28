public with sharing class CulturalFetchStudClass {
    @AuraEnabled(cacheable=true)
    public static List<Cultural_CCW__c> getCulturalDetails(String stId ){
        try {
            return[
            SELECT Name , Event_Category__c , Events__c , Student_Name__r.Name
            FROM Cultural_CCW__c
            WHERE Student_name__c =: stId
            WITH SECURITY_ENFORCED
            ];

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
   
}