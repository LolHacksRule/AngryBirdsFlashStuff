package §=!7§
{
   import § `§.§2w§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   
   public class §+!R§ extends §%f§
   {
       
      
      private var §8?§:String = "";
      
      private var §6!<§:Number = 1.0;
      
      private var §?G§:Number = 1.0;
      
      public function §+!R§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§8?§ = param3;
            while(true)
            {
               this.§6!<§ = param4;
               while(_loc6_ || this)
               {
                  continue loop0;
                  this.§?G§ = param5;
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_ || this)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(_loc5_)
                        {
                           addr51:
                           §§push(param1);
                           if(_loc6_)
                           {
                           }
                           addr151:
                           if(§§pop() >= this.time + duration)
                           {
                              if(!_loc6_)
                              {
                                 addr168:
                                 §§push(false);
                                 if(!_loc6_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr172:
                                 return true;
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr172);
                     }
                     if(§§pop() > this.time)
                     {
                        if(!_loc6_)
                        {
                           if(_loc4_ = param2.getChildByName(this.§8?§))
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 §§push(this.§6!<§);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(this.§?G§);
                                    if(!_loc6_)
                                    {
                                       §§push(this.§6!<§);
                                       if(_loc5_ || param2)
                                       {
                                          addr115:
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc6_ && param3))
                                          {
                                             addr113:
                                             §§push(§§pop() * this.§"!<§(param1));
                                          }
                                          §§pop().scaleX = §§pop() + §§pop();
                                          if(_loc5_ || this)
                                          {
                                             addr123:
                                             §§push(_loc4_);
                                             §§push(this.§6!<§);
                                             if(_loc5_)
                                             {
                                                §§push(this.§?G§);
                                                if(_loc5_)
                                                {
                                                   §§push(this.§6!<§);
                                                   if(_loc5_ || param3)
                                                   {
                                                      addr149:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         addr147:
                                                         §§push(§§pop() * this.§"!<§(param1));
                                                      }
                                                      §§pop().scaleY = §§pop() + §§pop();
                                                      §§goto(addr151);
                                                      §§push(param1);
                                                   }
                                                }
                                                §§goto(addr147);
                                             }
                                          }
                                          §§goto(addr149);
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr123);
                           }
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr168);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr172);
      }
      
      private function §"!<§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(duration <= 0)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc4_ && this))
            {
               addr48:
               §§push(§§pop() / duration);
               if(_loc3_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  §§push(2);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     loop5:
                     for(; _loc3_ || _loc3_; §§push(2),if(_loc4_ && _loc2_)
                     {
                        continue;
                     },§§push(§§pop() - §§pop()),if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr104);
                           §§push(Number(§§pop()));
                        }
                        addr143:
                        while(!(_loc3_ || this))
                        {
                           §§goto(addr173);
                        }
                        return §§pop();
                     },§§goto(addr104))
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 continue loop5;
                              }
                              addr104:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                    }
                                    addr174:
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       break loop6;
                                    }
                                    addr172:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr173:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr174);
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§push(Math.pow(_loc2_,3) / 2);
                           §§goto(addr143);
                        }
                     }
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr137);
         }
         §§goto(addr48);
      }
      
      override public function clone() : §%f§
      {
         return new §+!R§(time,duration,this.§8?§,this.§6!<§,this.§?G§);
      }
   }
}
