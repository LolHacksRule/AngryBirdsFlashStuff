package §;"3§
{
   import flash.events.Event;
   
   public class §+H§ extends Event
   {
      
      public static const §6p§:String = "power_up_use_complete";
      
      public static const §["_§:String = "power_up_execute";
      
      public static const §=Z§:String = "pwerup_usage_allowance_change";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6p§ = "power_up_use_complete";
         }
         do
         {
            §["_§ = "power_up_execute";
            do
            {
               §=Z§ = "pwerup_usage_allowance_change";
            }
            while(_loc1_);
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public var §6#R§:String;
      
      public var allowNextPowerUp:Boolean;
      
      public function §+H§(param1:String, param2:String, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§6#R§ = param2;
               loop1:
               while(!(_loc6_ && param2))
               {
                  while(true)
                  {
                     this.allowNextPowerUp = param3;
                     if(_loc7_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
   }
}
