package §+[§
{
   import flash.events.Event;
   
   public class §8!6§ extends Event
   {
      
      public static const §=!'§:String = "stream_start";
      
      public static const §;h§:String = "stream_data_complete";
      
      public static const §-G§:String = "all_channels_stop";
      
      public static const §>!$§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §0V§:String;
      
      public var §@y§:String;
      
      public function §8!6§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§0V§ = param2;
         this.§@y§ = param3;
      }
   }
}
