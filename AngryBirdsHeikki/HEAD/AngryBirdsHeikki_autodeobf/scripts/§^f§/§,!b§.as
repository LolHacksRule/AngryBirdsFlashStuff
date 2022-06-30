package §^f§
{
   import flash.events.Event;
   
   public class §,!b§ extends Event
   {
      
      public static const §<I§:String = "stream_start";
      
      public static const §#!g§:String = "stream_data_complete";
      
      public static const §`f§:String = "all_channels_stop";
      
      public static const §3!X§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §,!%§:String;
      
      public var §"!P§:String;
      
      public function §,!b§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§,!%§ = param2;
         this.§"!P§ = param3;
      }
   }
}
