public with sharing class StudentNameForParentToChildClass {
    @AuraEnabled(cacheable=true)
    public static Student_CCW__c getStudentslist(String stId){
        try {
            return[
                SELECT Id, Name, Department__c
                FROM Student_CCW__c
                WHERE Id =: stId                
                WITH SECURITY_ENFORCED
                LIMIT 1
            ][0];
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}