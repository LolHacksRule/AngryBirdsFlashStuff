package §5!c§
{
   import flash.events.Event;
   
   public class § !p§ extends Event
   {
      
      public static const §7!<§:String = "stream_start";
      
      public static const §,m§:String = "stream_data_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § !p§)
         {
            §7!<§ = "stream_start";
            do
            {
               §,m§ = "stream_data_complete";
            }
            while(_loc2_);
            
         }
      }
      
      public var §>3§:String;
      
      public function § !p§(param1:String, param2:Boolean = false, param3:Boolean = false)
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
