package §0x§
{
   public class §""4§ implements §?"3§
   {
       
      
      private var §2!+§:Number;
      
      private var §1K§:Number;
      
      private var §56§:Number;
      
      public function §""4§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§56§ = param1;
               while(!_loc5_)
               {
                  while(!(_loc5_ && param3))
                  {
                     this.§1K§ = param3;
                     if(_loc4_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§2!+§ = param2;
            §§goto(addr49);
         }
      }
      
      public function §3!z§(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(param2);
            if(_loc6_ || this)
            {
               if(§§pop() < 0)
               {
                  addr35:
                  §§push(this.§56§);
                  if(!_loc5_)
                  {
                     §§push(-§§pop());
                     if(_loc6_ || param2)
                     {
                        §§goto(addr69);
                     }
                     §§goto(addr55);
                  }
               }
               else
               {
                  §§push(this.§56§);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_ || param2)
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr68);
            }
            addr69:
            §§push(Number(§§pop()));
            if(_loc6_ || param1)
            {
               addr68:
               §§push(Number(§§pop()));
               addr55:
            }
            var _loc3_:* = §§pop();
            if(_loc6_ || param2)
            {
               §§push(param2);
               if(_loc6_)
               {
                  if(§§pop() < 0)
                  {
                     §§goto(addr93);
                  }
                  else
                  {
                     §§push(this.§2!+§);
                     if(_loc6_)
                     {
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr131);
               }
               §§goto(addr123);
            }
            addr93:
            §§push(this.§2!+§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(-§§pop());
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr110);
               }
               §§goto(addr118);
            }
            addr110:
            §§push(Number(§§pop()));
            if(!(_loc5_ && this))
            {
               addr131:
               §§push(Number(§§pop()));
               addr118:
            }
            else
            {
               addr123:
               §§push(Number(§§pop()));
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr131);
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(-§§pop());
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr144);
               }
               §§goto(addr177);
            }
            addr144:
            §§push((§§pop() + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)));
            if(_loc6_)
            {
               addr177:
               return §§pop() * (1 / this.§1K§);
            }
         }
         §§goto(addr35);
      }
      
      public function §85§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            §§push(param3);
            if(!(_loc6_ && param2))
            {
               if(§§pop() < 0)
               {
                  addr35:
                  §§push(-1);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc6_ && param3))
                     {
                        addr57:
                        var _loc4_:Number = §§pop();
                        §§push(param1);
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop() / (1 / this.§1K§));
                           if(_loc7_)
                           {
                              addr73:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           §§push(param2);
                           if(_loc7_)
                           {
                              §§push(_loc4_);
                              if(_loc7_ || this)
                              {
                                 §§push(this.§56§);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc6_ && param3))
                                    {
                                       §§push(_loc5_);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc6_ && param2))
                                          {
                                             addr119:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(this.§2!+§);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr139:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         addr142:
                                                         §§push(_loc5_);
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§goto(addr180);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr119);
                           }
                           addr180:
                           §§push(§§pop() * §§pop());
                           if(_loc7_ || param3)
                           {
                              addr158:
                              §§push(§§pop() * _loc5_);
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                           return §§pop() + §§pop();
                        }
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr57);
               }
               else
               {
                  §§push(1);
               }
               §§push(Number(§§pop()));
               if(_loc7_ || param2)
               {
                  §§goto(addr57);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr35);
      }
   }
}
