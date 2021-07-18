package §7!0§
{
   import flash.events.Event;
   
   public class §3!d§ extends Event
   {
      
      public static const §+T§:String = "CodeSubmissionEvent.OnCodeSubmissionComplete";
      
      public static const §!e§:String = "CodeSubmissionEvent.OnCodeUsedError";
      
      public static const §-l§:String = "CodeSubmissionEvent.OnCodeNotExistError";
      
      public static const §9!v§:String = "CodeSubmissionEvent.OnCodeNotEnteredError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+T§ = "CodeSubmissionEvent.OnCodeSubmissionComplete";
         }
         loop0:
         while(true)
         {
            §!e§ = "CodeSubmissionEvent.OnCodeUsedError";
            loop1:
            do
            {
               §-l§ = "CodeSubmissionEvent.OnCodeNotExistError";
               while(!_loc1_)
               {
                  §9!v§ = "CodeSubmissionEvent.OnCodeNotEnteredError";
                  if(_loc2_ || _loc2_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      public function §3!d§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super(param1);
         }
      }
   }
}
