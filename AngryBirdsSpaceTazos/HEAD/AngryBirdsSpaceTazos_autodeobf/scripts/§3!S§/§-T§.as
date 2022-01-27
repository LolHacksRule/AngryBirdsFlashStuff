package §3!S§
{
   import flash.events.Event;
   
   public class §-T§ extends Event
   {
      
      public static const §2U§:String = "stream_start";
      
      public static const §!O§:String = "stream_data_complete";
      
      public static const §#"+§:String = "all_channels_stop";
      
      public static const §'!q§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §#0§:String;
      
      public var §%!k§:String;
      
      public function §-T§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§#0§ = param2;
         this.§%!k§ = param3;
      }
   }
}
