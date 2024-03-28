public class sObjectsNew1 {
    public static void myMethod(){
        List<Student_CCW__c>stList = [Select Name , Age__c , Department__c from Student_CCW__c];
        For(Integer i=0 ; i<stlist.size() ; i++)
        {
            System.debug('Name:  '+stList[i].Name+ '**Age: '+stList[i].Age__c + '***Department:  '+stList[i].Department__c);
        }
    }

}