package §^!K§
{
   import flash.events.Event;
   
   public class §-!A§ extends Event
   {
      
      public static const §[!%§:String = "stream_start";
      
      public static const §9P§:String = "stream_data_complete";
      
      public static const §]o§:String = "all_channels_stop";
      
      public static const §!!+§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §[!Q§:String;
      
      public var §<>§:String;
      
      public function §-!A§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§[!Q§ = param2;
         this.§<>§ = param3;
      }
   }
}
