package §#;§
{
   import flash.events.Event;
   
   public class §9Z§ extends Event
   {
      
      public static const §<!2§:String = "stream_start";
      
      public static const §8!X§:String = "stream_data_complete";
      
      public static const §#u§:String = "all_channels_stop";
      
      public static const §`!2§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §0!K§:String;
      
      public var §3!]§:String;
      
      public function §9Z§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§0!K§ = param2;
         this.§3!]§ = param3;
      }
   }
}
