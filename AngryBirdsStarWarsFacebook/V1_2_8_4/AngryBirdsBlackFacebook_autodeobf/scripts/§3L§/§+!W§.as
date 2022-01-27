package §3L§
{
   import flash.events.Event;
   
   public class §+!W§ extends Event
   {
      
      public static const §^!_§:String = "power_up_use_complete";
      
      public static const §]!f§:String = "power_up_execute";
      
      public static const §,U§:String = "pwerup_usage_allowance_change";
       
      
      public var §8!#§:String;
      
      public var allowNextPowerUp:Boolean;
      
      public function §+!W§(param1:String, param2:String, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§8!#§ = param2;
         this.allowNextPowerUp = param3;
      }
   }
}
