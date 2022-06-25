package §,!@§
{
   public class §6>§
   {
       
      
      public function §6>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param3)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§goto(addr37);
            }
            §§goto(addr50);
         }
         addr37:
         §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
         if(_loc5_)
         {
            addr50:
            §§push(param3);
            if(_loc5_)
            {
               §§goto(addr58);
            }
            §§push(§§pop() + §§pop());
         }
         addr58:
         §§push(§§pop() + §§pop());
         if(!_loc6_)
         {
            §§push(param2);
         }
         return §§pop();
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(_loc5_)
            {
               §§push(§§pop() + param2);
            }
         }
         return §§pop();
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || §6>§)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() / 2);
               if(_loc5_ || param3)
               {
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(!(_loc6_ && param1))
                  {
                     §§goto(addr82);
                  }
                  §§push(§§pop() + §§pop());
               }
            }
         }
         addr82:
         §§push(§§pop() * §§pop());
         if(_loc5_ || param1)
         {
            §§push(param2);
         }
         return §§pop();
      }
   }
}
