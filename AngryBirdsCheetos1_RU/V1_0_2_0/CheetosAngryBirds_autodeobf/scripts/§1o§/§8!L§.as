package §1o§
{
   import flash.events.Event;
   
   public class §8!L§ extends Event
   {
      
      public static const §2!W§:String = "stream_start";
      
      public static const §[#§:String = "stream_data_complete";
      
      public static const §'t§:String = "all_channels_stop";
      
      public static const §^w§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §<!N§:String;
      
      public var §-_§:String;
      
      public function §8!L§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§<!N§ = param2;
         this.§-_§ = param3;
      }
   }
}
