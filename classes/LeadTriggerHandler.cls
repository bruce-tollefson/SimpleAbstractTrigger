public class LeadTriggerHandler extends SimpleAbstractTriggerHandler {
    
    List<Lead> newList;
    
    public LeadTriggerHandler(){
        newList = (List<Lead>)Trigger.New;
        System.debug(Trigger.New.getSObjectType());
        //Type 
    }
    
    protected override void beforeInsert(){
        system.debug('beforeInsert');
    }
    
    protected override void afterInsert(){
        system.debug('afterInsert');
    }
    
    protected override void beforeUpdate(){
        system.debug('beforeUpdate');
    }
    
    protected override void afterUpdate(){
        system.debug('afterUpdate');
    }
    
    protected override void beforeDelete(){
        system.debug('beforeDelete');
    }
    
    protected override void afterDelete(){
        system.debug('afterDelete');
    }
    
    protected override void afterUndelete(){
        system.debug('afterUndelete');
    }    
}
