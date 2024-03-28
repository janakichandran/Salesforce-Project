public class modifyNew1 {
    public static void myMethod(){
   //insert for standard object
     List<Account> accList1=new List<Account>();
    For(integer i=1 ; i<=5 ; i++)
   {
    Account a=new Account(Name='Test Account' + i);
    accList1.add(a);
   }
   insert accList1;   
    //insert for custom object
    List<Club_CCW__c> clubList=new List<Club_CCW__c>();
    Club_CCW__c c=new Club_CCW__c(Name='Red Cross' , Activities__c='Social Service');
    clubList.add(c);
    insert clubList;
    //update for standard object
        List<Account> accList2 = [Select Name , Rating From Account Where NAME LIKE'%test%' ];
      For (Account b : accList2)
    {
      b.Rating = 'Hot';
    }
     upsert accList2;
      //update for custom object
    List<Cultural_CCW__c> cultuList=[Select Name ,Event_Category__c ,Rating__c From Cultural_CCW__c Where NAME LIKE '%clg%' LIMIT 2];
    For (Cultural_CCW__c d:cultuList)
    {
     d.Event_Category__c = 'Classical Dance';
     d.Rating__c = 4;   
    }
    update cultuList;  
    }
}