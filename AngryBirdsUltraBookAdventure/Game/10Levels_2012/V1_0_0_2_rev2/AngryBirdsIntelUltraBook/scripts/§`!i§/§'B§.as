package §`!i§
{
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §'B§ extends §8d§
   {
       
      
      private var §!0§:String = "";
      
      private var §%!V§:Number = 1.0;
      
      private var §&!u§:Number = 1.0;
      
      public function §'B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§!0§ = param3;
            while(true)
            {
               this.§%!V§ = param4;
               while(_loc7_)
               {
                  continue loop0;
                  this.§&!u§ = param5;
                  if(!(_loc6_ && param2))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!(_loc6_ && param3))
         {
            §§push(param1);
            if(!(_loc6_ && param3))
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && param1))
                  {
                     addr46:
                     §§push(Number(this.time + duration));
                     if(_loc5_ || param1)
                     {
                        param1 = §§pop();
                        if(!_loc6_)
                        {
                           addr61:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              addr64:
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§!0§))
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§%!V§);
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(this.§&!u§);
                                             if(!_loc6_)
                                             {
                                                §§push(this.§%!V§);
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr125:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr123:
                                                      §§push(§§pop() * this.§'X§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§%!V§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(this.§&!u§);
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§push(this.§%!V§);
                                                            if(_loc5_)
                                                            {
                                                               addr168:
                                                               addr169:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  §§push(this.§'X§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr183:
                                                                     §§push(false);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr192:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr168);
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr192);
               }
               §§goto(addr61);
            }
            §§goto(addr64);
         }
         §§goto(addr46);
      }
      
      private function §'X§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(duration <= 0)
            {
               if(!_loc3_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_)
            {
               addr34:
               §§push(§§pop() / duration);
               if(_loc4_)
               {
                  addr38:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     §§push(2);
                     addr172:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr173:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr174:
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                        }
                     }
                  }
                  addr171:
               }
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || this)
                  {
                     §§push(1);
                     loop5:
                     for(; _loc4_ || param1; §§push(2),if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     },§§push(§§pop() - §§pop()),if(!(_loc3_ && param1))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ && param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr169);
                              addr121:
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr174);
                     },§§goto(addr121))
                     {
                        if(§§pop() < §§pop())
                        {
                           addr160:
                           if(!_loc4_)
                           {
                              continue loop4;
                           }
                           §§push(Math.pow(_loc2_,3) / 2);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              addr71:
                              addr169:
                              while(_loc4_ || _loc3_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr173);
                              }
                           }
                        }
                     }
                     §§goto(addr172);
                  }
                  return §§pop();
               }
            }
            §§goto(addr38);
         }
         §§goto(addr34);
      }
      
      override public function clone() : §8d§
      {
         return new §'B§(time,duration,this.§!0§,this.§%!V§,this.§&!u§);
      }
   }
}
