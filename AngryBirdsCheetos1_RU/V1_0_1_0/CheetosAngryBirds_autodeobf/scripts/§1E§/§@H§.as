package §1E§
{
   import flash.events.Event;
   
   public class §@H§ extends Event
   {
      
      public static const §6Q§:String = "stream_start";
      
      public static const §,r§:String = "stream_data_complete";
      
      public static const §9!@§:String = "all_channels_stop";
      
      public static const §+y§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §`]§:String;
      
      public var §+$§:String;
      
      public function §@H§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§`]§ = param2;
         this.§+$§ = param3;
      }
   }
}
