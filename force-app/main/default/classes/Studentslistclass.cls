public with sharing class Studentslistclass {
    @AuraEnabled(cacheable=true)
    public static List<Student_CCW__c> getStudents(){
        try {
            return[
                SELECT Id, Name, Year__c, Department__c
                FROM Student_CCW__c
                WHERE Year__c LIKE '%First%'
                WITH SECURITY_ENFORCED
            ];
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    public static List<Student_CCW__c> getStudentslist(){
        try {
            return[
                SELECT Id, Name, Department__c
                FROM Student_CCW__c
                WHERE Id =: stId
                WITH SECURITY_ENFORCED
            ];
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
    
}