package §'0§
{
   import flash.events.Event;
   
   public class §8g§ extends Event
   {
      
      public static const §7!K§:String = "stream_start";
      
      public static const §>!G§:String = "stream_data_complete";
      
      public static const §3X§:String = "all_channels_stop";
      
      public static const §"B§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §9!B§:String;
      
      public var §9b§:String;
      
      public function §8g§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§9!B§ = param2;
         this.§9b§ = param3;
      }
   }
}
