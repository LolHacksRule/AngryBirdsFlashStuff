package §@!6§
{
   import flash.events.Event;
   
   public class §?!B§ extends Event
   {
      
      public static const §`;§:String = "stream_start";
      
      public static const §%!9§:String = "stream_data_complete";
      
      public static const §5!R§:String = "all_channels_stop";
      
      public static const §;!g§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §`3§:String;
      
      public var §7=§:String;
      
      public function §?!B§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§`3§ = param2;
         this.§7=§ = param3;
      }
   }
}
