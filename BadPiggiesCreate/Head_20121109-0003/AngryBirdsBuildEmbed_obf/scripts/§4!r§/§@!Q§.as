package §4!r§
{
   public class §@!Q§ implements §7R§
   {
       
      
      public function §@!Q§()
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
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(param4);
               if(_loc7_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc7_)
                  {
                     addr30:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(!(_loc6_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param2))
                        {
                           addr66:
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                        if(_loc7_ || this)
                        {
                           addr76:
                           §§push(§§pop() * §§pop());
                           if(_loc7_ || param3)
                           {
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_)
                                 {
                                 }
                              }
                           }
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr76);
               }
               §§goto(addr30);
            }
            §§goto(addr92);
         }
         addr92:
         return §§pop() + param2;
      }
   }
}
