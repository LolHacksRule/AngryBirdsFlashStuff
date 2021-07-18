package com.angrybirds.utils
{
   import flash.events.Event;
   
   public class §@,§ extends Event
   {
      
      public static const §=h§:String = "CodeSubmissionEvent.OnCodeSubmissionComplete";
      
      public static const §+!§:String = "CodeSubmissionEvent.OnCodeUsedError";
      
      public static const §>$§:String = "CodeSubmissionEvent.OnCodeNotExistError";
      
      public static const §,k§:String = "CodeSubmissionEvent.OnCodeNotEnteredError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §=h§ = "CodeSubmissionEvent.OnCodeSubmissionComplete";
         }
         while(true)
         {
            §+!§ = "CodeSubmissionEvent.OnCodeUsedError";
            while(!(_loc2_ && _loc1_))
            {
               §>$§ = "CodeSubmissionEvent.OnCodeNotExistError";
               do
               {
                  §,k§ = "CodeSubmissionEvent.OnCodeNotEnteredError";
               }
               while(!(_loc1_ || _loc2_));
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §@,§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super(param1);
         }
      }
   }
}
