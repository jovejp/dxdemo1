trigger DailyTrackerTrigger on DailyTracker__c (before insert) {
    DailyTracker__c[] dailyTrackers = Trigger.new;
    DailyTrackUtil.setPlanNum(dailyTrackers);
}