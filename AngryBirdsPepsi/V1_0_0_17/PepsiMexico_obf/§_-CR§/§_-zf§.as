package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-HU§.§_-6n§;
   import §_-Iw§.b2BodyDef;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-hU§.§_-MB§;
   
   public class §_-zf§ extends §_-kw§
   {
      
      protected static const §_-ko§:Boolean = false;
      
      protected static const §_-KH§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-ko§ = false;
            if(_loc1_)
            {
               §_-KH§ = 2000;
            }
         }
      }
      
      private var §_-em§:Number;
      
      private var §_-xR§:Boolean = false;
      
      private var §_-WR§:int = 0;
      
      public function §_-zf§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            if(!_loc13_)
            {
               if(param10)
               {
                  if(_loc12_ || param3)
                  {
                     addr52:
                     §_-e7§.mTryToScream = §_-l9§.§_-ey§ + 1;
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function get §_-mb§() : Boolean
      {
         return this.§_-xR§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc4_ || param1)
         {
            _loc3_.§_-eK§ = true;
            if(!_loc5_)
            {
               _loc3_.§_-K5§ = 2;
            }
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§_-Qm§ < §_-FF§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(_loc2_)
               {
                  §§pop();
                  §§push(Boolean(§_-AA§()));
                  if(_loc2_ || param1)
                  {
                     addr40:
                     if(§§pop())
                     {
                        §§push(this);
                        §§push(this.§_-em§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§_-em§ = §§pop();
                        if(_loc2_)
                        {
                           if(this.§_-em§ >= §_-KH§)
                           {
                              if(!_loc3_)
                              {
                              }
                           }
                           §§goto(addr78);
                        }
                        §§push(true);
                        if(_loc2_)
                        {
                           §§goto(addr72);
                        }
                        else
                        {
                           §§goto(addr78);
                        }
                     }
                     else
                     {
                        this.§_-em§ = 0;
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr72);
               }
               addr78:
               return false;
            }
            §§goto(addr40);
         }
         addr72:
         return §§pop();
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         §§push(this.§_-xR§);
         if(_loc4_ || this)
         {
            if(§§pop())
            {
               if(§_-L1§.toUpperCase() == "BIRD_WHITE")
               {
                  §§push(true);
                  if(!(_loc5_ && this))
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ && param1)
                     {
                     }
                     addr122:
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              if(!§_-e7§.mTryToSpecial)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    §_-e7§.mTryToSpecial = true;
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr154:
                                       _loc2_ = true;
                                       addr200:
                                       §§push(_loc2_);
                                       addr155:
                                       addr153:
                                    }
                                    else
                                    {
                                       addr184:
                                       §§push(true);
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr199:
                                          _loc2_ = §§pop();
                                          §§goto(addr200);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 addr166:
                                 §_-e7§.mTryToSpecial = false;
                                 if(§_-e7§.mIsSpecial)
                                 {
                                    if(_loc4_)
                                    {
                                       §_-e7§.mIsSpecial = false;
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§goto(addr184);
                                       }
                                    }
                                 }
                                 §§goto(addr200);
                                 §§goto(addr200);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr166);
                        }
                        else
                        {
                           if(§_-e7§.mTryToSpecial)
                           {
                              if(_loc5_ && _loc3_)
                              {
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr199);
                  }
                  else
                  {
                     addr79:
                     §§pop();
                     if(!_loc5_)
                     {
                        addr86:
                        §§push(§_-L1§.toUpperCase() == "BIRD_RED");
                        if(!(§_-L1§.toUpperCase() == "BIRD_RED"))
                        {
                           §§pop();
                           if(_loc4_ || param1)
                           {
                              addr107:
                              if(§_-L1§.toUpperCase() == "BIRD_RED_BIG")
                              {
                                 if(§_-e7§.mTryToFly)
                                 {
                                    if(_loc4_)
                                    {
                                       _loc3_ = true;
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr122);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr153);
               }
               else
               {
                  §§push(§_-L1§.toUpperCase() == "BIRD_YELLOW");
                  §§push(§_-L1§.toUpperCase() == "BIRD_YELLOW");
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           §§push(§_-L1§.toUpperCase() == "BIRD_GREEN");
                           if(_loc4_ || _loc2_)
                           {
                              addr70:
                              §§push(§§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 addr78:
                                 if(!§§pop())
                                 {
                                    §§goto(addr79);
                                 }
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr78);
               }
            }
            §§goto(addr154);
         }
         §§goto(addr70);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         §§push(Boolean(§_-zq§().IsAwake()));
         if(_loc4_ || this)
         {
            §§push(§§pop());
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     §§pop();
                     if(!(_loc5_ && param1))
                     {
                        §§push(§_-Qm§ == §_-FF§);
                        if(_loc4_ || param1)
                        {
                           addr57:
                           if(§§pop())
                           {
                              if(!§_-e7§.mTryToFly)
                              {
                                 addr61:
                                 §_-e7§.mTryToFly = true;
                                 §§push(true);
                                 if(_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       addr70:
                                       if(§_-L1§.toUpperCase() == "BIRD_GREEN")
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(param1);
                                             if(!(_loc5_ && this))
                                             {
                                                if(this.§_-xR§)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(2);
                                                      if(!_loc5_)
                                                      {
                                                         addr98:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_)
                                                         {
                                                            addr101:
                                                            §§push(360);
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  addr125:
                                                                  §§push(§§pop() / 1000);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     addr133:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               _loc3_ = §§pop();
                                                               addr135:
                                                               §_-JM§(§_-Js§() - _loc3_);
                                                               if(!_loc5_)
                                                               {
                                                                  addr234:
                                                                  return _loc2_;
                                                                  addr210:
                                                               }
                                                               else
                                                               {
                                                                  addr214:
                                                                  §_-e7§.mTryToFly = false;
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(§_-e7§.mIsFlying)
                                                                     {
                                                                        §_-e7§.mIsFlying = false;
                                                                        addr232:
                                                                        _loc2_ = true;
                                                                     }
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                else
                                                {
                                                   §§push(1);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr98);
                                                      §§push(§§pop());
                                                   }
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr101);
                                          }
                                          else
                                          {
                                             addr199:
                                             if(!§_-Rb§())
                                             {
                                                if(_loc4_)
                                                {
                                                   addr205:
                                                   §_-JM§(0);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr232);
                                                   }
                                                }
                                                §§goto(addr234);
                                             }
                                          }
                                          §§goto(addr210);
                                       }
                                       else
                                       {
                                          addr148:
                                          §§push(§_-L1§.toUpperCase() == "BIRD_WHITE");
                                          §§push(§_-L1§.toUpperCase() == "BIRD_WHITE");
                                          if(!_loc5_)
                                          {
                                             addr151:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(this.§_-xR§);
                                                   if(_loc4_ || this)
                                                   {
                                                      addr170:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      else if(§_-ko§)
                                                      {
                                                         addr181:
                                                         §_-gX§();
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr232);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      else
                                                      {
                                                         addr190:
                                                         §§push(!§_-fw§());
                                                         if(!§_-fw§())
                                                         {
                                                            addr191:
                                                            §§pop();
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§goto(addr199);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr190);
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr70);
                           }
                           else if(§_-e7§.mTryToFly)
                           {
                              §§goto(addr214);
                           }
                           §§goto(addr234);
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr190);
               }
               §§goto(addr57);
            }
            §§goto(addr151);
         }
         §§goto(addr148);
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc1_:§_-tL§ = §_-MB§.§_-A7§;
         §§push(§_-Qm§ < §_-FF§);
         if(_loc6_)
         {
            §§push(§§pop());
            if(_loc6_ || _loc1_)
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(Boolean(this.§_-xR§));
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(§§pop());
                     if(_loc6_ || this)
                     {
                        if(§§pop())
                        {
                           addr55:
                           §§pop();
                           addr59:
                           §§push(§_-L1§ == "BIRD_WHITE");
                           if(!(§_-L1§ == "BIRD_WHITE"))
                           {
                              if(!_loc5_)
                              {
                                 §§pop();
                                 §§push(§_-zq§() == null);
                              }
                           }
                        }
                     }
                     §§goto(addr59);
                  }
                  if(§§pop())
                  {
                     _loc1_.§_-iF§(this);
                     _loc1_.§_-aE§ = false;
                     if(_loc6_)
                     {
                        return;
                     }
                  }
                  §§push(x * §_-tL§.§_-7m§);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * §_-tL§.§_-7m§);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc1_.§_-aE§)
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc1_.particles);
                        if(_loc6_)
                        {
                           §§push(§_-UW§.§_-H9§);
                           if(_loc6_)
                           {
                              §§push(§_-Gb§.§_-kL§);
                              if(_loc6_)
                              {
                                 §§push(§_-UW§.§_-eQ§);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          §§push(-1);
                                          if(!_loc5_)
                                          {
                                             §§push("");
                                             if(_loc6_)
                                             {
                                                §§push(§_-UW§.§_-YC§);
                                                if(_loc6_ || this)
                                                {
                                                   §§pop().§_-JY§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      _loc1_.§_-aE§ = false;
                                                      if(_loc6_)
                                                      {
                                                         this.§_-WR§ = 0;
                                                         if(!_loc6_)
                                                         {
                                                            addr305:
                                                            §§push(this);
                                                            §§push(this.§_-WR§ + 1);
                                                            if(!(_loc5_ && _loc1_))
                                                            {
                                                               §§push(§§pop() % 3);
                                                            }
                                                            §§pop().§_-WR§ = §§pop();
                                                            _loc1_.particles.§_-JY§(_loc4_,§_-Gb§.§_-kL§,§_-UW§.§_-eQ§,_loc2_,_loc3_,-1,"",§_-UW§.§_-YC§);
                                                            addr289:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr232:
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                else
                                                {
                                                   §§goto(addr224);
                                                }
                                             }
                                             else
                                             {
                                                addr215:
                                                §§push(§_-UW§.§_-YC§);
                                                if(!(_loc5_ && _loc1_))
                                                {
                                                   addr224:
                                                   §§pop().§_-JY§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§goto(addr232);
                                                   }
                                                   else
                                                   {
                                                      addr253:
                                                      §§push(this.§_-WR§);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(1);
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§push(§_-UW§.PARTICLE_NAME_BIRD_TRAIL2);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  addr280:
                                                                  §§push(§§pop());
                                                                  if(!(_loc6_ || _loc1_))
                                                                  {
                                                                     addr304:
                                                                     _loc4_ = §§pop();
                                                                     addr303:
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               _loc4_ = §§pop();
                                                               §§goto(addr289);
                                                            }
                                                            else
                                                            {
                                                               addr292:
                                                               §§push(this.§_-WR§);
                                                               §§push(2);
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§push(§_-UW§.PARTICLE_NAME_BIRD_TRAIL3);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr305);
                              }
                           }
                           else
                           {
                              addr185:
                              §§push(§_-Gb§.§_-kL§);
                              if(_loc6_ || this)
                              {
                                 §§push(§_-UW§.§_-eQ§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          §§push(-1);
                                          if(_loc6_)
                                          {
                                             §§push("");
                                             if(!_loc5_)
                                             {
                                                §§goto(addr215);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr305);
                              }
                           }
                           §§goto(addr305);
                        }
                        else
                        {
                           addr181:
                           §§push(§_-UW§.§_-Zg§);
                           if(_loc6_)
                           {
                              §§goto(addr185);
                           }
                        }
                     }
                     §§goto(addr305);
                  }
                  else
                  {
                     if(§_-Qr§ > 1)
                     {
                        if(_loc6_ || _loc1_)
                        {
                           §§push(_loc1_.particles);
                           if(_loc6_)
                           {
                              §§goto(addr181);
                           }
                           §§goto(addr305);
                        }
                        addr341:
                        return;
                     }
                     §§push(§_-UW§.PARTICLE_NAME_BIRD_TRAIL1);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                        if(_loc6_ || _loc1_)
                        {
                           _loc4_ = §§pop();
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr253);
                           }
                           §§goto(addr305);
                        }
                        §§goto(addr280);
                     }
                  }
                  §§goto(addr304);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr55);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§_-e7§.mTryToFly)
            {
               if(_loc1_ || this)
               {
                  addr37:
                  §_-h7§(§_-6n§.§_-H0§);
                  if(_loc2_ && _loc2_)
                  {
                  }
                  §§goto(addr58);
               }
            }
            else
            {
               super.playScreamingSoundEffect();
            }
            addr58:
            return;
         }
         §§goto(addr37);
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-xR§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§goto(addr38);
                     }
                  }
                  else
                  {
                     addr57:
                     §§push(true);
                  }
                  return §§pop();
               }
               §_-h7§(§_-6n§.§_-Xe§);
               if(_loc3_)
               {
                  this.§_-xR§ = true;
               }
               §§goto(addr57);
               §§goto(addr57);
            }
            addr38:
            return §§pop();
         }
         §§goto(addr57);
      }
      
      override public function addDestructionParticles(param1:§_-Gb§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = §_-jY§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            §§push(_loc4_);
            §§push(Math.random() * (720 / _loc3_));
            if(_loc9_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc10_ && _loc3_))
               {
                  §§push(_loc4_ = §§pop());
                  §§push(180 / Math.PI);
                  if(_loc9_)
                  {
                     addr63:
                     §§push(Number(§§pop() / §§pop()));
                     if(_loc9_)
                     {
                        _loc6_ = §§pop();
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(Number(-§_-e7§.mW * §_-tL§.§_-7m§));
                           if(_loc9_ || this)
                           {
                              §§push(_loc7_ = §§pop());
                              if(!_loc10_)
                              {
                                 §§push(Math.random() * -_loc7_);
                                 §§push(2);
                                 if(_loc9_)
                                 {
                                    §§push(Number(§§pop() + §§pop() * §§pop()));
                                    if(!_loc10_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc10_)
                                       {
                                          §§push(-§_-e7§.mH);
                                          §§push(§_-tL§.§_-7m§);
                                          if(!(_loc10_ && param1))
                                          {
                                             addr129:
                                             addr128:
                                             addr127:
                                             §§push(Number(§§pop() * §§pop()));
                                             §§push(Number(§§pop() * §§pop()));
                                             if(_loc9_ || param1)
                                             {
                                                addr137:
                                                _loc8_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§push(Math.random() * -_loc8_);
                                                   if(!_loc10_)
                                                   {
                                                      addr148:
                                                      §§push(§§pop() * 2);
                                                   }
                                                }
                                                _loc8_ = Number(§§pop());
                                                if(!_loc10_)
                                                {
                                                   param1.§_-JY§(§_-UW§.§_-Lw§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x + _loc7_,§_-zq§().GetPosition().y + _loc8_,1500,"",§_-UW§.§_-G9§(§_-L1§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                   if(!(_loc9_ || this))
                                                   {
                                                      break;
                                                   }
                                                   addr201:
                                                   _loc5_++;
                                                   if(!(_loc9_ || param1))
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr137);
                                       }
                                       break;
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr201);
                     }
                  }
                  §§goto(addr137);
               }
               §§goto(addr63);
            }
            §§goto(addr127);
         }
      }
      
      override public function addDamageParticles(param1:§_-Gb§, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc10_)
         {
            if(§_-Rb§())
            {
               if(_loc10_)
               {
                  return;
               }
            }
            if(param2 < 6)
            {
               if(_loc10_ || param1)
               {
                  return;
               }
            }
         }
         §§push(§_-Si§() / 10);
         if(!(_loc9_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc10_ || _loc3_)
         {
            §§push(_loc3_);
            if(!(_loc9_ && param2))
            {
               addr85:
               §§push(§§pop() * §_-jY§(false));
               if(_loc10_ || param2)
               {
                  addr81:
                  §§push(§§pop() * 0.12);
               }
               var _loc4_:* = int(§§pop() + §§pop());
               var _loc5_:* = Number(90);
               if(!(_loc9_ && param2))
               {
                  §§push(param2);
                  if(_loc10_ || this)
                  {
                     §§push(scale * scale);
                     if(_loc10_ || param2)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc10_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc9_ && param1))
                           {
                              param2 = §§pop();
                              if(!_loc9_)
                              {
                                 addr128:
                                 §§push(_loc4_);
                                 if(!(_loc9_ && param1))
                                 {
                                    addr142:
                                    §§push(int(§§pop() * (3 + param2 / 20)));
                                    if(!_loc9_)
                                    {
                                       addr145:
                                       _loc4_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          addr149:
                                          _loc6_ = 0;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc9_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc10_ || this)
                                             {
                                                if(§§pop() >= §§pop() / 3)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ || param2)
                                                      {
                                                         break;
                                                      }
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr395:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               break loop3;
                                                            }
                                                            §§push(_loc5_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(Math.random() * (720 / _loc4_));
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr269:
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        §§push(Number((_loc5_ = §§pop()) / (180 / Math.PI)));
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           addr292:
                                                                           _loc7_ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(0.5);
                                                                              §§push(_loc3_);
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 addr304:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    addr312:
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc9_ && param2))
                                                                                    {
                                                                                       addr320:
                                                                                       §§push(§§pop() * (Math.random() * 0.5));
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       addr333:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr334:
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                addr342:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§_-JY§(§_-UW§.§_-Lw§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y,1250,"",§_-UW§.§_-G9§(§_-L1§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                                                                }
                                                                                                addr342:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_++;
                                                                                                addr393:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr333:
                                                                                    }
                                                                                    §§goto(addr334);
                                                                                 }
                                                                                 §§goto(addr333);
                                                                              }
                                                                              §§goto(addr320);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               §§goto(addr304);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr393);
                                                }
                                                else
                                                {
                                                   §§push(_loc5_ + Math.random() * (720 / _loc4_));
                                                   if(_loc10_)
                                                   {
                                                      _loc5_ = Number(§§pop());
                                                      if(_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                      param1.§_-JY§(§_-UW§.§_-Mx§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,(0.5 + param2 / 50 * 0.5) * Math.sqrt(scale));
                                                      if(_loc10_ || this)
                                                      {
                                                         _loc6_++;
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr333);
                                                   }
                                                   addr396:
                                                   return;
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr395);
                                          }
                                          break;
                                       }
                                       _loc6_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          §§goto(addr393);
                                       }
                                       §§goto(addr342);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr145);
               }
               §§goto(addr128);
            }
            §§goto(addr81);
         }
         §§goto(addr85);
      }
   }
}
