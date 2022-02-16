public abstract with sharing class SimpleAbstractTriggerHandler {
    
    TriggerOperation opType;
    
    public SimpleAbstractTriggerHandler(){
        this.opType = Trigger.OperationType;
    }
    
    public void run(){
        switch on this.opType{
            when BEFORE_INSERT{
                beforeInsert();
            }
            when AFTER_INSERT{
                afterInsert();
            }
            when BEFORE_UPDATE{
                beforeUpdate();
            }
            when AFTER_UPDATE{
                afterUpdate();
            } 
            when BEFORE_DELETE{
                beforeDelete();
            } 
            when AFTER_DELETE{
                afterDelete();
            }
            when AFTER_UNDELETE{
                afterUndelete();
            }
        }
    }
    
    protected abstract void beforeInsert();
    protected abstract void afterInsert();
    protected abstract void beforeUpdate();
    protected abstract void afterUpdate();
    protected abstract void beforeDelete();
    protected abstract void afterDelete();
    protected abstract void afterUndelete();//probably going to be the same as Insert
    
}
