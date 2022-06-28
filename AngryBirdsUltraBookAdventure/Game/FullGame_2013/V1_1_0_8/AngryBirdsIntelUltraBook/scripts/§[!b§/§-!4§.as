package §[!b§
{
   import flash.events.Event;
   
   public class §-!4§ extends Event
   {
      
      public static const §]!5§:String = "stream_start";
      
      public static const §3!3§:String = "stream_data_complete";
      
      public static const §=G§:String = "all_channels_stop";
      
      public static const §,5§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §3!N§:String;
      
      public var §8!f§:String;
      
      public function §-!4§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§3!N§ = param2;
         this.§8!f§ = param3;
      }
   }
}
