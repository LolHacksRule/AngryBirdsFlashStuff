package §3y§
{
   public class §9!Z§
   {
       
      
      public function §9!Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc5_ || §9!Z§)
               {
                  §§push(param3);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc6_ && §9!Z§))
                     {
                        addr72:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param3))
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(!(_loc6_ && §9!Z§))
            {
               addr62:
               return §§pop() + param2;
            }
         }
         §§goto(addr62);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param2)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() / 2);
               if(_loc5_ || §9!Z§)
               {
               }
               §§goto(addr77);
            }
            §§push(Math.cos(Math.PI * param1 / param4) - 1);
            if(_loc5_ || §9!Z§)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(param2);
               }
               §§goto(addr77);
            }
            §§push(§§pop() + §§pop());
         }
         addr77:
         return §§pop();
      }
   }
}
