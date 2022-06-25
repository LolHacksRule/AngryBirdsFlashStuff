package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §`w§.b2World;
   import §true§.§ _§;
   
   public class §7!Z§ extends §`!<§
   {
       
      
      private var §4!&§:int = 0;
      
      public function §7!Z§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               §4!c§ = param12;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §!!?§ = param13;
            if(_loc15_)
            {
               if(!(_loc14_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function addDestructionParticles(param1:§+F§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§#!g§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && _loc2_))
            {
               if(_loc11_)
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(!(_loc10_ && param1))
                     {
                        if(_loc11_)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(-§?!M§.mH);
                              if(!(_loc10_ && this))
                              {
                                 §§push(§^g§.§^!S§);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc10_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc11_ || this)
                                       {
                                          if(!_loc11_)
                                          {
                                             continue;
                                          }
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      if(_loc11_ || param1)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            addr302:
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(Math.random() * -_loc8_);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  addr321:
                                                                  §§push(2);
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     addr330:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr337:
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    addr347:
                                                                                    _loc8_ = Number(§§pop());
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§4!c§ == "")
                                                                                       {
                                                                                          param1.§ K§(§1!e§.§ !t§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x + _loc7_,§5b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"!J§(§<!]§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                          continue;
                                                                                       }
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(1);
                                                                                          addr225:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop() + Math.floor(Math.random() * §!!?§)));
                                                                                             addr233:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   §§push(§4!c§ + "_");
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc9_);
                                                                                                   }
                                                                                                   §§pop().§0!>§(§§pop(),§1!e§.§ !t§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x + _loc7_,§5b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"!J§(§<!]§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                                   addr217:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_++;
                                                                                                         addr76:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc10_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                         §§goto(addr219);
                                                                                                      }
                                                                                                      addr219:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr424);
                                                                              }
                                                                              §§goto(addr373);
                                                                           }
                                                                           §§goto(addr347);
                                                                        }
                                                                        §§goto(addr425);
                                                                     }
                                                                     §§goto(addr382);
                                                                  }
                                                                  §§goto(addr383);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr426);
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                   §§goto(addr362);
                                                }
                                                §§goto(addr384);
                                             }
                                             §§goto(addr321);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr302);
                                    }
                                    §§goto(addr337);
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr347);
                           }
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr76);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc10_ && _loc3_))
                     {
                        §§goto(addr422);
                        §§push(Math.random() * (720 / _loc3_));
                     }
                  }
                  §§goto(addr423);
               }
               §§goto(addr225);
            }
            §§goto(addr233);
         }
      }
      
      override public function addDamageParticles(param1:§+F§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§^g§ = § _§.§!6§;
         if(!(_loc5_ && this))
         {
            §§push(§%!R§ < §-!!§);
            if(_loc6_)
            {
               if(!§§pop())
               {
                  loop11:
                  while(true)
                  {
                     §§pop();
                     addr82:
                     while(true)
                     {
                        §§push(§5b§() == null);
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        continue loop11;
                     }
                  }
                  addr81:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        while(true)
                        {
                           _loc1_.§'Y§(this);
                        }
                        addr63:
                     }
                     while(true)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  else
                  {
                     §§push(x * §^g§.§^!S§);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(y * §^g§.§^!S§);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(§1!e§.PARTICLE_NAME_BIRD_TRAIL1);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     if(!(_loc5_ && this))
                     {
                        §§push(this.§4!&§);
                        loop2:
                        while(true)
                        {
                           §§push(1);
                           addr218:
                           while(§§pop() != §§pop())
                           {
                              continue loop2;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(§1!e§.PARTICLE_NAME_BIRD_TRAIL2);
                              if(!(_loc5_ && this))
                              {
                                 §§push(§§pop());
                              }
                              loop5:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 do
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§4!&§ + 1);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() % 3);
                                       }
                                       §§pop().§4!&§ = §§pop();
                                       loop8:
                                       while(!(_loc5_ && _loc1_))
                                       {
                                          _loc1_.particles.§ K§(_loc4_,§+F§.§%!W§,§1!e§.§]!e§,_loc2_,_loc3_,-1,"",§1!e§.§+Q§);
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(_loc6_ || _loc1_)
                                          {
                                             break loop7;
                                          }
                                          addr189:
                                          while(true)
                                          {
                                             §§push(§1!e§.PARTICLE_NAME_BIRD_TRAIL3);
                                             if(!_loc5_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop());
                                             }
                                             _loc4_ = §§pop();
                                             break loop8;
                                          }
                                       }
                                       continue loop4;
                                       addr214:
                                    }
                                 }
                                 while(!_loc6_);
                                 
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr189);
                  }
               }
               _loc1_.§"!j§ = false;
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr63);
      }
   }
}
