public class contactTriggerHelper {
    public static void createEmailId(List<Contact> contactNewList){        
        for(Contact contact : contactNewList ){
            if(contact.Email == null && contact.LastName != null){                
                contact.Email = contact.LastName + '@yahoo.com';
                contact.Department = 'Finance';                
            } 
        }             
    }
    public static void updatephone(List<Contact> contactNewList){ 
        set<Id> accId = new set<Id>();
       map<Id, Account> amap = new map<Id, Account>();     
        for(Contact contact : contactNewList ){             
            accId.add(contact.AccountId);
        }
            List<Account> aList = [Select Name, Id, BillingCity From Account Where Id IN : accId];
            for(Account acc : aList){
                amap.put(acc.Id , acc);                    
                } 
        for(Contact contact : contactNewList ){
            contact.MailingCity = amap.get(contact.AccountId).BillingCity;
        }
    }
        //not to update last name
    public static void notupdatename(List<Contact> contactNewList, Map<Id, Contact> cmap){
        for (Contact c1 : contactNewList){            
            if(c1.LastName != cmap.get(c1.Id).LastName){
                c1.LastName.addError('Last name cannot be changed');
            }
        }
            }
        
    }