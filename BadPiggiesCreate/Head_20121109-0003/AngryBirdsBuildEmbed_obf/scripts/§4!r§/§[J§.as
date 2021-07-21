package §4!r§
{
   public class §[J§ implements §7R§
   {
       
      
      public function §[J§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!(_loc6_ && param3))
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               addr28:
               §§push(param1);
               if(!_loc6_)
               {
                  §§push(param4);
                  if(_loc7_ || param1)
                  {
                     addr100:
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() - 2);
                     if(!_loc6_)
                     {
                        §§goto(addr104);
                     }
                     §§goto(addr108);
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc6_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc6_ && param3))
                     {
                        param1 = §§pop();
                        §§push(_loc5_);
                     }
                  }
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc7_ || param3)
                     {
                        addr97:
                        §§push(param1);
                        if(!_loc6_)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr108);
                  }
                  addr104:
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr108:
                     §§push(§§pop() + param2);
                  }
                  return §§pop();
               }
               §§goto(addr100);
            }
            §§goto(addr97);
         }
         §§goto(addr28);
      }
   }
}
