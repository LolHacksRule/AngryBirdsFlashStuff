package §]!q§
{
   import flash.events.Event;
   
   public class §=;§ extends Event
   {
      
      public static const §]v§:String = "update";
      
      public static const § !8§:String = "stop";
      
      public static const COMPLETE:String = "complete";
      
      public static const PLAY:String = "play";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            PLAY = "play";
            if(!(_loc1_ && _loc1_))
            {
               § !8§ = "stop";
               if(!_loc2_)
               {
               }
               §§goto(addr52);
            }
            §]v§ = "update";
            if(!_loc1_)
            {
               COMPLETE = "complete";
            }
         }
         addr52:
      }
      
      public function §=;§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
   }
}
