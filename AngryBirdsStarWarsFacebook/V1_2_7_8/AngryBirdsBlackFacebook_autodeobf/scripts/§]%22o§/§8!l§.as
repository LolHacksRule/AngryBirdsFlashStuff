package §]"o§
{
   import flash.events.Event;
   
   public class §8!l§ extends Event
   {
      
      public static const §?"<§:String = "power_up_use_complete";
      
      public static const §7"[§:String = "power_up_execute";
      
      public static const §3#4§:String = "pwerup_usage_allowance_change";
       
      
      public var §9u§:String;
      
      public var allowNextPowerUp:Boolean;
      
      public function §8!l§(param1:String, param2:String, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§9u§ = param2;
         this.allowNextPowerUp = param3;
      }
   }
}
