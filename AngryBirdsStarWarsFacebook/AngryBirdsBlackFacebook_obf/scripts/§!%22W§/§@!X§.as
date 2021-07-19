package §!"W§
{
   import flash.events.Event;
   
   public class §@!X§ extends Event
   {
      
      public static const §1c§:String = "update_powerup";
      
      public static const §;"Z§:String = "update_last_received";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §1c§ = "update_powerup";
         }
         do
         {
            §;"Z§ = "update_last_received";
         }
         while(!_loc2_);
         
      }
      
      public var §6#R§:String;
      
      public var count:int;
      
      public function §@!X§(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param4,param5);
         }
         do
         {
            this.§6#R§ = param2;
            do
            {
               this.count = param3;
            }
            while(_loc6_ && param2);
            
         }
         while(_loc6_);
         
      }
   }
}
