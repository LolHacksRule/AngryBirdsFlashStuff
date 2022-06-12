package §9"%§
{
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   
   public class §&!g§ extends §&!r§
   {
      
      public static const §!" §:int = 1750;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!" § = 1750;
         }
      }
      
      private var §,"#§:int = 0;
      
      public function §&!g§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               § R§ = param12;
               loop1:
               while(!_loc15_)
               {
                  while(true)
                  {
                     §9"B§ = param13;
                     if(!_loc15_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function addDestructionParticles(param1:§^!f§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§;!"§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc11_ && _loc3_))
            {
               if(!(_loc11_ && param1))
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(!(_loc11_ && _loc2_))
                     {
                        if(!_loc11_)
                        {
                           if(_loc10_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(§ R§ == "")
                              {
                                 param1.§;!u§(§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + _loc7_,§=!y§().GetPosition().y + _loc8_,§!" § + Math.random() * 500,"",§,">§(§2!>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc11_ && param1)
                                    {
                                       loop3:
                                       while(_loc10_ || param1)
                                       {
                                          §§push(1);
                                          while(true)
                                          {
                                             §§push(int(§§pop() + Math.floor(Math.random() * §9"B§)));
                                             addr235:
                                             while(true)
                                             {
                                                _loc9_ = §§pop();
                                                addr236:
                                                addr243:
                                                while(!(_loc10_ || param1))
                                                {
                                                   loop25:
                                                   while(true)
                                                   {
                                                      §§push(-§"!&§.mW);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§push(§9"3§.§'"F§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr392:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc11_ && this))
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           addr408:
                                                                           while(true)
                                                                           {
                                                                              §§push(Math.random() * -_loc7_);
                                                                           }
                                                                           addr408:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(2);
                                                                           addr414:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr415:
                                                                              addr450:
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   break loop13;
                                                                                                }
                                                                                             }
                                                                                             addr433:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Math.random() * (720 / _loc3_));
                                                                                                addr461:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr462:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr455:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr464:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                addr465:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(180 / Math.PI);
                                                                                                   addr469:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      addr470:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr471:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr425:
                                                                                    }
                                                                                    §§goto(addr461);
                                                                                 }
                                                                                 §§goto(addr469);
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              break loop3;
                                                                           }
                                                                        }
                                                                        addr413:
                                                                     }
                                                                     §§goto(addr471);
                                                                  }
                                                               }
                                                               addr391:
                                                            }
                                                            §§goto(addr408);
                                                         }
                                                         addr383:
                                                      }
                                                      §§goto(addr391);
                                                   }
                                                }
                                                §§push(param1);
                                                §§push(§ R§ + "_");
                                                addr197:
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() + _loc9_);
                                                }
                                                §§pop().§4!P§(§§pop(),§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + _loc7_,§=!y§().GetPosition().y + _loc8_,§!" § + Math.random() * 500,"",§,">§(§2!>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                while(true)
                                                {
                                                   if(_loc10_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_++;
                                                         continue loop2;
                                                      }
                                                      addr78:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr243);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(-§"!&§.mH);
                                          if(!_loc11_)
                                          {
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push(§9"3§.§'"F§);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc10_ || param1)
                                                      {
                                                         addr276:
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        addr309:
                                                                        §§push(Math.random() * -_loc8_);
                                                                        if(_loc10_)
                                                                        {
                                                                           addr316:
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!(_loc11_ && this))
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       addr336:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr354:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc11_ && param1))
                                                                                                {
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr408);
                                                                                                }
                                                                                                §§goto(addr433);
                                                                                             }
                                                                                             §§goto(addr470);
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                       §§goto(addr413);
                                                                                    }
                                                                                    §§goto(addr414);
                                                                                 }
                                                                                 §§goto(addr464);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           §§goto(addr415);
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                         §§goto(addr425);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr336);
                                                }
                                                §§goto(addr462);
                                             }
                                             §§goto(addr392);
                                          }
                                          §§goto(addr276);
                                          §§goto(addr450);
                                       }
                                       continue loop1;
                                       addr209:
                                    }
                                    §§goto(addr78);
                                 }
                              }
                              §§goto(addr209);
                           }
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     §§push(_loc4_);
                  }
                  §§goto(addr455);
               }
               §§goto(addr217);
            }
            §§goto(addr235);
         }
      }
      
      override public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§9"3§ = §#6§.§6!z§;
         if(_loc6_ || _loc1_)
         {
            §§push(§[" § < §@!h§);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop12:
                     while(true)
                     {
                        §§push(§=!y§() == null);
                        if(_loc5_ && _loc1_)
                        {
                           break;
                        }
                        while(§§pop())
                        {
                           while(true)
                           {
                              _loc1_.§7">§(this);
                              §§goto(addr73);
                           }
                           continue loop12;
                        }
                        §§push(x * §9"3§.§'"F§);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(y * §9"3§.§'"F§);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        §§push(§'G§.PARTICLE_NAME_BIRD_TRAIL1);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:* = §§pop();
                        if(!_loc5_)
                        {
                           §§push(this.§,"#§);
                           loop2:
                           while(true)
                           {
                              §§push(1);
                              while(§§pop() != §§pop())
                              {
                                 §§push(this.§,"#§);
                                 if(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(2);
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc6_ || _loc1_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(§'G§.PARTICLE_NAME_BIRD_TRAIL3);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop());
                                          }
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   §§goto(addr147);
                                                }
                                                addr211:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                             }
                                             addr218:
                                          }
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr147);
                                       }
                                    }
                                    §§goto(addr211);
                                 }
                                 addr147:
                                 §§goto(addr146);
                              }
                              while(true)
                              {
                                 §§goto(addr218);
                              }
                           }
                        }
                        addr146:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§,"#§ + 1);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() % 3);
                           }
                           §§pop().§,"#§ = §§pop();
                           do
                           {
                              if(!_loc6_)
                              {
                                 break loop3;
                              }
                              _loc1_.particles.§;!u§(_loc4_,§^!f§.§?i§,§'G§.§9"4§,_loc2_,_loc3_,-1,"",§'G§.§9!q§);
                           }
                           while(_loc5_);
                           
                           if(!(_loc5_ && _loc2_))
                           {
                              break;
                           }
                           continue loop10;
                        }
                        return;
                     }
                  }
                  addr81:
               }
               §§goto(addr68);
            }
            §§goto(addr81);
         }
         addr73:
         while(true)
         {
            _loc1_.§!!B§ = false;
            if(!_loc5_)
            {
               if(_loc6_ || _loc2_)
               {
                  break;
               }
               continue loop12;
            }
            continue loop1;
         }
      }
   }
}
