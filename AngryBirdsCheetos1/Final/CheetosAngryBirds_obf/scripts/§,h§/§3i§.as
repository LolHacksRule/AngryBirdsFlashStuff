package §,h§
{
   import §!X§.§86§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §?m§.§7?§;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §3i§ extends §+0§
   {
       
      
      private var §"!?§:int = 0;
      
      public function §3i§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§'!+§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(!(_loc9_ && _loc2_))
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     if(_loc10_ || _loc3_)
                     {
                        break;
                     }
                     loop18:
                     while(true)
                     {
                        §§push(-§2P§.mW);
                        loop6:
                        while(true)
                        {
                           §§push(§86§.§7!4§);
                           if(_loc10_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              loop7:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop9:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(Math.random() * -_loc7_);
                                          addr279:
                                          while(_loc10_)
                                          {
                                             §§push(2);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr283:
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr284:
                                                   loop14:
                                                   while(!(_loc9_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop15:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(-§2P§.mH);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(§86§.§7!4§);
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc9_ && param1)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  addr242:
                                                                  addr242:
                                                                  if(!_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc10_ || _loc2_))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        param1.addParticle(§7o§.§6!D§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x + _loc7_,§?!7§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§7o§.§3E§(§2!1§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                        addr131:
                                                                        while(true)
                                                                        {
                                                                           _loc5_++;
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr333:
                                                                  addr333:
                                                                  while(true)
                                                                  {
                                                                     §§push(180 / Math.PI);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr211:
                                                                  if(!(_loc10_ || this))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  addr338:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     break loop14;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr239:
                                                               if(_loc9_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             §§goto(addr333);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr283);
                        }
                     }
                  }
                  §§goto(addr131);
               }
               §§goto(addr75);
            }
            else
            {
               §§push(_loc4_);
               if(!_loc9_)
               {
                  §§goto(addr305);
                  §§push(Math.random() * (720 / _loc3_));
               }
            }
            §§goto(addr313);
         }
      }
      
      override public function addDamageParticles(param1:§<2§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§86§ = §7?§.§4!H§;
         if(!_loc5_)
         {
            §§push(§,!&§ < §+?§);
            if(_loc6_ || this)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr82:
                     loop11:
                     while(true)
                     {
                        §§push(§?!7§() == null);
                        if(_loc5_ && _loc2_)
                        {
                           continue;
                        }
                        while(§§pop())
                        {
                           if(_loc6_ || _loc2_)
                           {
                              _loc1_.§-M§(this);
                              _loc1_.§+"§ = false;
                              return;
                           }
                           continue loop11;
                        }
                        §§push(x * §86§.§7!4§);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(y * §86§.§7!4§);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        §§push(§7o§.PARTICLE_NAME_BIRD_TRAIL1);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(this.§"!?§);
                           loop1:
                           while(true)
                           {
                              §§push(1);
                              loop2:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(this.§"!?§);
                                    if(!_loc5_)
                                    {
                                       §§push(2);
                                       if(_loc6_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             addr189:
                                             while(true)
                                             {
                                                §§push(§7o§.PARTICLE_NAME_BIRD_TRAIL3);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(§§pop());
                                                }
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         break loop2;
                                                      }
                                                      addr209:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr233);
                                                   }
                                                }
                                                §§goto(addr234);
                                             }
                                             addr189:
                                          }
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§7o§.PARTICLE_NAME_BIRD_TRAIL2);
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr234:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                       }
                                    }
                                    addr233:
                                 }
                                 while(true)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr234);
                              }
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§"!?§ + 1);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() % 3);
                                 }
                                 §§pop().§"!?§ = §§pop();
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr235);
                              }
                           }
                        }
                        §§goto(addr189);
                     }
                  }
                  addr81:
               }
               §§goto(addr56);
            }
            §§goto(addr81);
         }
         §§goto(addr82);
      }
   }
}
