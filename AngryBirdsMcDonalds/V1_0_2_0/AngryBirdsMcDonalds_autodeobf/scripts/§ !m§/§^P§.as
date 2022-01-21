package § !m§
{
   import flash.events.Event;
   
   public class §^P§ extends Event
   {
      
      public static const §2!0§:String = "stream_start";
      
      public static const § <§:String = "stream_data_complete";
      
      public static const §&L§:String = "all_channels_stop";
      
      public static const §>@§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §!e§:String;
      
      public var §`!a§:String;
      
      public function §^P§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§!e§ = param2;
         this.§`!a§ = param3;
      }
   }
}
