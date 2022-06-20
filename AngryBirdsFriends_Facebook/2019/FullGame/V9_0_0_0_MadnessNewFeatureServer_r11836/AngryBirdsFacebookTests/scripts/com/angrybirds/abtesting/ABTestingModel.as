package com.angrybirds.abtesting
{
   public class ABTestingModel
   {
      
      public static const AB_TEST_CASE_WEB_STORY_MODE:String = "WebStoryModeAbTestCase";
      
      public static const AB_TEST_GROUP_WEB_STORY_MODE_OFF:String = "webStoryModeOff_50";
      
      public static const AB_TEST_GROUP_WEB_STORY_MODE_ON:String = "webStoryModeOn_50";
      
      public static const AB_TEST_CASE_CHALLENGE_AVAILABILITY:String = "ChallengeAvailabilityAbTestCase2017";
      
      public static const AB_TEST_GROUP_CHALLENGE_AVAILABILITY_ON:String = "challengeEnabled";
      
      private static var mABTests:Object;
       
      
      public function ABTestingModel()
      {
         super();
      }
      
      public static function getGroup(testName:String) : String
      {
         var i:* = null;
         if(mABTests)
         {
            for(i in mABTests)
            {
               if(i == testName)
               {
                  return mABTests[i];
               }
            }
         }
         return null;
      }
      
      public static function injectData(dataObject:Object) : void
      {
         mABTests = dataObject;
      }
   }
}
