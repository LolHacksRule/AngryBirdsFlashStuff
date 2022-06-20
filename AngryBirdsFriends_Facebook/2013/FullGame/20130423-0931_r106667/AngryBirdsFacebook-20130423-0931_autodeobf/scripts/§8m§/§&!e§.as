package §8m§
{
   import flash.events.Event;
   
   public class §&!e§ extends Event
   {
      
      public static const §%!<§:String = "stream_start";
      
      public static const §2-§:String = "stream_data_complete";
      
      public static const §2!w§:String = "all_channels_stop";
      
      public static const §=A§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §+h§:String;
      
      public var §0!e§:String;
      
      public function §&!e§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§+h§ = param2;
         this.§0!e§ = param3;
      }
   }
}
