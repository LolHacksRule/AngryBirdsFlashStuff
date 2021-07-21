package §>!'§
{
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §?!-§.§'!V§;
   
   public class §,&§ extends §<!3§
   {
       
      
      private var §4!T§:int = 0;
      
      public function §,&§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function addDestructionParticles(param1:§<!r§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§'J§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            §§push(_loc4_);
            §§push(Math.random() * (720 / _loc3_));
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() + §§pop());
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                     _loc4_ = §§pop();
                     if(_loc10_ || this)
                     {
                        §§push(180 / Math.PI);
                        if(_loc10_)
                        {
                           addr81:
                           _loc6_ = §§pop() / §§pop();
                           if(_loc10_)
                           {
                              §§push(-§0!E§.mW);
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr98:
                                 §§push(Number(§§pop() * §7E§.§8!'§));
                                 if(_loc10_ || _loc2_)
                                 {
                                    addr107:
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          §§push(Math.random() * -_loc7_);
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             addr135:
                                             §§push(2);
                                             if(_loc10_)
                                             {
                                                addr140:
                                                §§push(Number(§§pop() + §§pop() * §§pop()));
                                                if(_loc10_ || this)
                                                {
                                                   addr148:
                                                   _loc7_ = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      §§push(-§0!E§.mH);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         addr161:
                                                         §§push(§7E§.§8!'§);
                                                         if(!_loc9_)
                                                         {
                                                            addr178:
                                                            addr165:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§push(Math.random() * -_loc8_);
                                                            if(_loc10_ || param1)
                                                            {
                                                               addr191:
                                                               §§push(§§pop() * 2);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               addr200:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc8_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               param1.§1&§(§!r§.§1T§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§!r§.§^!O§(§>p§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                               addr204:
                                                               if(!(_loc10_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc5_++;
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         _loc8_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr148);
                           }
                           break;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr135);
               }
               §§goto(addr200);
            }
            §§goto(addr81);
         }
      }
      
      override public function addDamageParticles(param1:§<!r§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§7E§ = §'!V§.§1!2§;
         if(!(_loc6_ && _loc3_))
         {
            §§push(§!!>§ < §1!s§);
            if(_loc5_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        addr48:
                        if(getBody() == null)
                        {
                           if(_loc5_)
                           {
                              addr51:
                              _loc1_.§,!H§(this);
                              if(_loc5_ || this)
                              {
                                 addr61:
                                 _loc1_.§7s§ = false;
                                 if(_loc6_ && _loc2_)
                                 {
                                    addr72:
                                    §§push(x * §7E§.§8!'§);
                                    if(!_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc2_:* = §§pop();
                                    §§push(y * §7E§.§8!'§);
                                    if(_loc5_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    §§push(§!r§.PARTICLE_NAME_BIRD_TRAIL1);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop());
                                    }
                                    var _loc4_:* = §§pop();
                                    §§push(this.§4!T§);
                                    if(_loc5_)
                                    {
                                       §§push(1);
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(§!r§.PARTICLE_NAME_BIRD_TRAIL2);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      addr157:
                                                      _loc4_ = §§pop();
                                                   }
                                                   §§goto(addr158);
                                                }
                                                _loc4_ = §§pop();
                                                addr158:
                                                §§push(this);
                                                §§push(this.§4!T§ + 1);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() % 3);
                                                }
                                                §§pop().§4!T§ = §§pop();
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr185:
                                                   _loc1_.particles.§1&§(_loc4_,§<!r§.§<[§,§!r§.§#!!§,_loc2_,_loc3_,-1,"",§!r§.§&!§);
                                                }
                                                return;
                                             }
                                             §§goto(addr185);
                                          }
                                          else
                                          {
                                             addr146:
                                             if(this.§4!T§ == 2)
                                             {
                                                §§push(§!r§.PARTICLE_NAME_BIRD_TRAIL3);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                              }
                              §§goto(addr72);
                           }
                           return;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr51);
                  }
               }
            }
            §§goto(addr48);
         }
         §§goto(addr61);
      }
   }
}
