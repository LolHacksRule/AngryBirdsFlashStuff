package §#O§
{
   import §98§.§'"M§;
   import flash.events.Event;
   
   public class §@c§ extends Event
   {
      
      public static const §"!&§:String = "tab_select";
      
      public static const §7Q§:String = "buy_powerup";
      
      public static const §3!F§:String = "buy_upgrade";
      
      public static const §%!k§:String = "buy_energy";
      
      public static const §[#+§:String = "get_subscription";
      
      public static const §3'§:String = "cancel_subscription";
      
      public static const §8N§:String = "request_energy";
       
      
      public var prices:§'"M§;
      
      public function §@c§(param1:String, param2:§'"M§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.prices = param2;
      }
   }
}
