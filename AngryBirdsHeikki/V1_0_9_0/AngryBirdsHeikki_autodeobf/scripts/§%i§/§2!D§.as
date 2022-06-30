package §%i§
{
   import flash.events.Event;
   
   public class §2!D§ extends Event
   {
      
      public static const §-!G§:String = "stream_start";
      
      public static const §`i§:String = "stream_data_complete";
      
      public static const §;_§:String = "all_channels_stop";
      
      public static const §@d§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §`!`§:String;
      
      public var §%G§:String;
      
      public function §2!D§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§`!`§ = param2;
         this.§%G§ = param3;
      }
   }
}
