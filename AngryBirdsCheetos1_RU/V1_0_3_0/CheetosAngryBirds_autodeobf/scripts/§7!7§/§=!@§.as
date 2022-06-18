package §7!7§
{
   import flash.events.Event;
   
   public class §=!@§ extends Event
   {
      
      public static const §]!3§:String = "stream_start";
      
      public static const §?@§:String = "stream_data_complete";
      
      public static const §-!R§:String = "all_channels_stop";
      
      public static const §;!4§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §!!7§:String;
      
      public var §;§:String;
      
      public function §=!@§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§!!7§ = param2;
         this.§;§ = param3;
      }
   }
}
