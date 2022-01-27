package §`"1§
{
   import flash.events.Event;
   
   public class §&"X§ extends Event
   {
      
      public static const §,!W§:String = "stream_start";
      
      public static const §>"7§:String = "stream_data_complete";
      
      public static const §`!h§:String = "all_channels_stop";
      
      public static const §#"+§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §6!X§:String;
      
      public var §9!k§:String;
      
      public function §&"X§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§6!X§ = param2;
         this.§9!k§ = param3;
      }
   }
}
