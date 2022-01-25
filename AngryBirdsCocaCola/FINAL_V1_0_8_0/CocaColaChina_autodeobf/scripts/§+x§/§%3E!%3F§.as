package §+x§
{
   import flash.events.Event;
   
   public class §>!?§ extends Event
   {
      
      public static const §1%§:String = "stream_start";
      
      public static const §>v§:String = "stream_data_complete";
      
      public static const §>!A§:String = "all_channels_stop";
      
      public static const §>!9§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §4!-§:String;
      
      public var §5!T§:String;
      
      public function §>!?§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§4!-§ = param2;
         this.§5!T§ = param3;
      }
   }
}
