package §8!O§
{
   public class §`§
   {
       
      
      public function §`§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_)
         {
            §§push(-§§pop());
            if(_loc7_ || §`§)
            {
               addr28:
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(_loc7_ || param1)
               {
                  §§goto(addr76);
               }
               §§push(§§pop() + §§pop());
            }
            addr76:
            §§push(§§pop() * §§pop());
            if(!_loc6_)
            {
               return param2;
            }
         }
         §§goto(addr28);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || param1)
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(!_loc6_)
            {
               addr64:
               return §§pop() + param2;
            }
         }
         §§goto(addr64);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            if(!(_loc7_ && param3))
            {
               §§push(param4);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() / 2);
                  if(!(_loc7_ && param1))
                  {
                     addr43:
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 addr60:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(_loc6_ || §`§)
                              {
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          addr81:
                                          §§push(param3);
                                          if(!_loc7_)
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc7_ && param2))
                                             {
                                                §§push(2);
                                                if(!(_loc7_ && §`§))
                                                {
                                                   §§goto(addr110);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr152);
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§push(param3);
                                    if(_loc6_)
                                    {
                                       §§goto(addr157);
                                    }
                                    §§goto(addr191);
                                 }
                                 addr110:
                                 §§push(§§pop() / §§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    addr118:
                                    §§push(Math.sqrt(1 - param1 * param1) - 1);
                                    if(_loc6_)
                                    {
                                       addr128:
                                       §§push(§§pop() * §§pop());
                                       if(_loc6_ || §`§)
                                       {
                                          §§push(param2);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc7_ && param2))
                                             {
                                                addr152:
                                                return §§pop();
                                             }
                                             addr191:
                                             §§push(§§pop() + param2);
                                          }
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 else
                                 {
                                    addr157:
                                    §§push(§§pop() / 2);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                       if(_loc6_)
                                       {
                                          §§goto(addr191);
                                       }
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr60);
                        }
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr128);
               }
               §§goto(addr43);
            }
            §§goto(addr191);
         }
         §§goto(addr81);
      }
   }
}
