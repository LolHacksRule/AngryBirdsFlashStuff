package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §?s§.§8K§;
   import §@L§.§3!&§;
   
   public class §#!b§ extends §?!z§
   {
       
      
      private var §+!U§:Number = 0;
      
      public function §#!b§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function get launchForce() : Number
      {
         return §3!&§.§%"#§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§+!U§);
               loop1:
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(!(_loc7_ && this))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop32:
                                 while(true)
                                 {
                                    §§push(health < healthMax);
                                    if(!(_loc6_ || this))
                                    {
                                       break;
                                    }
                                    addr338:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr347:
                                          while(true)
                                          {
                                             this.§+!U§ = 0;
                                             addr350:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr347:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§+!U§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Number(§^`§().GetLinearVelocity().x));
                                                      loop9:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(Number(§^`§().GetLinearVelocity().y));
                                                            loop11:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(this.§+!U§);
                                                                  loop13:
                                                                  while(!_loc7_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §^`§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
                                                                              loop24:
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§push(this.§+!U§);
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                addr282:
                                                                                                this.§+!U§ = 0;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                                addr285:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr347);
                                                                                             }
                                                                                          }
                                                                                          addr275:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr58:
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             if(health != healthMax)
                                                                                             {
                                                                                                §§goto(addr25);
                                                                                             }
                                                                                             if(!(_loc7_ && param2))
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc7_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§push(param1);
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc7_ && param2)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(specialPowerUsed)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr99:
                                                                                                            if(!(_loc6_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            if(_loc7_ && this)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§push(2);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr127:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * Math.PI);
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     addr145:
                                                                                                                     §§push(2);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        addr153:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           §§push(1000);
                                                                                                                        }
                                                                                                                        addr189:
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           loop30:
                                                                                                                           for(; !_loc7_; §,3§(§[!G§() + _loc5_),if(_loc7_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },addr43:,if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           },while(true)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 §§goto(addr285);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§+!U§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc7_ && param2)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                          {
                                                                                                                                             break loop30;
                                                                                                                                          }
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                       addr171:
                                                                                                                                       if(!(_loc6_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr189);
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 addr269:
                                                                                                                              }
                                                                                                                              §§goto(addr43);
                                                                                                                           },continue loop12,addr232:)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                              §§goto(addr275);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              if(_loc7_ && param1)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              this.§+!U§ = 0;
                                                                                                                              §§goto(addr232);
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                           addr199:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              continue loop14;
                                                                                                                              §§goto(addr189);
                                                                                                                           }
                                                                                                                           addr249:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     if(_loc7_ && param1)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr171);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr189);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr153);
                                                                                                         }
                                                                                                         §§goto(addr145);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            §§goto(addr127);
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr153);
                                                                                                   }
                                                                                                   §§goto(addr99);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §^`§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
                                                                                                   }
                                                                                                   addr258:
                                                                                                }
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                             §§goto(addr199);
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§+!U§);
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr58);
                                             }
                                          }
                                       }
                                       §§goto(addr338);
                                    }
                                 }
                              }
                              addr376:
                           }
                           §§goto(addr345);
                        }
                        §§goto(addr376);
                     }
                  }
               }
               if(_loc6_ || param2)
               {
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr347);
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!(_loc5_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§goto(addr45);
                  }
               }
               var _loc4_:Number;
               if((_loc4_ = §^`§().GetLinearVelocity().x) != 0)
               {
                  if(_loc6_ || param3)
                  {
                     §§push(this);
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        §§push(-§§pop());
                        if(_loc6_ || this)
                        {
                           §§push(§§pop() * 1.5);
                        }
                     }
                     §§pop().§+!U§ = §§pop();
                  }
               }
               return true;
            }
            §§goto(addr45);
         }
         addr45:
         return false;
      }
   }
}
