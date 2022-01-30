package §>Z§
{
   import flash.events.Event;
   
   public class §9!;§ extends Event
   {
      
      public static const §9_§:String = "stream_start";
      
      public static const § !X§:String = "stream_data_complete";
      
      public static const §;"2§:String = "all_channels_stop";
      
      public static const §!!S§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §0"%§:String;
      
      public var §>!L§:String;
      
      public function §9!;§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§0"%§ = param2;
         this.§>!L§ = param3;
      }
   }
}
