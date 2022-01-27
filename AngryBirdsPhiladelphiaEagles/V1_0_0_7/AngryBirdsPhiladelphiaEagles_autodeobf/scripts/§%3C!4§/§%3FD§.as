package §<!4§
{
   import flash.events.Event;
   
   public class §?D§ extends Event
   {
      
      public static const §&K§:String = "stream_start";
      
      public static const §8!$§:String = "stream_data_complete";
      
      public static const §1!<§:String = "all_channels_stop";
      
      public static const §&y§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §-!"§:String;
      
      public var static:String;
      
      public function §?D§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§-!"§ = param2;
         this.static = param3;
      }
   }
}
