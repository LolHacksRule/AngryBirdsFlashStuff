package §;"3§
{
   import flash.events.Event;
   
   public class §+H§ extends Event
   {
      
      public static const §6p§:String = "power_up_use_complete";
      
      public static const §["_§:String = "power_up_execute";
      
      public static const §=Z§:String = "pwerup_usage_allowance_change";
       
      
      public var §6#R§:String;
      
      public var allowNextPowerUp:Boolean;
      
      public function §+H§(param1:String, param2:String, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§6#R§ = param2;
         this.allowNextPowerUp = param3;
      }
   }
}
