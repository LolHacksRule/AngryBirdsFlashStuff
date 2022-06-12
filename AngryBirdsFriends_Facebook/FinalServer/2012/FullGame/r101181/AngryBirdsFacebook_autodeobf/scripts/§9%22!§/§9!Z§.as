package §9"!§
{
   import §#!e§.§1"B§;
   import §#!e§.§2!L§;
   import §8g§.§3"6§;
   import §[!"§.§&0§;
   
   public class §9!Z§
   {
      
      public static const §5"$§:Number = 50;
      
      public static var §,"&§:Number = 0;
      
      public static const §,"3§:Number = 0.5;
      
      public static const §6§:Number = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5"$§ = 50;
            while(true)
            {
               §,"&§ = 0;
               while(!_loc2_)
               {
                  §,"3§ = 0.5;
                  while(_loc1_)
                  {
                     §6§ = 0;
                     if(!_loc2_)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public var §7T§:Number;
      
      public var §3!5§:Number;
      
      public var §^!1§:Number;
      
      public var §'I§:Number;
      
      public var §=!I§:Number;
      
      public var §@O§:§9"3§;
      
      public function §9!Z§(param1:§9"3§, param2:§1"B§)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:§2!L§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§3"6§ = null;
         if(!_loc10_)
         {
            super();
            while(true)
            {
               this.§@O§ = param1;
               loop1:
               for(; _loc11_ || this; while(true)
               {
                  if(_loc11_ || _loc3_)
                  {
                     this.§3!5§ = int.MIN_VALUE;
                     if(_loc11_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               },while(false)
               {
                  §§goto(addr41);
               },var _loc3_:* = 0,if(_loc11_ || param1)
               {
                  _loc3_ = 0;
               },while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc10_ && param1))
                  {
                     §§push(param2.§6X§);
                     if(!(_loc10_ && param1))
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc11_)
                           {
                              §§push(0);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              addr432:
                              if(§§pop() < param2.§-!e§)
                              {
                                 §§push((_loc9_ = param2.§!!A§(_loc3_)).x);
                                 if(!_loc10_)
                                 {
                                    §§push(this.§7T§);
                                    if(!_loc10_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc11_ || _loc3_)
                                          {
                                             this.§7T§ = _loc9_.x;
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr412:
                                                if(_loc9_.x > this.§3!5§)
                                                {
                                                   if(_loc11_ || this)
                                                   {
                                                      this.§3!5§ = _loc9_.x;
                                                      if(!_loc10_)
                                                      {
                                                         addr430:
                                                         _loc3_++;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr432);
                                                   }
                                                   addr435:
                                                   §§push(0.1);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§9"3§.§=k§);
                                                      if(_loc11_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr452:
                                                            §§push(§§pop() * §9"3§.§'"F§);
                                                            if(!_loc10_)
                                                            {
                                                               addr455:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc4_:* = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§7T§);
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§push(§§pop() - _loc4_);
                                                               }
                                                               §§pop().§7T§ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§3!5§);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     §§push(§§pop() + _loc4_);
                                                                  }
                                                                  §§pop().§3!5§ = §§pop();
                                                               }
                                                               addr585:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(§9"3§.§=k§);
                                                               if(_loc11_ || this)
                                                               {
                                                                  §§push(§9"3§.§'"F§);
                                                                  if(_loc11_)
                                                                  {
                                                                     addr538:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(this.§3!5§);
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           §§push(§§pop() - this.§7T§);
                                                                        }
                                                                     }
                                                                     §§pop().§=!I§ = §§pop();
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr538);
                                                            }
                                                         }
                                                         §§goto(addr455);
                                                      }
                                                   }
                                                   §§goto(addr452);
                                                   addr431:
                                                }
                                             }
                                          }
                                          §§goto(addr430);
                                       }
                                    }
                                 }
                                 §§goto(addr412);
                              }
                           }
                           §§goto(addr435);
                        }
                        else
                        {
                           _loc5_ = param2.§[W§(_loc3_);
                           if(_loc11_ || param2)
                           {
                              §§push(Number(0));
                              loop6:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc5_.left);
                                    while(true)
                                    {
                                       if(§§pop().toString() == "NaN")
                                       {
                                          §§push(§9"3§.§=k§);
                                          while(true)
                                          {
                                             §§push(4);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc11_ || this)
                                                {
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§9"3§.§'"F§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr318:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_.x);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(2);
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr254:
                                                                                    while(_loc11_)
                                                                                    {
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                if(_loc10_ && _loc3_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                §§push(_loc5_.x);
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc10_ && param1))
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                            if(_loc10_ && this)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr216:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                  {
                                                                                                                     addr226:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(!_loc10_)
                                                                                                                     {
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                     addr226:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr335:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.left);
                                                                                                                     break loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr341:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   loop40:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      addr338:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(4);
                                                                                                         addr339:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr340:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr341);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop40;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr226);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr333:
                                                                                             }
                                                                                             §§goto(addr335);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr338);
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr339);
                                          }
                                          continue;
                                       }
                                       §§goto(addr333);
                                    }
                                 }
                              }
                           }
                           §§goto(addr342);
                        }
                     }
                     §§goto(addr432);
                  }
                  break;
               },_loc3_ = §§pop(),if(!(_loc10_ && param1))
               {
                  §§goto(addr431);
               },§§goto(addr435))
               {
                  while(true)
                  {
                     this.§7T§ = int.MAX_VALUE;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function clear() : void
      {
      }
      
      public function §#!=§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(this.§^!1§);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param2);
                                 while(true)
                                 {
                                    §§push(this.§'I§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() + 50);
                                    }
                                    addr165:
                                    while(_loc3_)
                                    {
                                       §§push(§§pop() > §§pop());
                                    }
                                    continue loop1;
                                    loop13:
                                    for(; !(_loc4_ && param2); §§push(param1),if(_loc3_)
                                    {
                                       continue loop0;
                                    })
                                    {
                                       §§push(this.§7T§);
                                       while(_loc3_)
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop15:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   if(_loc4_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr89:
                                                               if(_loc3_ || this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     addr97:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        addr134:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§pop();
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  addr96:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  continue loop5;
                                                                  §§goto(addr89);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr24:
                                                                  §§push(false);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr97);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               addr172:
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                         §§goto(addr24);
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr169:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr170:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop15;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr172);
                                                            }
                                                         }
                                                      }
                                                      addr85:
                                                   }
                                                   §§goto(addr134);
                                                }
                                                §§goto(addr170);
                                                addr61:
                                                if(_loc4_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§goto(addr85);
                                                }
                                                §§goto(addr171);
                                             }
                                             continue loop3;
                                          }
                                          §§push(this.§3!5§);
                                          if(!(_loc3_ || param2))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() > §§pop());
                                          if(!_loc4_)
                                          {
                                             §§goto(addr61);
                                          }
                                          §§goto(addr97);
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr169);
                        }
                     }
                  }
               }
               if(_loc4_ && param1)
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr96);
      }
   }
}
