package §4!r§
{
   public class §]2§ implements §7R§
   {
       
      
      public function §]2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            §§push(param4);
            if(!_loc7_)
            {
               var _loc5_:*;
               §§push(_loc5_ = §§pop() / (§§pop() / 2));
               if(_loc6_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(_loc6_ || param3)
                  {
                     param1 = §§pop();
                     §§push(_loc5_);
                  }
               }
               §§push(1);
               if(!_loc7_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc6_)
                     {
                        addr51:
                        §§push(param3);
                        §§push(2);
                        if(_loc6_)
                        {
                           §§push(§§pop() / §§pop());
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_)
                              {
                                 §§push(param1);
                                 if(!_loc7_)
                                 {
                                    addr75:
                                    §§push(§§pop() * §§pop() + param2);
                                    if(_loc6_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr128:
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || param3)
                                    {
                                       addr136:
                                       §§push(§§pop() + param2);
                                    }
                                 }
                                 return §§pop();
                              }
                              addr84:
                              §§push(-§§pop() / 2);
                              if(_loc6_)
                              {
                                 §§push(param1 - 1);
                                 §§push(param1 - 1);
                                 if(!(_loc7_ && param3))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc6_ || param3)
                                    {
                                       param1 = §§pop();
                                       §§push(param1);
                                       if(!(_loc7_ && param2))
                                       {
                                          §§push(§§pop() - 2);
                                       }
                                    }
                                 }
                                 §§goto(addr128);
                                 §§push(§§pop() * §§pop() - 1);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        addr81:
                        §§push(param3);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr81);
               }
               §§goto(addr84);
            }
            §§goto(addr128);
         }
         §§goto(addr51);
      }
   }
}
