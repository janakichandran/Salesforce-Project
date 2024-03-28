public with sharing class GetProjectDetailsClass {
    @AuraEnabled(cacheable=true)
    public static List<Project__c> getprojectNewList(String projectId) {
        try {
            return[
                SELECT Id, Name, Start_Date__c, End_Date__c 
                FROM Project__c
                WHERE Id =: projectId
                 WITH SECURITY_ENFORCED
            ];
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

    }
}
