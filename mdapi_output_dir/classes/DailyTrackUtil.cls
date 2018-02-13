public with sharing class DailyTrackUtil {
    public DailyTrackUtil() {
    }

    public static void test1() {
        Integer i = 1;
        i = i + 1;
        System.debug('i='+ i);
    }

    public static void setPlanNum(DailyTracker__c[] dailyTracks) {
        for (DailyTracker__c b : dailyTracks) {
            b.Plan_Test_cases__c = 18;
        }
    }

}