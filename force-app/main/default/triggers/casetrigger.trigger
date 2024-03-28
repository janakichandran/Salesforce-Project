trigger casetrigger on Case (after update) {
    Case oldcs = Trigger.old[0];
    Case newcs = Trigger.new[0];
    if(oldcs.Id == newcs.Id && oldcs.Status == 'Working')
    {
      delete oldcs;   
    System.debug('hi');   
    }
   System.debug('hello');
}