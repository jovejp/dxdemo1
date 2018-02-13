@isTest
public class TestDailyTrackUtil {
    static testMethod void validateDailyTrack() {
        Integer i = 0;
        i++;
        DailyTracker__c b = new DailyTracker__c(TaskName__c = 'Test' + i, Actual_Test_Cases__c=30);
        System.debug('Task Name is: ' + b.TaskName__c);

        //insert a dailytracker
        insert b;

        //retrieve the new daily tracker
        DailyTracker__c c = [SELECT TaskName__c, Plan_Test_Cases__c FROM DailyTracker__c WHERE Id = :b.Id];
        System.debug('c Task Name is: ' + c.TaskName__c);
        System.debug('Plan test cases is: ' + c.Plan_Test_Cases__c);

        //compare
        System.assertEquals(18, c.Plan_Test_Cases__c);

    }

}