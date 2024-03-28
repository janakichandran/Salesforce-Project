@isTest
public class TestgascompanyTriggerHelper {
   @isTest
    static void testcreateNewRecord(){
        List<GasCompany__c> gascomList = new List<GasCompany__c>();
        for(GasCompany__c gascomp : gascomList){
            gascomp.Name = 'spikeGasCompany';
            gascomp.Contact_number__c = '9876543244';
            gascomList.add(gascomp);
        }
        insert gascomList;
           for(GasCompany__c gasco : gascomList){
           gasco.Agency_Name__c = 'Vivekananda';
            gasco.Mail_Id__c = gasco.Name + gasco.CreatedDate +'@gmail.com';
            gascomList.add(gasco);
           }
         insert gascomList;
        List<GasCompany__c> gascompanyList = [Select Name, Agency_Name__c, Mail_Id__c From GasCompany__c Where CreatedDate = Today];
        for(GasCompany__c gasc : gascompanyList){
            System.debug('Name : '   +gasc.Name + '--  Agency Name : ' +gasc.Agency_Name__c);
        }
    }
}