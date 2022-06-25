package §_-lt§
{
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   
   public class §_-02m§ extends §_-eZ§
   {
       
      
      private var §_-Jh§:int = 0;
      
      public function §_-02m§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               §_-SE§ = param12;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            §_-nf§ = param13;
            if(!(_loc15_ && param1))
            {
               if(_loc14_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function addDestructionParticles(param1:§_-Zc§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§_-vw§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_)
            {
               if(§§pop() >= _loc3_)
               {
                  if(_loc11_)
                  {
                     continue;
                  }
                  if(!_loc11_)
                  {
                     if(!(_loc11_ && param1))
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc10_ || param1))
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              continue;
                           }
                           if(!_loc11_)
                           {
                              §§push(1);
                              if(_loc10_)
                              {
                                 addr222:
                                 §§push(int(§§pop() + Math.floor(Math.random() * §_-nf§)));
                                 while(true)
                                 {
                                    _loc9_ = §§pop();
                                    break loop2;
                                 }
                                 addr222:
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(-§_-U-§.mW);
                                 if(_loc10_ || _loc3_)
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(§_-00u§.§_-lY§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(Math.random() * -_loc7_);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(2);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr388:
                                                                  loop12:
                                                                  while(!_loc11_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop13:
                                                                     while(!(_loc11_ && this))
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(-§_-U-§.mH);
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              if(!(_loc10_ || _loc3_))
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(§_-00u§.§_-lY§);
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr304);
                                                                              continue loop13;
                                                                           }
                                                                           addr289:
                                                                           addr124:
                                                                           if(_loc10_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 addr304:
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(!(_loc10_ || param1))
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 _loc8_ = §§pop();
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    addr321:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(Math.random() * -_loc8_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr339:
                                                                                                §§push(2);
                                                                                                if(!(_loc10_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                addr356:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             _loc8_ = §§pop();
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 break loop12;
                                                                              }
                                                                              addr420:
                                                                           }
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              break loop1;
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr422:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr279:
                                                   if(!(_loc10_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr356);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Math.random() * (720 / _loc3_));
                                                   break loop5;
                                                }
                                                addr413:
                                             }
                                          }
                                          addr419:
                                          while(true)
                                          {
                                             §§goto(addr420);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr427);
                                    }
                                 }
                                 §§goto(addr388);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(param1);
                           §§push(§_-SE§ + "_");
                           if(_loc10_)
                           {
                              §§push(§§pop() + _loc9_);
                           }
                           §§pop().§_-0-N§(§§pop(),§_-Hv§.§_-0o§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x + _loc7_,§_-SJ§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-08L§(§_-o2§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                           continue loop1;
                        }
                     }
                     _loc5_++;
                     continue;
                  }
                  while(true)
                  {
                     if(!(_loc11_ && _loc2_))
                     {
                        §§goto(addr124);
                     }
                     §§goto(addr223);
                  }
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr413);
            }
            §§goto(addr222);
         }
      }
      
      override public function addDamageParticles(param1:§_-Zc§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§_-00u§ = § in§.§_-Dc§;
         if(!_loc5_)
         {
            §§push(§_-Kh§ < §_-8l§);
            if(!(_loc5_ && this))
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop13:
                     while(true)
                     {
                        §§push(§_-SJ§() == null);
                        if(!(_loc6_ || _loc3_))
                        {
                           break;
                        }
                        while(§§pop())
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              _loc1_.§_-5Q§(this);
                           }
                           while(true)
                           {
                              _loc1_.§_-02W§ = false;
                              if(_loc6_)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    break;
                                 }
                                 continue loop13;
                              }
                           }
                           return;
                        }
                        §§push(x * §_-00u§.§_-lY§);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(y * §_-00u§.§_-lY§);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        §§push(§_-Hv§.PARTICLE_NAME_BIRD_TRAIL1);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_)
                        {
                           §§push(this.§_-Jh§);
                           loop1:
                           while(true)
                           {
                              §§push(1);
                              loop2:
                              while(§§pop() != §§pop())
                              {
                                 §§push(this.§_-Jh§);
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(2);
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§_-Hv§.PARTICLE_NAME_BIRD_TRAIL3);
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || _loc1_)
                                          {
                                             addr213:
                                             §§push(§§pop());
                                             if(_loc6_ || this)
                                             {
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   addr159:
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§_-Jh§ + 1);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() % 3);
                                                      }
                                                      §§pop().§_-Jh§ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr172:
                                                            if(!(_loc6_ || this))
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr230:
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                         §§goto(addr172);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                §§goto(addr230);
                                             }
                                             addr229:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr229);
                                             §§push(§§pop());
                                             break loop2;
                                          }
                                          addr228:
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              while(true)
                              {
                                 §§goto(addr228);
                              }
                           }
                        }
                        §§goto(addr179);
                     }
                  }
                  addr86:
               }
               §§goto(addr61);
            }
            §§goto(addr86);
         }
         §§goto(addr73);
      }
   }
}
