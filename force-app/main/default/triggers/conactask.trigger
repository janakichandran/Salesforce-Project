trigger conactask on Contact (before update) 
{
    for (Contact newCon : Trigger.new) 
    {
        if(newCon.LastName != Trigger.oldmap.get(newCon.Id).Lastname){
            
        }
     
     }
 
    
}