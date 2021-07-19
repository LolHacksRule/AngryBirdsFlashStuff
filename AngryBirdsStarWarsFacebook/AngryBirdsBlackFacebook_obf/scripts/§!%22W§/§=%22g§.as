package §!"W§
{
   import §>"$§.§!"C§;
   import §>"$§.§?g§;
   import flash.events.Event;
   
   public class §="g§ extends Event
   {
      
      public static const §?6§:String = "update_listing";
      
      public static const §=#2§:String = "buy_complete";
      
      public static const §>#9§:String = "update_inventory";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §="g§)
         {
            §?6§ = "update_listing";
            while(true)
            {
               §=#2§ = "buy_complete";
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            §>#9§ = "update_inventory";
            if(_loc1_ || _loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §^5§:§?g§;
      
      public var §!o§:§!"C§;
      
      public function §="g§(param1:String, param2:§?g§ = null, param3:§!"C§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§^5§ = param2;
               while(!(_loc7_ && this))
               {
                  this.§!o§ = param3;
                  if(_loc7_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
   }
}
