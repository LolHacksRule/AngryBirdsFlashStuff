package §9![§
{
   import flash.events.Event;
   
   public class §&!G§ extends Event
   {
      
      public static const §-!6§:String = "stream_start";
      
      public static const §`!p§:String = "stream_data_complete";
      
      public static const §=W§:String = "all_channels_stop";
      
      public static const §'!K§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var §'!=§:String;
      
      public var §?!i§:String;
      
      public function §&!G§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§'!=§ = param2;
         this.§?!i§ = param3;
      }
   }
}
