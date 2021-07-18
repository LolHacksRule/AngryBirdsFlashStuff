package §!"W§
{
   import flash.events.Event;
   
   public class §##L§ extends Event
   {
      
      public static const §0"5§:String = "item_use_complete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §0"5§ = "item_use_complete";
         }
      }
      
      public var §;K§:Boolean;
      
      public var itemID:String;
      
      public function §##L§(param1:String, param2:Boolean, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§;K§ = param2;
               while(!(_loc7_ && param3))
               {
                  this.itemID = param3;
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
   }
}
