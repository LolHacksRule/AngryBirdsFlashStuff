package §^"?§
{
   import §7K§.§,T§;
   
   public class §["i§ extends §,T§
   {
      
      public static const §`!f§:String = "StarCoin";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!f§ = "StarCoin";
         }
      }
      
      public function §["i§(param1:String, param2:int, param3:int, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public function get offer() : String
      {
         return text;
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[Prices itemID[" + itemID);
         if(_loc1_)
         {
            §§push(§§pop() + "], quantity:");
            if(!(_loc2_ && this))
            {
               addr30:
               §§push(§§pop() + quantity);
               if(!_loc2_)
               {
                  §§push(§§pop() + ", price:");
                  if(_loc1_ || _loc1_)
                  {
                     addr53:
                     §§push(§§pop() + price);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + ", offer:");
                        if(!_loc2_)
                        {
                           addr61:
                           §§push(§§pop() + this.offer);
                           if(_loc1_ || this)
                           {
                           }
                           §§goto(addr83);
                        }
                        addr83:
                        return §§pop();
                        §§push(§§pop() + "]");
                     }
                  }
                  §§goto(addr61);
               }
               §§goto(addr53);
            }
            §§goto(addr61);
         }
         §§goto(addr30);
      }
   }
}
