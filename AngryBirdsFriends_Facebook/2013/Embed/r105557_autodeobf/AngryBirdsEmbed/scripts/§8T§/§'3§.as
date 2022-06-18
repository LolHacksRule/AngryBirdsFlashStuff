package §8T§
{
   import flash.events.Event;
   
   public class §'3§ extends Event
   {
      
      public static const §-!1§:String = "stream_start";
      
      public static const §5! §:String = "stream_data_complete";
      
      public static const §#;§:String = "all_channels_stop";
      
      public static const §7!E§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §^k§:String;
      
      public var §,?§:String;
      
      public function §'3§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§^k§ = param2;
         this.§,?§ = param3;
      }
   }
}
