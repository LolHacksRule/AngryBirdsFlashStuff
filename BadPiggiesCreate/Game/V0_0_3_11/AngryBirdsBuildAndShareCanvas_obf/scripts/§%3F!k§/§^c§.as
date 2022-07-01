package §?!k§
{
   import flash.events.Event;
   
   public class §^c§ extends Event
   {
      
      public static const §%!=§:String = "stream_start";
      
      public static const §""'§:String = "stream_data_complete";
      
      public static const §&!§:String = "all_channels_stop";
      
      public static const §<B§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §9?§:String;
      
      public var §=!d§:String;
      
      public function §^c§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§9?§ = param2;
         this.§=!d§ = param3;
      }
   }
}
