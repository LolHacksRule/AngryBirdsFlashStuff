package §8u§
{
   import §+!?§.§"h§;
   import §,!C§.§implements§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§3X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §8j§ extends §=Z§
   {
      
      protected static const §[!;§:Boolean = false;
      
      protected static const §[!E§:Number = 2000;
      
      protected static const §"!9§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!;§ = false;
            if(_loc1_)
            {
               §[!E§ = 2000;
               if(!(_loc2_ && _loc2_))
               {
                  §"!9§ = 0.2;
               }
            }
         }
      }
      
      private var §;!<§:Number;
      
      private var §55§:Boolean = false;
      
      protected var §2!I§:int = 0;
      
      public function §8j§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            if(!_loc12_)
            {
               if(param10)
               {
                  if(_loc13_)
                  {
                     addr47:
                     §7!;§.mTryToScream = §44§.§;<§ + 1;
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function get §=t§() : Boolean
      {
         return this.§55§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc5_ && this))
         {
            _loc3_.bullet = true;
            if(!_loc5_)
            {
               _loc3_.angularDamping = 2;
            }
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§@^§ < §%!J§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr42:
                     §§pop();
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(Boolean(§-[§()));
                        if(!(_loc3_ && this))
                        {
                           addr70:
                           if(§§pop())
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(this);
                                 §§push(this.§;!<§);
                                 if(_loc2_ || this)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§;!<§ = §§pop();
                                 if(this.§;!<§ >= §[!E§)
                                 {
                                    if(_loc2_)
                                    {
                                       addr107:
                                       §§push(true);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    else
                                    {
                                       addr116:
                                       §§push(false);
                                       addr116:
                                    }
                                    return §§pop();
                                 }
                              }
                              §§goto(addr116);
                           }
                           else
                           {
                              this.§;!<§ = 0;
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr107);
                  }
                  addr115:
                  return §§pop();
               }
               §§goto(addr70);
            }
            §§goto(addr42);
         }
         §§goto(addr116);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:* = false;
         if(this.§55§)
         {
            if(§>!"§.toUpperCase() == "BIRD_WHITE")
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(true);
                  if(_loc4_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc4_ || _loc3_))
                     {
                        addr111:
                        if(§7!;§.mTryToFly)
                        {
                           if(!(_loc5_ && param1))
                           {
                              addr121:
                              §§push(true);
                              if(!_loc5_)
                              {
                                 addr124:
                                 _loc3_ = §§pop();
                                 §§goto(addr125);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     addr70:
                     §§pop();
                     if(!(_loc5_ && param1))
                     {
                        §§push(§>!"§.toUpperCase() == "BIRD_RED");
                        if(_loc4_)
                        {
                           §§goto(addr94);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr134);
            }
            else
            {
               §§push(§>!"§.toUpperCase() == "BIRD_YELLOW");
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        §§push(§>!"§.toUpperCase() == "BIRD_GREEN");
                     }
                     §§push(§§pop());
                     if(_loc4_ || this)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr94);
                     }
                  }
                  addr94:
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        addr98:
                        §§pop();
                        if(_loc4_ || param1)
                        {
                           §§goto(addr110);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr175);
                  }
                  addr110:
                  if(§>!"§.toUpperCase() == "BIRD_RED_BIG")
                  {
                     §§goto(addr111);
                  }
                  addr125:
                  if(_loc3_)
                  {
                     if(!(_loc5_ && this))
                     {
                        addr134:
                        if(!§7!;§.mTryToSpecial)
                        {
                           §7!;§.mTryToSpecial = true;
                           addr151:
                           _loc2_ = true;
                        }
                     }
                  }
                  else if(§7!;§.mTryToSpecial)
                  {
                     if(!(_loc5_ && param1))
                     {
                        §7!;§.mTryToSpecial = false;
                        if(!_loc5_)
                        {
                           if(§7!;§.mIsSpecial)
                           {
                              §7!;§.mIsSpecial = false;
                           }
                        }
                        §§goto(addr176);
                     }
                     addr175:
                     _loc2_ = true;
                  }
                  §§goto(addr176);
               }
            }
            §§goto(addr124);
         }
         §§goto(addr134);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            §§push(Boolean(§?n§().IsAwake()));
            §§push(Boolean(§?n§().IsAwake()));
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc5_ || this)
                  {
                     addr52:
                     if(§@^§ == §%!J§)
                     {
                        if(!§7!;§.mTryToFly)
                        {
                           §7!;§.mTryToFly = true;
                           if(!(_loc4_ && _loc3_))
                           {
                              _loc2_ = true;
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr75:
                                 if(§>!"§.toUpperCase() == "BIRD_GREEN")
                                 {
                                    addr79:
                                    §§push(param1);
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(this.§55§)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(2);
                                             if(!_loc4_)
                                             {
                                                addr106:
                                                §§push(§§pop() * §§pop());
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(360);
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr132:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         addr136:
                                                         §§push(§§pop() / 1000);
                                                         if(_loc5_ || this)
                                                         {
                                                            addr144:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr136);
                                                }
                                                _loc3_ = §§pop();
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §>X§(§ for§() - _loc3_);
                                                   addr247:
                                                   return _loc2_;
                                                   addr223:
                                                }
                                                else
                                                {
                                                   addr174:
                                                   §§push(this.§55§);
                                                   if(_loc5_)
                                                   {
                                                      addr179:
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                      else
                                                      {
                                                         if(§[!;§)
                                                         {
                                                            §'!G§();
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr192:
                                                               §§goto(addr223);
                                                            }
                                                            else
                                                            {
                                                               addr242:
                                                               §7!;§.mIsFlying = false;
                                                               _loc2_ = true;
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(!§%!@§());
                                                            if(_loc5_ || this)
                                                            {
                                                               addr204:
                                                               §§push(§§pop() && !§@1§());
                                                            }
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §>X§(0);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr144);
                                       }
                                       else
                                       {
                                          §§push(1);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr106);
                                             §§push(§§pop());
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr144);
                                 }
                                 else
                                 {
                                    §§push(§>!"§.toUpperCase() == "BIRD_WHITE");
                                    §§push(§>!"§.toUpperCase() == "BIRD_WHITE");
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr172:
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§goto(addr174);
                                       }
                                       §§goto(addr179);
                                    }
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr75);
                     }
                     else if(§7!;§.mTryToFly)
                     {
                        if(!(_loc4_ && param1))
                        {
                           §7!;§.mTryToFly = false;
                           if(!_loc4_)
                           {
                              if(§7!;§.mIsFlying)
                              {
                                 §§goto(addr242);
                              }
                              §§goto(addr247);
                           }
                        }
                        §§goto(addr242);
                     }
                  }
                  §§goto(addr247);
               }
               §§goto(addr52);
            }
            §§goto(addr172);
         }
         §§goto(addr79);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§!E§ = §"h§.§1C§;
         if(_loc8_)
         {
            §§push(§@^§ < §%!J§);
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && _loc1_))
                  {
                     §§pop();
                     §§goto(addr69);
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc7_)
               {
                  _loc1_.§%a§(this);
                  if(_loc7_ && _loc3_)
                  {
                  }
                  §§goto(addr69);
               }
               _loc1_.§?5§ = false;
               if(_loc8_)
               {
                  §§goto(addr69);
               }
            }
            §§push(x * §!E§.§#N§);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(y * §!E§.§#N§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc7_)
            {
               §§push(_loc1_.§?5§);
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(_loc1_.particles);
                        if(!(_loc7_ && _loc1_))
                        {
                           §§push(§,i§.§%Q§);
                           if(_loc8_)
                           {
                              §§push(§;x§.§4!D§);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(§,i§.§^_§);
                                 if(_loc8_ || this)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc7_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc8_ || this)
                                       {
                                          §§push(-1);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push("");
                                             if(_loc8_ || _loc1_)
                                             {
                                                §§push(§,i§.§5! §);
                                                if(_loc8_ || this)
                                                {
                                                   §§pop().§8"§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      _loc1_.§?5§ = false;
                                                      if(_loc8_ || _loc1_)
                                                      {
                                                         this.§2!I§ = 0;
                                                         if(!_loc7_)
                                                         {
                                                            addr356:
                                                            §§push(§2Y§() > §3X§.§,#§);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                  }
                                                                  addr377:
                                                                  if(§§pop())
                                                                  {
                                                                     addr378:
                                                                     §§push(-Math.PI);
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                        if(_loc8_ || _loc2_)
                                                                        {
                                                                           addr397:
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 addr416:
                                                                                 _loc6_ = Math.random();
                                                                                 addr413:
                                                                                 if(_loc7_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr473);
                                                                              }
                                                                              _loc1_.particles.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x,§?n§().GetPosition().y,1250,"",§,i§.§?Q§(§>!"§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                              §§goto(addr427);
                                                                           }
                                                                        }
                                                                        §§goto(addr416);
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr416);
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                            §§pop();
                                                            §§goto(addr377);
                                                            §§push(Math.random() < §"!9§);
                                                         }
                                                         else
                                                         {
                                                            addr302:
                                                            §§push(this);
                                                            §§push(this.§2!I§ + 1);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(§§pop() % 3);
                                                            }
                                                            §§pop().§2!I§ = §§pop();
                                                            §§push(_loc1_.particles);
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               addr326:
                                                               §§push(_loc4_);
                                                               if(_loc8_ || this)
                                                               {
                                                                  addr334:
                                                                  §§push(§;x§.§4!D§);
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     §§push(§,i§.§^_§);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr353:
                                                                        §§pop().§8"§(§§pop(),§§pop(),§§pop(),_loc2_,_loc3_,-1,"",§,i§.§5! §);
                                                                        addr351:
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr356);
                                                                        }
                                                                        §§goto(addr378);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      else
                                                      {
                                                         addr281:
                                                         §§push(§,i§.PARTICLE_NAME_BIRD_TRAIL2);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc8_)
                                                            {
                                                               addr288:
                                                               _loc4_ = §§pop();
                                                               if(_loc7_)
                                                               {
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                            else
                                                            {
                                                               addr301:
                                                               _loc4_ = §§pop();
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                   }
                                                   §§goto(addr416);
                                                }
                                                else
                                                {
                                                   addr251:
                                                   §§pop().§8"§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr356);
                                                   }
                                                }
                                                §§goto(addr416);
                                             }
                                          }
                                          else
                                          {
                                             addr239:
                                             §§push("");
                                             if(!_loc7_)
                                             {
                                                §§push(§,i§.§5! §);
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr378);
                                             }
                                             else
                                             {
                                                §§goto(addr351);
                                             }
                                          }
                                          §§goto(addr353);
                                       }
                                       else
                                       {
                                          addr236:
                                          §§push(-1);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr239);
                                          }
                                          else
                                          {
                                             §§goto(addr353);
                                          }
                                       }
                                       §§goto(addr353);
                                    }
                                    else
                                    {
                                       addr233:
                                       §§push(_loc3_);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr236);
                                       }
                                       else
                                       {
                                          §§goto(addr353);
                                       }
                                    }
                                    §§goto(addr353);
                                 }
                                 else
                                 {
                                    addr215:
                                    §§push(_loc2_);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§goto(addr233);
                                    }
                                    else
                                    {
                                       §§goto(addr353);
                                    }
                                 }
                                 §§goto(addr353);
                              }
                              else
                              {
                                 addr206:
                                 §§push(§,i§.§^_§);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§goto(addr215);
                                 }
                                 else
                                 {
                                    §§goto(addr353);
                                 }
                              }
                              §§goto(addr353);
                           }
                           §§goto(addr334);
                        }
                        §§goto(addr326);
                     }
                     §§goto(addr356);
                  }
                  else
                  {
                     if(§&1§ > 1)
                     {
                        §§push(_loc1_.particles);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(§,i§.§,!'§);
                           if(!_loc7_)
                           {
                              §§push(§;x§.§4!D§);
                              if(_loc8_ || _loc3_)
                              {
                                 §§goto(addr206);
                              }
                              §§goto(addr427);
                           }
                        }
                        else
                        {
                           §§goto(addr326);
                        }
                        §§goto(addr427);
                     }
                     else
                     {
                        §§push(§,i§.PARTICLE_NAME_BIRD_TRAIL1);
                        if(_loc8_ || this)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              _loc4_ = §§pop();
                              §§push(this.§2!I§);
                              if(!_loc7_)
                              {
                                 §§push(1);
                                 if(_loc8_ || _loc2_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§goto(addr281);
                                    }
                                    else
                                    {
                                       addr295:
                                       if(this.§2!I§ == 2)
                                       {
                                          §§push(§,i§.PARTICLE_NAME_BIRD_TRAIL3);
                                          if(_loc8_)
                                          {
                                             §§goto(addr301);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr301);
                                       }
                                    }
                                    §§goto(addr302);
                                 }
                              }
                              §§goto(addr295);
                           }
                        }
                        §§goto(addr301);
                     }
                     return;
                  }
                  §§goto(addr301);
               }
               §§goto(addr377);
            }
            §§goto(addr378);
         }
         addr69:
         if(_loc8_)
         {
            §§push(§?n§() == null);
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§7!;§.mTryToFly)
            {
               if(!(_loc1_ && this))
               {
                  §'!"§(§implements§.§#!3§);
                  if(_loc2_ || this)
                  {
                  }
                  §§goto(addr58);
               }
            }
            else
            {
               super.playScreamingSoundEffect();
            }
         }
         addr58:
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§55§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr72);
               }
               §'!"§(§implements§.§;c§);
               if(_loc3_)
               {
                  this.§55§ = true;
                  addr71:
                  §§push(true);
               }
               §§goto(addr71);
            }
            addr72:
            return §§pop();
         }
         §§goto(addr71);
      }
      
      private function §%y§(param1:int) : int
      {
         return Math.min(§"h§.§1C§.§#!#§,param1);
      }
      
      override public function addDestructionParticles(param1:§;x§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§;?§(false) + 1);
         var _loc4_:* = Number(90);
         if(_loc10_)
         {
            §§push(this.§%y§(_loc3_));
            if(_loc10_ || param1)
            {
               §§push(int(§§pop()));
               if(_loc10_ || this)
               {
                  _loc3_ = §§pop();
                  addr57:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            for(; _loc5_ < _loc3_; param1.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x + _loc7_,§?n§().GetPosition().y + _loc8_,1500,"",§,i§.§?Q§(§>!"§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20),if(!_loc10_)
            {
               break;
            },_loc5_++,if(_loc9_)
            {
               break;
            })
            {
               §§push(Number(_loc4_ + Math.random() * (720 / _loc3_)));
               §§push(Number(_loc4_ + Math.random() * (720 / _loc3_)));
               if(_loc10_ || _loc3_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(§§pop() / (180 / Math.PI));
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           _loc6_ = §§pop();
                           if(!(_loc9_ && param1))
                           {
                              §§push(-§7!;§.mW);
                              if(!(_loc9_ && param1))
                              {
                                 §§push(§!E§.§#N§);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc9_ && this))
                                    {
                                       addr137:
                                       §§push(_loc7_ = Number(§§pop()));
                                       if(_loc10_ || this)
                                       {
                                          §§push(Math.random() * -_loc7_);
                                          §§push(2);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() + §§pop() * §§pop());
                                             if(!_loc9_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc7_ = §§pop();
                                             if(!_loc9_)
                                             {
                                                addr165:
                                                §§push(-§7!;§.mH * §!E§.§#N§);
                                                if(!_loc9_)
                                                {
                                                   addr170:
                                                   §§push(Number(§§pop()));
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc9_ && this))
                                                   {
                                                      _loc8_ = §§pop();
                                                      addr203:
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         addr187:
                                                         §§push(Math.random() * -_loc8_);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            addr200:
                                                            §§push(§§pop() * 2);
                                                         }
                                                      }
                                                      _loc8_ = §§pop();
                                                      if(_loc9_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   addr202:
                                                   §§push(Number(§§pop() + §§pop()));
                                                }
                                                §§goto(addr203);
                                             }
                                             break;
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr187);
                           }
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr170);
               }
               §§goto(addr165);
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function addDamageParticles(param1:§;x§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc9_)
         {
            if(§@1§())
            {
               if(!_loc10_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(!_loc10_)
               {
                  return;
               }
            }
         }
         §§push(§2Y§() / 10);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc9_ || this)
         {
            §§push(_loc3_);
            if(!_loc10_)
            {
               addr67:
               §§push(§§pop() * §;?§(false));
               if(_loc9_)
               {
                  addr63:
                  §§push(§§pop() * 0.12);
               }
               var _loc4_:* = int(§§pop() + §§pop());
               var _loc5_:* = Number(90);
               if(_loc9_)
               {
                  §§push(param2);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(scale * scale);
                     if(!(_loc10_ && this))
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc10_)
                        {
                           param2 = §§pop();
                           addr130:
                           if(!_loc10_)
                           {
                              addr104:
                              §§push(_loc4_ * (3 + param2 / 20));
                           }
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc4_);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() >= §§pop() / 3)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(0);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             addr368:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   addr227:
                                                   §§push(_loc5_);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(Math.random() * (720 / _loc4_));
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               §§push(Number(§§pop()));
                                                               if(_loc9_)
                                                               {
                                                                  addr256:
                                                                  _loc5_ = §§pop();
                                                                  addr304:
                                                                  §§push(180 / Math.PI);
                                                                  if(_loc10_ && param2)
                                                                  {
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * (Math.random() * 0.5));
                                                                     addr309:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr310:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr311:
                                                                           while(true)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              §§goto(addr312);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr304:
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(0.5);
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           addr295:
                                                                           §§push(_loc3_);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr301:
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§goto(addr304);
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     addr312:
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      addr236:
                                                   }
                                                   §§goto(addr310);
                                                }
                                                addr369:
                                                while(true)
                                                {
                                                   param1.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x,§?n§().GetPosition().y,1250,"",§,i§.§?Q§(§>!"§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                   _loc6_++;
                                                   addr366:
                                                   while(true)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr312);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc9_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(Math.random() * (720 / _loc4_));
                                       if(_loc9_ || param2)
                                       {
                                          §§push(Number(§§pop() + §§pop()));
                                          if(!(_loc10_ && param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr236);
                                       }
                                    }
                                    §§goto(addr256);
                                 }
                                 §§goto(addr368);
                              }
                              break;
                           }
                           _loc6_ = §§pop();
                           §§goto(addr226);
                        }
                        _loc4_ = int(§§pop());
                        if(!(_loc10_ && param1))
                        {
                           addr117:
                           §§push(int(this.§%y§(_loc4_)));
                           if(_loc9_)
                           {
                              _loc4_ = §§pop();
                              if(!(_loc10_ && this))
                              {
                                 §§push(0);
                              }
                              §§goto(addr130);
                           }
                           _loc6_ = §§pop();
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr117);
               }
               §§goto(addr130);
            }
            §§goto(addr63);
         }
         §§goto(addr67);
      }
   }
}
