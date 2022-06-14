package §6!B§
{
   import flash.events.Event;
   
   public class §33§ extends Event
   {
      
      public static const §>D§:String = "stream_start";
      
      public static const §%!F§:String = "stream_data_complete";
      
      public static const §=!C§:String = "all_channels_stop";
      
      public static const §<!B§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §"4§:String;
      
      public var §%!5§:String;
      
      public function §33§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§"4§ = param2;
         this.§%!5§ = param3;
      }
   }
}
