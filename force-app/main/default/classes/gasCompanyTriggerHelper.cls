public class gasCompanyTriggerHelper {
    public static void createNewRecords(List<GasCompany__c> gasCompanyNewList){
        for(GasCompany__c gascompList : gascompanyNewList){
            gascompList.Agency_Name__c = 'Vivekananda';
            gascompList.Mail_Id__c = gascompList.Name + gascompList.Enrolled_number__c +'@gmail.com';
        }
        
    }
    public static void updateRecord(List<GasCompany__c> gasCompanyNewList, Map<Id,GasCompany__c> gmap){
        for(GasCompany__c gascoList : gascompanyNewList){ 
            if(gascoList.Agency_Name__c != gmap.get(gascoList.Id).Agency_Name__c){
                gascoList.Agency_Name__c.addError('Agency Name cannot be changed');
                
            }
        }
    }
    public static void createNewCustomer(List<GasCompany__c> gasCompanyNewList){
        List<Customer__c> customerList = new List<Customer__c>();
        for(GasCompany__c gascoList : gascompanyNewList){
            Customer__c cList = new Customer__c();
            cList.Name = 'anandh';
            cList.Gas_Company__c = gascoList.Id ;
            cList.Mail_Id__c = cList.Name + cList.Gas_Company__c + '@gmail.com';
            customerList.add(cList);
        }
       insert  customerList;
    } 
}