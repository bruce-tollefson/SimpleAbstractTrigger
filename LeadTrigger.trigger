trigger LeadTrigger on Lead (before insert, after insert) {
	LeadTriggerHandler leadHandler = new LeadTriggerHandler();
    leadHandler.run();
}