package §8a§
{
   import §4W§.§!]§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §[E§ extends §'!U§
   {
       
      
      private var §8k§:String = "";
      
      private var §7!X§:Number = 1.0;
      
      private var §;]§:Number = 1.0;
      
      public function §[E§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            super(param1,param2);
            while(true)
            {
               this.§8k§ = param3;
               addr50:
               if(_loc6_ && param3)
               {
                  continue;
               }
               return;
               addr57:
            }
         }
         while(true)
         {
            this.§7!X§ = param4;
            while(_loc7_)
            {
               this.§;]§ = param5;
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr57);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc6_ && param3))
                     {
                        addr43:
                        param1 = §§pop();
                        if(!(_loc6_ && this))
                        {
                           addr51:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!_loc6_)
                                 {
                                    addr59:
                                    if(_loc4_ = param2.getChildByName(this.§8k§))
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§7!X§);
                                          if(_loc5_ || param3)
                                          {
                                             §§push(this.§;]§);
                                             if(!_loc6_)
                                             {
                                                §§push(this.§7!X§);
                                                if(_loc5_ || param2)
                                                {
                                                   addr119:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(this.§+r§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§7!X§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.§;]§);
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§push(this.§7!X§);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr159:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc5_ || this)
                                                               {
                                                                  addr157:
                                                                  §§push(§§pop() * this.§+r§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr183:
                                                                     §§push(false);
                                                                     if(!_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr187:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr59);
               }
               §§goto(addr51);
            }
            §§goto(addr43);
         }
         §§goto(addr183);
      }
      
      private function §+r§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
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
         if(!(_loc3_ && this))
         {
            §§push(§§pop() - this.time);
            if(_loc4_)
            {
               §§push(§§pop() / duration);
               if(!_loc3_)
               {
                  addr48:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || param1)
               {
                  addr177:
                  §§push(2);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr178:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  addr177:
               }
               while(true)
               {
                  _loc2_ = §§pop();
               }
               addr179:
            }
            loop3:
            while(true)
            {
               §§push(_loc2_);
               loop4:
               while(true)
               {
                  §§push(1);
                  addr135:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc3_ && _loc2_)
                           {
                              continue loop3;
                           }
                           return Math.pow(_loc2_,3) / 2;
                        }
                        else
                        {
                           loop6:
                           while(true)
                           {
                              addr98:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    continue loop4;
                                 }
                                 addr127:
                                 loop8:
                                 do
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§push((Math.pow(_loc2_,3) + 2) / 2);
                                       if(!(_loc3_ && this))
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 while(!(_loc4_ || param1));
                                 
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              continue loop4;
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr48);
      }
      
      override public function clone() : §'!U§
      {
         return new §[E§(time,duration,this.§8k§,this.§7!X§,this.§;]§);
      }
   }
}
