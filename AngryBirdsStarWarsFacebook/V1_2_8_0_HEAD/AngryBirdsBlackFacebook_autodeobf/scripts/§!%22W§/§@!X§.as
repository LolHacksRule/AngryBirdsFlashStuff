package §!"W§
{
   import flash.events.Event;
   
   public class §@!X§ extends Event
   {
      
      public static const §1c§:String = "update_powerup";
      
      public static const §;"Z§:String = "update_last_received";
       
      
      public var §6#R§:String;
      
      public var count:int;
      
      public function §@!X§(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§6#R§ = param2;
         this.count = param3;
      }
   }
}
