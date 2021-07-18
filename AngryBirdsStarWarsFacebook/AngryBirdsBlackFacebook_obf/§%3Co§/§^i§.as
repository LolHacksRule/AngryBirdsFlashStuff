package §<o§
{
   import §7K§.§,T§;
   import flash.events.Event;
   
   public class §^i§ extends Event
   {
      
      public static const §-#>§:String = "tab_select";
      
      public static const §+]§:String = "buy_powerup";
      
      public static const §@!6§:String = "buy_upgrade";
      
      public static const §?!A§:String = "buy_energy";
      
      public static const §5!B§:String = "get_subscription";
      
      public static const §?!$§:String = "cancel_subscription";
      
      public static const §@"v§:String = "request_energy";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-#>§ = "tab_select";
            while(true)
            {
               §+]§ = "buy_powerup";
               loop1:
               for(; _loc2_ || _loc2_; loop4:
               for(; !(_loc1_ && _loc1_); if(!_loc2_)
               {
                  continue;
               },§§goto(addr54))
               {
                  §5!B§ = "get_subscription";
                  loop5:
                  while(_loc2_)
                  {
                     §?!$§ = "cancel_subscription";
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop4;
                        }
                        continue loop5;
                        addr54:
                        §@"v§ = "request_energy";
                        if(_loc2_ || _loc2_)
                        {
                           return;
                        }
                     }
                     continue loop4;
                  }
                  §§goto(addr78);
               })
               {
                  while(true)
                  {
                     §@!6§ = "buy_upgrade";
                     addr78:
                     while(true)
                     {
                        §?!A§ = "buy_energy";
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public var prices:§,T§;
      
      public function §^i§(param1:String, param2:§,T§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.prices = param2;
         }
         while(_loc5_ && param1);
         
      }
   }
}
