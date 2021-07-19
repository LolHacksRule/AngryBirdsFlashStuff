package §3"#§
{
   import flash.events.Event;
   
   public class §@U§ extends Event
   {
      
      public static const §;![§:String = "stream_start";
      
      public static const §2!X§:String = "stream_data_complete";
      
      public static const §1v§:String = "all_channels_stop";
      
      public static const §^"B§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;![§ = "stream_start";
         }
         loop0:
         while(true)
         {
            §2!X§ = "stream_data_complete";
            addr76:
            while(true)
            {
               §1v§ = "all_channels_stop";
               continue loop0;
            }
         }
      }
      
      public var §7@§:String;
      
      public var §,!j§:String;
      
      public function §@U§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param4,param5);
         }
         while(true)
         {
            this.§7@§ = param2;
            while(_loc7_ || param2)
            {
               this.§,!j§ = param3;
               if(!_loc6_)
               {
                  return;
               }
            }
         }
      }
   }
}
