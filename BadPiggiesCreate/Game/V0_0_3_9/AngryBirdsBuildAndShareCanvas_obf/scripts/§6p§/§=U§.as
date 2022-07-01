package §6p§
{
   import flash.events.Event;
   
   public class §=U§ extends Event
   {
      
      public static const §^!S§:String = "stream_start";
      
      public static const §+n§:String = "stream_data_complete";
      
      public static const §!!v§:String = "all_channels_stop";
      
      public static const §-!y§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §5-§:String;
      
      public var §;L§:String;
      
      public function §=U§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§5-§ = param2;
         this.§;L§ = param3;
      }
   }
}
