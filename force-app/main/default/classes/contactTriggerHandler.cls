public class contactTriggerHandler {
    public static void beforeInsert(List<Contact> contactNewList){
     contactTriggerHelper.createEmailId(contactNewList);  
    }
     public static void beforeUpdate(List<Contact> contactNewList, map<Id, Contact> cmap ){
       contactTriggerHelper.updatephone(contactNewList); 
        contactTriggerHelper.notupdatename(contactNewList, cmap);  
    }
     public static void beforeDelete(){
        
    }
     public static void afterInsert(){
        
    }
     public static void afterUpdate(){
        
    }
     public static void afterDelete(){
        
    }

}