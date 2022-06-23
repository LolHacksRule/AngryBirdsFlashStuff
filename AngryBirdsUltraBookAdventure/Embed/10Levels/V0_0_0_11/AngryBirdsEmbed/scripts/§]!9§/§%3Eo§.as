package §]!9§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?^§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §>o§ extends §>2§
   {
       
      
      private var §`'§:int = 0;
      
      public function §>o§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            if(_loc15_ || param2)
            {
               §32§ = param12;
               if(!(_loc14_ && param3))
               {
                  § !B§ = param13;
               }
            }
         }
      }
      
      override public function addDestructionParticles(param1:§5b§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§3v§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(§§pop() < _loc3_)
            {
               §§push(_loc4_);
               if(!_loc11_)
               {
                  §§push(§§pop() + Math.random() * (720 / _loc3_));
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc11_)
                     {
                        §§push((_loc4_ = §§pop()) / (180 / Math.PI));
                        if(_loc10_ || this)
                        {
                           §§push(Number(§§pop()));
                           if(_loc10_)
                           {
                              _loc6_ = §§pop();
                              §§push(-§2!@§.mW);
                              §§push(§#;§.§`!2§);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc11_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc10_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc11_)
                                       {
                                          _loc7_ = §§pop();
                                          §§push(Math.random() * -_loc7_);
                                          §§push(2);
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_)
                                             {
                                                addr113:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc11_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc10_)
                                                   {
                                                      addr119:
                                                      _loc7_ = §§pop();
                                                      §§push(-§2!@§.mH);
                                                      if(!_loc11_)
                                                      {
                                                         addr125:
                                                         §§push(§#;§.§`!2§);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            addr155:
                                                            §§push(Number(§§pop() * §§pop()));
                                                            if(!(_loc11_ && this))
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            §§push(Math.random() * -_loc8_);
                                                            if(!_loc11_)
                                                            {
                                                               addr166:
                                                               _loc8_ = Number(§§pop() + §§pop() * 2);
                                                               addr164:
                                                               addr162:
                                                               addr163:
                                                               addr165:
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  if(§32§ == "")
                                                                  {
                                                                     param1.§ t§(§2S§.§#X§,§5b§.§?D§,§2S§.§9!>§,§%;§().GetPosition().x + _loc7_,§%;§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§#!2§(§'!,§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                     if(_loc11_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(1);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(int(§§pop() + Math.floor(Math.random() * § !B§)));
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc9_ = §§pop();
                                                                  §§push(param1);
                                                                  §§push(§32§ + "_");
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop() + _loc9_);
                                                                  }
                                                                  §§pop().§9!§(§§pop(),§2S§.§#X§,§5b§.§?D§,§2S§.§9!>§,§%;§().GetPosition().x + _loc7_,§%;§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§#!2§(§'!,§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                  if(!_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         _loc8_ = §§pop();
                                                      }
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr166);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr163);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr119);
               }
               §§goto(addr125);
            }
            return;
         }
      }
      
      override public function addDamageParticles(param1:§5b§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§#;§ = §,!!§.§;4§;
         if(!_loc5_)
         {
            §§push(§4!;§ < §8!,§);
            if(!(_loc5_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc1_)
                  {
                     §§pop();
                     if(_loc6_ || _loc2_)
                     {
                        addr54:
                        if(§%;§() == null)
                        {
                           if(!_loc5_)
                           {
                              _loc1_.§=r§(this);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr67:
                                 _loc1_.§^!?§ = false;
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    addr78:
                                    §§push(x * §#;§.§`!2§);
                                    if(!_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc2_:* = §§pop();
                                    §§push(y * §#;§.§`!2§);
                                    if(!_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    §§push(§2S§.PARTICLE_NAME_BIRD_TRAIL1);
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§push(§§pop());
                                    }
                                    var _loc4_:* = §§pop();
                                    if(_loc6_)
                                    {
                                       §§push(this.§`'§);
                                       if(_loc6_)
                                       {
                                          §§push(1);
                                          if(_loc6_ || _loc1_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                addr130:
                                                §§push(§2S§.PARTICLE_NAME_BIRD_TRAIL2);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr178:
                                                      §§push(this);
                                                      §§push(this.§`'§ + 1);
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         §§push(§§pop() % 3);
                                                      }
                                                      §§pop().§`'§ = §§pop();
                                                      _loc1_.particles.§ t§(_loc4_,§5b§.§[M§,§2S§.§^r§,_loc2_,_loc3_,-1,"",§2S§.§`+§);
                                                   }
                                                   else
                                                   {
                                                      addr160:
                                                      _loc4_ = §§pop();
                                                      addr159:
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§goto(addr178);
                                                      }
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr159);
                                             }
                                             else
                                             {
                                                addr147:
                                                if(this.§`'§ == 2)
                                                {
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      §§push(§2S§.PARTICLE_NAME_BIRD_TRAIL3);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr159);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   addr207:
                                                   return;
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr130);
                                 }
                              }
                              §§goto(addr78);
                           }
                           return;
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr67);
                  }
               }
            }
            §§goto(addr54);
         }
         §§goto(addr78);
      }
   }
}
