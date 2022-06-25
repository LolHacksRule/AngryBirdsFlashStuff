package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §5i§.§4!]§;
   import §9E§.Sprite;
   
   public class §&u§ extends §4!H§
   {
       
      
      private var §@r§:int = 0;
      
      public function §&u§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               §`r§ = param12;
               while(!_loc15_)
               {
                  §`!b§ = param13;
                  if(_loc14_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function addDestructionParticles(param1:§,n§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§=U§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_ || this)
            {
               if(§§pop() >= _loc3_)
               {
                  if(!(_loc11_ && param1))
                  {
                     if(!(_loc11_ && _loc3_))
                     {
                        break;
                     }
                     loop19:
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           addr190:
                           if(!(_loc11_ && param1))
                           {
                              loop11:
                              while(true)
                              {
                                 _loc5_++;
                                 addr76:
                                 while(true)
                                 {
                                    if(_loc11_)
                                    {
                                       break loop11;
                                    }
                                    if(!(_loc11_ && this))
                                    {
                                       continue loop0;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       §§push(param1);
                                       §§push(§`r§ + "_");
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() + _loc9_);
                                       }
                                       §§pop().§[!3§(§§pop(),§6Q§.§"!?§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x + _loc7_,§+$§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§5r§(§@!p§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                       continue loop19;
                                       addr242:
                                       while(true)
                                       {
                                          _loc9_ = §§pop();
                                          continue loop12;
                                       }
                                    }
                                    §§goto(addr190);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr74);
                              }
                              addr74:
                              addr134:
                           }
                           else
                           {
                              addr416:
                              while(true)
                              {
                              }
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 §§goto(addr417);
                              }
                              addr417:
                              addr416:
                           }
                           while(true)
                           {
                              §§push(-§[!"§.mH);
                              if(!(_loc11_ && this))
                              {
                                 if(!_loc11_)
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(§-!7§.§8!r§);
                                       if(_loc10_ || this)
                                       {
                                          if(!(_loc11_ && param1))
                                          {
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         addr306:
                                                         _loc8_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            addr309:
                                                            if(!_loc11_)
                                                            {
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(Math.random() * -_loc8_);
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     addr330:
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr343:
                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    addr359:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(§`r§ != "")
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          param1.§=!K§(§6Q§.§"!?§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x + _loc7_,§+$§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§5r§(§@!p§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                          §§goto(addr134);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr453);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              §§goto(addr359);
                                                                           }
                                                                           §§goto(addr406);
                                                                        }
                                                                        §§goto(addr459);
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                               §§goto(addr460);
                                                            }
                                                            §§goto(addr415);
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr309);
                                             }
                                             §§goto(addr403);
                                          }
                                          §§goto(addr407);
                                       }
                                       §§goto(addr306);
                                    }
                                    §§goto(addr455);
                                 }
                                 §§goto(addr416);
                              }
                              §§goto(addr359);
                           }
                        }
                        §§goto(addr202);
                     }
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(_loc4_);
                  if(!(_loc11_ && param1))
                  {
                     §§goto(addr444);
                     §§push(Math.random() * (720 / _loc3_));
                  }
               }
               §§goto(addr452);
            }
            §§goto(addr242);
         }
      }
      
      override public function addDamageParticles(param1:§,n§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§-!7§ = §4!]§.§8C§;
         if(!_loc6_)
         {
            §§push(§%,§ < §0K§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr76:
                     while(true)
                     {
                        §§push(§+$§() == null);
                        if(!(_loc5_ || _loc1_))
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
               }
               §§push(x * §-!7§.§8!r§);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §-!7§.§8!r§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(§6Q§.PARTICLE_NAME_BIRD_TRAIL1);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               if(!(_loc6_ && this))
               {
                  addr222:
                  if(this.§@r§ != 1)
                  {
                     §§push(this.§@r§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(2);
                        if(_loc6_)
                        {
                           §§goto(addr222);
                        }
                        if(§§pop() == §§pop())
                        {
                           addr205:
                           §§push(§6Q§.PARTICLE_NAME_BIRD_TRAIL3);
                           if(!(_loc6_ && this))
                           {
                              if(_loc5_)
                              {
                                 addr217:
                                 _loc4_ = §§pop();
                                 addr158:
                                 §§push(this);
                                 §§push(this.§@r§ + 1);
                                 if(!(_loc6_ && _loc1_))
                                 {
                                    §§push(§§pop() % 3);
                                 }
                                 §§pop().§@r§ = §§pop();
                                 if(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc1_.particles.§=!K§(_loc4_,§,n§.§implements§,§6Q§.§,e§,_loc2_,_loc3_,-1,"",§6Q§.§-@§);
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                addr229:
                                                §§goto(addr158);
                                                addr229:
                                             }
                                             return;
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr158);
                                    }
                                    addr223:
                                    §§push(§6Q§.PARTICLE_NAME_BIRD_TRAIL2);
                                    if(!_loc6_)
                                    {
                                       addr228:
                                       _loc4_ = §§pop();
                                       §§goto(addr229);
                                    }
                                    §§goto(addr228);
                                 }
                                 addr218:
                                 §§goto(addr218);
                              }
                              §§goto(addr228);
                           }
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr223);
               }
               §§goto(addr229);
            }
         }
         while(true)
         {
            _loc1_.§3!+§(this);
            _loc1_.§4!$§ = false;
            if(_loc6_ && this)
            {
               continue;
            }
            if(!(_loc6_ && _loc1_))
            {
               break;
            }
            §§goto(addr76);
         }
      }
   }
}
