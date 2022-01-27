package §,!1§
{
   import flash.events.Event;
   
   public class §2!L§ extends Event
   {
      
      public static const §+!N§:String = "stream_start";
      
      public static const §93§:String = "stream_data_complete";
      
      public static const §7S§:String = "all_channels_stop";
      
      public static const §9l§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §>]§:String;
      
      public var §@!D§:String;
      
      public function §2!L§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§>]§ = param2;
         this.§@!D§ = param3;
      }
   }
}
