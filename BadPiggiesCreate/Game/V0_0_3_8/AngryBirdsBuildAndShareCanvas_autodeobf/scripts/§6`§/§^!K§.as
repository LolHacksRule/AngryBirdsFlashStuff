package §6`§
{
   import flash.events.Event;
   
   public class §^!K§ extends Event
   {
      
      public static const §0!L§:String = "stream_start";
      
      public static const §<i§:String = "stream_data_complete";
      
      public static const §0_§:String = "all_channels_stop";
      
      public static const §>"0§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §+B§:String;
      
      public var §>!=§:String;
      
      public function §^!K§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§+B§ = param2;
         this.§>!=§ = param3;
      }
   }
}
