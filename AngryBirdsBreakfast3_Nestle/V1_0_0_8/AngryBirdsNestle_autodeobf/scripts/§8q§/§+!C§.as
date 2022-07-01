package §8q§
{
   import flash.events.Event;
   
   public class §+!C§ extends Event
   {
      
      public static const §-a§:String = "stream_start";
      
      public static const §3!!§:String = "stream_data_complete";
      
      public static const §#!k§:String = "all_channels_stop";
      
      public static const §9"1§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §3!l§:String;
      
      public var §^!&§:String;
      
      public function §+!C§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§3!l§ = param2;
         this.§^!&§ = param3;
      }
   }
}
