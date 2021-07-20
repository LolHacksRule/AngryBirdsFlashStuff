package §8#K§
{
   import flash.events.Event;
   
   public class §1^§ extends Event
   {
      
      public static const §^"7§:String = "stream_start";
      
      public static const §[!n§:String = "stream_data_complete";
      
      public static const §6!I§:String = "all_channels_stop";
      
      public static const §-#N§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §^"4§:String;
      
      public var §%Y§:String;
      
      public function §1^§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§^"4§ = param2;
         this.§%Y§ = param3;
      }
   }
}
