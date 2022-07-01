package §&!>§
{
   import flash.events.Event;
   
   public class §=!C§ extends Event
   {
      
      public static const §?!>§:String = "stream_start";
      
      public static const §2,§:String = "stream_data_complete";
      
      public static const §2"+§:String = "all_channels_stop";
      
      public static const §8!o§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §#!M§:String;
      
      public var §'E§:String;
      
      public function §=!C§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§#!M§ = param2;
         this.§'E§ = param3;
      }
   }
}
