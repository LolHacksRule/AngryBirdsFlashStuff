package §12§
{
   import flash.events.Event;
   
   public class §4!1§ extends Event
   {
      
      public static const §1!8§:String = "ScoreSendingEvent.OnScoreSendComplete";
      
      public static const §3!>§:String = "ScoreSendingEvent.OnScoreSendError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §4!1§)
         {
            §1!8§ = "ScoreSendingEvent.OnScoreSendComplete";
            do
            {
               §3!>§ = "ScoreSendingEvent.OnScoreSendError";
            }
            while(!(_loc1_ || §4!1§));
            
         }
      }
      
      public function §4!1§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
   }
}
