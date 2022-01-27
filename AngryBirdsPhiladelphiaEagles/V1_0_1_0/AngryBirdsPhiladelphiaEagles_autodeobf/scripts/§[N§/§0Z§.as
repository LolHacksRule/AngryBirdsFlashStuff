package §[N§
{
   import flash.events.Event;
   
   public class §0Z§ extends Event
   {
      
      public static const §7!8§:String = "stream_start";
      
      public static const §?r§:String = "stream_data_complete";
      
      public static const §-3§:String = "all_channels_stop";
      
      public static const §?!>§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §@!$§:String;
      
      public var §7;§:String;
      
      public function §0Z§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§@!$§ = param2;
         this.§7;§ = param3;
      }
   }
}
