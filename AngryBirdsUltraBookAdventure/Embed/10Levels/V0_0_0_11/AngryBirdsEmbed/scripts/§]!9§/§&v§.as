package §]!9§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§3=§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?^§.Sprite;
   import §`K§.§0r§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §&v§ extends §1?§
   {
      
      protected static const §2_§:Boolean = false;
      
      protected static const §`O§:Number = 2000;
      
      protected static const §%A§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2_§ = false;
            if(!_loc2_)
            {
               §`O§ = 2000;
               if(_loc1_ || _loc1_)
               {
               }
               §§goto(addr46);
            }
            §%A§ = 0.2;
         }
         addr46:
      }
      
      private var §9A§:Number;
      
      private var §8r§:Boolean = false;
      
      protected var §`'§:int = 0;
      
      public function §&v§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            if(!_loc12_)
            {
               §§goto(addr58);
            }
            §§goto(addr67);
         }
         addr58:
         if(param10)
         {
            if(_loc13_ || this)
            {
               addr67:
               §2!@§.mTryToScream = §1c§.§1!6§ + 1;
            }
         }
      }
      
      public function get §?-§() : Boolean
      {
         return this.§8r§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc4_)
         {
            _loc3_.bullet = true;
            if(!(_loc5_ && param1))
            {
               addr44:
               _loc3_.angularDamping = 2;
            }
            return _loc3_;
         }
         §§goto(addr44);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§4!;§ < §8!,§);
         if(_loc2_)
         {
            if(§§pop())
            {
               if(!_loc3_)
               {
                  addr25:
                  §§pop();
                  §§push(Boolean(§0!@§()));
                  if(!(_loc3_ && param1))
                  {
                     addr46:
                     if(§§pop())
                     {
                        if(_loc2_ || param1)
                        {
                           §§push(this);
                           §§push(this.§9A§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§9A§ = §§pop();
                           if(_loc2_)
                           {
                              if(this.§9A§ >= §`O§)
                              {
                                 addr78:
                                 §§push(true);
                                 if(_loc2_ || param1)
                                 {
                                    §§goto(addr86);
                                 }
                              }
                              else
                              {
                                 addr91:
                                 §§push(false);
                                 addr87:
                              }
                              return §§pop();
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr78);
                     }
                     else
                     {
                        this.§9A§ = 0;
                     }
                     §§goto(addr91);
                  }
               }
               addr86:
               return §§pop();
            }
            §§goto(addr46);
         }
         §§goto(addr25);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         §§push(this.§8r§);
         if(_loc5_)
         {
            if(§§pop())
            {
               if(§'!,§.toUpperCase() == "BIRD_WHITE")
               {
                  §§push(true);
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(!_loc4_)
                     {
                        addr137:
                        if(_loc3_)
                        {
                           if(_loc5_)
                           {
                              addr141:
                              if(!§2!@§.mTryToSpecial)
                              {
                                 if(!_loc4_)
                                 {
                                    §2!@§.mTryToSpecial = true;
                                    if(_loc5_)
                                    {
                                       addr151:
                                       §§push(true);
                                       if(!_loc4_)
                                       {
                                          addr154:
                                          _loc2_ = §§pop();
                                          if(_loc5_)
                                          {
                                             addr204:
                                             return _loc2_;
                                             addr203:
                                             addr157:
                                          }
                                          else
                                          {
                                             addr201:
                                             §§push(true);
                                          }
                                          §§goto(addr203);
                                       }
                                       _loc2_ = §§pop();
                                       §§goto(addr203);
                                    }
                                    else
                                    {
                                       addr178:
                                       §2!@§.mTryToSpecial = false;
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr188:
                                          if(§2!@§.mIsSpecial)
                                          {
                                             §2!@§.mIsSpecial = false;
                                             if(_loc5_ || this)
                                             {
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr157);
                           }
                        }
                        else if(§2!@§.mTryToSpecial)
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§goto(addr178);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr151);
                  }
                  else
                  {
                     addr73:
                     §§push(§§pop());
                     if(!(_loc4_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || param1)
                           {
                              §§pop();
                              §§push(§'!,§.toUpperCase() == "BIRD_RED");
                              if(!_loc4_)
                              {
                                 addr106:
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§'!,§.toUpperCase() == "BIRD_RED_BIG");
                                       if(!_loc4_)
                                       {
                                          addr122:
                                          if(§§pop())
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr130:
                                                if(§2!@§.mTryToFly)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr136:
                                                      _loc3_ = true;
                                                      addr135:
                                                      §§goto(addr137);
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr137);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr106);
                  }
               }
               else
               {
                  §§push(§'!,§.toUpperCase() == "BIRD_YELLOW");
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop());
                     if(_loc5_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§push(§'!,§.toUpperCase() == "BIRD_GREEN");
                                 if(!_loc4_)
                                 {
                                    §§goto(addr73);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr106);
                  }
               }
            }
            §§goto(addr204);
         }
         §§goto(addr154);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(Boolean(§%;§().IsAwake()));
            if(_loc4_ || this)
            {
               §§push(§§pop());
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(§4!;§ == §8!,§);
                        if(!_loc5_)
                        {
                           addr55:
                           if(§§pop())
                           {
                              if(!§2!@§.mTryToFly)
                              {
                                 §2!@§.mTryToFly = true;
                                 if(!_loc5_)
                                 {
                                    §§push(true);
                                    if(!_loc5_)
                                    {
                                       _loc2_ = §§pop();
                                       addr68:
                                       if(§'!,§.toUpperCase() == "BIRD_GREEN")
                                       {
                                          addr72:
                                          §§push(param1);
                                          if(!(_loc5_ && this))
                                          {
                                             if(this.§8r§)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(2);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      addr104:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      addr129:
                                                      addr128:
                                                      addr133:
                                                      §§push(§§pop() / 1000);
                                                      if(_loc4_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(_loc4_ || param1)
                                                      {
                                                         §0i§(§+O§() - _loc3_);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr265:
                                                            return _loc2_;
                                                            addr243:
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr129);
                                                }
                                                §§push(360);
                                                if(!(_loc5_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr133);
                                                }
                                             }
                                             else
                                             {
                                                §§push(1);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§goto(addr104);
                                                   §§push(§§pop());
                                                }
                                             }
                                          }
                                          §§goto(addr104);
                                       }
                                       else
                                       {
                                          §§push(§'!,§.toUpperCase() == "BIRD_WHITE");
                                          if(_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      addr177:
                                                      §§pop();
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§8r§);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr190:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§goto(addr243);
                                                               }
                                                               else
                                                               {
                                                                  addr260:
                                                                  §2!@§.mIsFlying = false;
                                                                  addr264:
                                                                  _loc2_ = true;
                                                                  §§goto(addr265);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(§2_§);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  addr207:
                                                                  if(§§pop())
                                                                  {
                                                                     addr208:
                                                                     final();
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§goto(addr104);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr226:
                                                                        §§push(!§?!1§());
                                                                     }
                                                                     §§goto(addr265);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr222:
                                                                     §§push(!§1!F§());
                                                                     if(!§1!F§())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr226);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr264);
                                                                        }
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §0i§(0);
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr207);
                                       }
                                    }
                                    §§goto(addr264);
                                 }
                                 else
                                 {
                                    addr247:
                                    §2!@§.mTryToFly = false;
                                    if(§2!@§.mIsFlying)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr260);
                                       }
                                    }
                                    §§goto(addr265);
                                 }
                              }
                              §§goto(addr68);
                           }
                           else if(§2!@§.mTryToFly)
                           {
                              §§goto(addr247);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr55);
               }
            }
            §§goto(addr222);
         }
         §§goto(addr208);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§#;§ = §,!!§.§;4§;
         if(_loc7_ || this)
         {
            §§push(§4!;§ < §8!,§);
            if(_loc7_)
            {
               if(!§§pop())
               {
                  if(_loc7_ || _loc1_)
                  {
                     §§pop();
                     if(_loc7_)
                     {
                        addr55:
                        if(§%;§() == null)
                        {
                           if(_loc7_)
                           {
                              _loc1_.§=r§(this);
                              if(_loc7_ || _loc1_)
                              {
                                 _loc1_.§^!?§ = false;
                                 if(!_loc7_)
                                 {
                                    addr74:
                                    §§push(x * §#;§.§`!2§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc2_:* = §§pop();
                                    §§push(y * §#;§.§`!2§);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    §§push(_loc1_.§^!?§);
                                    if(!_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(_loc1_.particles);
                                          if(!(_loc8_ && _loc1_))
                                          {
                                             §§push(§2S§.§+X§);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§push(§5b§.§[M§);
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(§2S§.§^r§);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(-1);
                                                            if(_loc7_)
                                                            {
                                                               §§push("");
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§2S§.§`+§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        _loc1_.§^!?§ = false;
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           this.§`'§ = 0;
                                                                           addr354:
                                                                           §§push(§3%§() > §3=§.§7[§);
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_ && this)
                                                                                 {
                                                                                 }
                                                                                 addr380:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§push(-Math.PI);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() / 2);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             §§goto(addr398);
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr398);
                                                                                 }
                                                                                 §§goto(addr404);
                                                                              }
                                                                              §§goto(addr380);
                                                                           }
                                                                           §§pop();
                                                                        }
                                                                        §§goto(addr380);
                                                                        §§push(Math.random() < §%A§);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr317:
                                                                        §§push(_loc1_.particles);
                                                                        if(_loc7_ || _loc1_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              addr334:
                                                                              §§push(§5b§.§[M§);
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 addr343:
                                                                                 §§push(§2S§.§^r§);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr353:
                                                                                    §§pop().§ t§(§§pop(),§§pop(),§§pop(),_loc2_,_loc3_,-1,"",§2S§.§`+§);
                                                                                    §§goto(addr354);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr398);
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr240:
                                                                  §§push(§2S§.§`+§);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            else
                                                            {
                                                               addr237:
                                                               §§push("");
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr240);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr353);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr353);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr343);
                                             }
                                             else
                                             {
                                                addr190:
                                                §§push(§5b§.§[M§);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§2S§.§^r§);
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc7_)
                                                         {
                                                            §§push(-1);
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr353);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr353);
                                                         }
                                                      }
                                                      §§goto(addr353);
                                                   }
                                                   §§goto(addr398);
                                                }
                                             }
                                          }
                                          §§goto(addr398);
                                       }
                                       else if(§ V§ > 1)
                                       {
                                          §§push(_loc1_.particles);
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(§2S§.§?>§);
                                             if(_loc7_ || this)
                                             {
                                                §§goto(addr190);
                                             }
                                             else
                                             {
                                                §§goto(addr334);
                                             }
                                          }
                                          §§goto(addr398);
                                       }
                                       else
                                       {
                                          §§push(§2S§.PARTICLE_NAME_BIRD_TRAIL1);
                                          if(_loc7_ || this)
                                          {
                                             §§push(§§pop());
                                             if(!_loc8_)
                                             {
                                                addr258:
                                                _loc4_ = §§pop();
                                                if(_loc7_)
                                                {
                                                   §§push(this.§`'§);
                                                   if(!(_loc8_ && _loc1_))
                                                   {
                                                      §§push(1);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§push(§2S§.PARTICLE_NAME_BIRD_TRAIL2);
                                                            if(_loc7_)
                                                            {
                                                               addr283:
                                                               §§push(§§pop());
                                                               if(_loc7_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr305:
                                                                  §§push(this);
                                                                  §§push(this.§`'§ + 1);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop() % 3);
                                                                  }
                                                                  §§pop().§`'§ = §§pop();
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            addr304:
                                                            _loc4_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            addr291:
                                                            if(this.§`'§ == 2)
                                                            {
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  addr299:
                                                                  §§push(§2S§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               addr398:
                                                               _loc5_ = §§pop();
                                                               if(_loc7_)
                                                               {
                                                                  addr404:
                                                                  _loc6_ = Math.random();
                                                                  if(_loc7_ || _loc1_)
                                                                  {
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               _loc1_.particles.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,§%;§().GetPosition().x,§%;§().GetPosition().y,1250,"",§2S§.§#!2§(§'!,§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                               addr466:
                                                               return;
                                                            }
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr258);
                                       }
                                       §§goto(addr404);
                                    }
                                    §§goto(addr380);
                                 }
                              }
                              §§goto(addr74);
                           }
                           return;
                        }
                     }
                     §§goto(addr74);
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§2!@§.mTryToFly)
            {
               if(!_loc2_)
               {
                  addr33:
                  §+t§(§0r§.§6U§);
                  if(_loc1_ || _loc2_)
                  {
                  }
               }
            }
            else
            {
               super.playScreamingSoundEffect();
            }
            return;
         }
         §§goto(addr33);
      }
      
      override public function activateSpecialPower(param1:§]!H§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§8r§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        §§goto(addr38);
                     }
                  }
                  else
                  {
                     addr46:
                     §+t§(§0r§.§81§);
                     if(_loc2_)
                     {
                        this.§8r§ = true;
                     }
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr46);
            }
            addr38:
            return §§pop();
         }
         §§goto(addr46);
      }
      
      private function § 4§(param1:int) : int
      {
         return Math.min(§,!!§.§;4§.§'V§,param1);
      }
      
      override public function addDestructionParticles(param1:§5b§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§3v§(false) + 1);
         var _loc4_:* = Number(90);
         if(_loc9_)
         {
            §§push(this.§ 4§(_loc3_));
            if(!(_loc10_ && _loc3_))
            {
               §§push(int(§§pop()));
               if(!(_loc10_ && _loc2_))
               {
                  _loc3_ = §§pop();
                  addr56:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            while(_loc5_ < _loc3_)
            {
               §§push(_loc4_ + Math.random() * (720 / _loc3_));
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  §§push(Number(§§pop()));
                  if(!(_loc10_ && _loc3_))
                  {
                     _loc4_ = §§pop();
                     if(_loc9_ || _loc2_)
                     {
                        §§push(180 / Math.PI);
                        if(!_loc10_)
                        {
                           addr93:
                           §§push(§§pop() / §§pop());
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                              if(_loc9_)
                              {
                                 _loc6_ = §§pop();
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(-§2!@§.mW);
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       §§push(§§pop() * §#;§.§`!2§);
                                       if(_loc9_)
                                       {
                                          addr137:
                                          §§push(Number(§§pop()));
                                          if(!_loc10_)
                                          {
                                             addr140:
                                             §§push(§§pop());
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                _loc7_ = §§pop();
                                                §§push(Math.random() * -_loc7_);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(2);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr167:
                                                         §§push(Number(§§pop() + §§pop()));
                                                         if(_loc9_)
                                                         {
                                                            addr171:
                                                            _loc7_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               addr203:
                                                               §§push(-§2!@§.mH);
                                                               if(!_loc10_)
                                                               {
                                                                  addr181:
                                                                  §§push(Number(§§pop() * §#;§.§`!2§));
                                                                  if(_loc9_)
                                                                  {
                                                                     addr185:
                                                                     §§push(§§pop());
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr199:
                                                                        §§push(Math.random() * -_loc8_ * 2);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               _loc8_ = Number(§§pop());
                                                               if(_loc9_)
                                                               {
                                                                  param1.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,§%;§().GetPosition().x + _loc7_,§%;§().GetPosition().y + _loc8_,1500,"",§2S§.§#!2§(§'!,§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                  addr206:
                                                                  if(!(_loc9_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc5_++;
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                   §§goto(addr199);
                                                }
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr93);
               }
               §§goto(addr137);
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function addDamageParticles(param1:§5b§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc9_)
         {
            if(§?!1§())
            {
               if(!(_loc10_ && param2))
               {
                  §§goto(addr34);
               }
            }
            if(param2 < 6)
            {
               if(!_loc10_)
               {
                  return;
               }
            }
            §§push(§3%§() / 10);
            if(!(_loc10_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc9_)
            {
               §§push(_loc3_);
               if(!(_loc10_ && param2))
               {
                  addr87:
                  §§push(§§pop() * §3v§(false));
                  if(!(_loc10_ && param1))
                  {
                     addr83:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:* = int(§§pop() + §§pop());
                  var _loc5_:* = Number(90);
                  if(!_loc10_)
                  {
                     §§push(param2);
                     §§push(scale * scale);
                     if(!(_loc10_ && this))
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc9_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc10_ && param1))
                           {
                              param2 = §§pop();
                              if(_loc9_)
                              {
                                 §§push(_loc4_);
                                 if(_loc9_)
                                 {
                                    addr128:
                                    _loc4_ = int(§§pop() * (3 + param2 / 20));
                                    if(_loc9_ || this)
                                    {
                                       addr139:
                                       addr136:
                                       §§push(int(this.§ 4§(_loc4_)));
                                       if(_loc9_)
                                       {
                                          _loc4_ = §§pop();
                                          addr147:
                                          if(!_loc10_)
                                          {
                                             addr145:
                                             §§push(0);
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(!_loc10_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   if(§§pop() >= §§pop() / 3)
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(0);
                                                         if(_loc9_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§push(Math.random() * (720 / _loc4_));
                                                         if(_loc9_ || param2)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc10_ && this))
                                                            {
                                                               _loc5_ = Number(§§pop());
                                                               if(_loc9_ || param1)
                                                               {
                                                                  param1.§ t§(§2S§.§8x§,§5b§.§?D§,§2S§.§9!>§,§%;§().GetPosition().x,§%;§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                                  if(_loc10_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc6_++;
                                                               if(!_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(0.5);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        addr315:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§§pop() * (Math.random() * 0.5));
                                                                              }
                                                                           }
                                                                           addr339:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              §§goto(addr340);
                                                                           }
                                                                        }
                                                                        addr315:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr339);
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                     addr336:
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               addr304:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               §§push(Number(§§pop()));
                                                               if(_loc9_ || param1)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  §§push(180 / Math.PI);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc9_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              §§goto(addr304);
                                                                           }
                                                                        }
                                                                        addr300:
                                                                     }
                                                                     §§goto(addr340);
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            addr276:
                                                         }
                                                         §§goto(addr315);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr399);
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         §§goto(addr276);
                                                         §§push(§§pop() + Math.random() * (720 / _loc4_));
                                                      }
                                                      addr340:
                                                      §§goto(addr402);
                                                   }
                                                   addr402:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      if(_loc9_)
                                                      {
                                                         param1.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,§%;§().GetPosition().x,§%;§().GetPosition().y,1250,"",§2S§.§#!2§(§'!,§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                         _loc6_++;
                                                         if(!_loc10_)
                                                         {
                                                            addr399:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               break loop0;
                                                            }
                                                            addr399:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr399);
                                                   }
                                                   return;
                                                }
                                                addr401:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr401);
                                          }
                                       }
                                       _loc6_ = §§pop();
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr145);
                           }
                        }
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr136);
               }
               §§goto(addr83);
            }
            §§goto(addr87);
         }
         addr34:
      }
   }
}
