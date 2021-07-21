package §>!'§
{
   import § !t§.b2BodyDef;
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   import §?!-§.§'!V§;
   import §?!6§.§@T§;
   
   public class §7!U§ extends §5!6§
   {
      
      protected static const §+!I§:Boolean = false;
      
      protected static const §^n§:Number = 2000;
      
      private static const §'W§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+!I§ = false;
            if(_loc2_ || _loc2_)
            {
               §^n§ = 2000;
               if(!_loc2_)
               {
               }
               §§goto(addr47);
            }
            §'W§ = 0.2;
         }
         addr47:
      }
      
      private var §2!#§:Number;
      
      private var §-c§:Boolean = false;
      
      private var §4!T§:int = 0;
      
      public function §7!U§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            if(_loc13_)
            {
               if(param10)
               {
                  if(_loc13_ || param3)
                  {
                  }
               }
               §§goto(addr58);
            }
            §0!E§.mTryToScream = §6!N§.§0+§ + 1;
         }
         addr58:
      }
      
      public function get §6!i§() : Boolean
      {
         return this.§-c§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc5_ && this))
         {
            _loc3_.§@x§ = true;
            if(!_loc5_)
            {
               _loc3_.§<!A§ = 2;
            }
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§!!>§ < §1!s§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        addr56:
                        §§push(Boolean(§^!%§()));
                        if(_loc3_)
                        {
                           addr61:
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr69:
                                 §§push(this);
                                 §§push(this.§2!#§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§2!#§ = §§pop();
                                 if(!(_loc2_ && param1))
                                 {
                                    if(this.§2!#§ >= §^n§)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr121:
                                          return false;
                                          addr116:
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr116);
                                 }
                                 §§push(true);
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr108);
                                 }
                                 else
                                 {
                                    §§goto(addr121);
                                 }
                              }
                              §§goto(addr121);
                           }
                           else
                           {
                              this.§2!#§ = 0;
                           }
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr108);
               }
               §§goto(addr61);
            }
            addr108:
            return §§pop();
         }
         §§goto(addr56);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         §§push(this.§-c§);
         if(_loc5_)
         {
            if(§§pop())
            {
               if(§>p§.toUpperCase() == "BIRD_WHITE")
               {
                  if(_loc5_)
                  {
                     §§push(true);
                     if(!(_loc4_ && _loc2_))
                     {
                        _loc3_ = §§pop();
                        if(!_loc5_)
                        {
                           addr95:
                           if(§>p§.toUpperCase() == "BIRD_RED_BIG")
                           {
                              if(§0!E§.mTryToFly)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(true);
                                    if(!_loc4_)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr114);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr125);
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr138);
                  }
                  else
                  {
                     addr64:
                     §§push(§>p§.toUpperCase() == "BIRD_GREEN");
                     §§push(§>p§.toUpperCase() == "BIRD_GREEN");
                     if(!(_loc4_ && _loc3_))
                     {
                        addr76:
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(§>p§.toUpperCase() == "BIRD_RED");
                        }
                        §§push(§§pop());
                     }
                     if(!§§pop())
                     {
                        §§pop();
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr95);
               }
               else
               {
                  §§push(§>p§.toUpperCase() == "BIRD_YELLOW");
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 §§goto(addr64);
                              }
                              addr114:
                              §§push(_loc3_);
                              if(!(_loc4_ && param1))
                              {
                                 addr122:
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr125:
                                       if(!§0!E§.mTryToSpecial)
                                       {
                                          if(_loc5_)
                                          {
                                             §0!E§.mTryToSpecial = true;
                                             if(_loc5_)
                                             {
                                                §§push(true);
                                                if(_loc5_)
                                                {
                                                   addr138:
                                                   _loc2_ = §§pop();
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr183);
                                          }
                                       }
                                       §§goto(addr183);
                                    }
                                    else
                                    {
                                       addr178:
                                       §§push(true);
                                       if(_loc5_)
                                       {
                                          addr181:
                                          _loc2_ = §§pop();
                                          §§goto(addr183);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    if(§0!E§.mTryToSpecial)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          §0!E§.mTryToSpecial = false;
                                       }
                                       if(§0!E§.mIsSpecial)
                                       {
                                          §0!E§.mIsSpecial = false;
                                          if(_loc5_ || param1)
                                          {
                                             §§goto(addr178);
                                          }
                                       }
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr183);
                              }
                              addr183:
                              return _loc2_;
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr181);
               }
            }
            §§goto(addr138);
         }
         §§goto(addr181);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         §§push(Boolean(getBody().IsAwake()));
         if(_loc5_ || this)
         {
            §§push(§§pop());
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§pop();
                     addr52:
                     if(§!!>§ == §1!s§)
                     {
                        if(!§0!E§.mTryToFly)
                        {
                           §0!E§.mTryToFly = true;
                           if(_loc5_)
                           {
                              §§push(true);
                              if(_loc5_ || _loc3_)
                              {
                                 _loc2_ = §§pop();
                                 addr70:
                                 if(§>p§.toUpperCase() == "BIRD_GREEN")
                                 {
                                    §§push(param1);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(this.§-c§)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr92:
                                             §§push(2 * (!!_loc5_ ? §§pop() : §§pop()));
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr124:
                                                §§push(360);
                                                if(!_loc4_)
                                                {
                                                   addr127:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr131:
                                                      §§push(§§pop() / 1000);
                                                      if(_loc5_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §?!1§(§;x§() - _loc3_);
                                                      addr255:
                                                      return _loc2_;
                                                      addr254:
                                                      addr232:
                                                      addr149:
                                                   }
                                                   else
                                                   {
                                                      addr236:
                                                      §0!E§.mTryToFly = false;
                                                      addr239:
                                                      if(§0!E§.mIsFlying)
                                                      {
                                                         §0!E§.mIsFlying = false;
                                                         addr245:
                                                         §§push(true);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            addr253:
                                                            _loc2_ = §§pop();
                                                            §§goto(addr254);
                                                         }
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr255);
                                                }
                                             }
                                             §§goto(addr131);
                                          }
                                          §§goto(addr124);
                                       }
                                       else
                                       {
                                          §§push(1);
                                          if(_loc5_ || param1)
                                          {
                                             §§goto(addr105);
                                          }
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    §§push(§>p§.toUpperCase() == "BIRD_WHITE");
                                    if(!_loc4_)
                                    {
                                       addr156:
                                       §§push(§§pop());
                                       if(_loc5_ || this)
                                       {
                                          addr164:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr167:
                                                §§pop();
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(this.§-c§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr187:
                                                         if(!§§pop())
                                                         {
                                                            §§push(§+!I§);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               addr197:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §9P§();
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr232);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr245);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               else
                                                               {
                                                                  addr209:
                                                                  §§push(!§='§());
                                                                  if(!§='§())
                                                                  {
                                                                     §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        addr226:
                                                                        if(!§4!t§())
                                                                        {
                                                                           §?!1§(0);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr255);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr236);
                                                                           }
                                                                        }
                                                                        §§goto(addr255);
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr236);
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr209);
                                    }
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr70);
                     }
                     else if(§0!E§.mTryToFly)
                     {
                        §§goto(addr236);
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr167);
               }
               §§goto(addr52);
            }
            §§goto(addr164);
         }
         §§goto(addr52);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§7E§ = §'!V§.§1!2§;
         if(_loc8_)
         {
            §§push(§!!>§ < §1!s§);
            if(_loc8_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc7_)
                  {
                     addr44:
                     §§pop();
                     if(!_loc7_)
                     {
                        addr51:
                        if(getBody() == null)
                        {
                           if(!(_loc7_ && this))
                           {
                              _loc1_.§,!H§(this);
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr69:
                                 _loc1_.§7s§ = false;
                                 if(!(_loc8_ || this))
                                 {
                                    addr80:
                                    §§push(x * §7E§.§8!'§);
                                    if(_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc2_:* = §§pop();
                                    §§push(y * §7E§.§8!'§);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(_loc1_.§7s§);
                                       if(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§push(_loc1_.particles);
                                                if(!_loc7_)
                                                {
                                                   §§push(§!r§.§%H§);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(§<!r§.§<[§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§!r§.§#!!§);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(-1);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push("");
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§!r§.§&!§);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                           _loc1_.§7s§ = false;
                                                                           this.§4!T§ = 0;
                                                                           if(_loc8_)
                                                                           {
                                                                              addr352:
                                                                              §§push(§^![§() > §;§.§ !3§);
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr363:
                                                                                       §§pop();
                                                                                       §§goto(addr403);
                                                                                    }
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr378:
                                                                                       §§push(-Math.PI);
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() / 2);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                addr400:
                                                                                                _loc5_ = §§pop();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§goto(addr403);
                                                                                                }
                                                                                                addr403:
                                                                                                §§goto(addr406);
                                                                                             }
                                                                                             addr406:
                                                                                             if(!(_loc7_ && _loc1_))
                                                                                             {
                                                                                                §§push(Math.random() < §'W§);
                                                                                             }
                                                                                             _loc6_ = Math.random();
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                _loc1_.particles.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§!r§.§^!O§(§>p§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                                                addr422:
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr400);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr403);
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr351:
                                                                           §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr235:
                                                                        §§push(§!r§.§&!§);
                                                                        if(!(_loc7_ && _loc1_))
                                                                        {
                                                                           §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              addr252:
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr351);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr348:
                                                                     §§push("");
                                                                     §§push(§!r§.§&!§);
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               else
                                                               {
                                                                  addr347:
                                                                  §§push(-1);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            else
                                                            {
                                                               addr206:
                                                               §§push(_loc3_);
                                                               if(_loc8_ || _loc1_)
                                                               {
                                                                  §§push(-1);
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push("");
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr235);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr348);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr348);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr347);
                                                               }
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr336:
                                                         §§push(§!r§.§#!!§);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr346:
                                                            §§goto(addr347);
                                                            §§push(_loc2_);
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      §§goto(addr422);
                                                   }
                                                   else
                                                   {
                                                      addr190:
                                                      §§push(§<!r§.§<[§);
                                                      if(_loc8_ || this)
                                                      {
                                                         §§push(§!r§.§#!!§);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr206);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr346);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr336);
                                                      }
                                                   }
                                                   §§goto(addr336);
                                                }
                                                §§goto(addr422);
                                             }
                                             else
                                             {
                                                addr303:
                                                §§push(this);
                                                §§push(this.§4!T§ + 1);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() % 3);
                                                }
                                                §§pop().§4!T§ = §§pop();
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc1_.particles);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc8_ || _loc1_)
                                                      {
                                                         §§push(§<!r§.§<[§);
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr336);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr422);
                                                }
                                                addr287:
                                             }
                                             §§goto(addr363);
                                          }
                                          else if(§^3§ > 1)
                                          {
                                             if(_loc8_ || this)
                                             {
                                                §§push(_loc1_.particles);
                                                if(!_loc7_)
                                                {
                                                   §§push(§!r§.§ !s§);
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr190);
                                                   }
                                                }
                                                §§goto(addr422);
                                             }
                                             §§goto(addr378);
                                          }
                                          else
                                          {
                                             §§push(§!r§.PARTICLE_NAME_BIRD_TRAIL1);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§push(this.§4!T§);
                                                   if(_loc8_)
                                                   {
                                                      §§push(1);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§push(§!r§.PARTICLE_NAME_BIRD_TRAIL2);
                                                            if(_loc8_)
                                                            {
                                                               addr278:
                                                               §§push(§§pop());
                                                               if(!(_loc7_ && _loc1_))
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  §§goto(addr287);
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            addr302:
                                                            _loc4_ = §§pop();
                                                            addr301:
                                                            §§goto(addr303);
                                                         }
                                                         else
                                                         {
                                                            addr290:
                                                            §§push(this.§4!T§);
                                                            §§push(2);
                                                         }
                                                         §§goto(addr303);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§push(§!r§.PARTICLE_NAME_BIRD_TRAIL3);
                                                         if(_loc8_ || this)
                                                         {
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr302);
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr363);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr44);
         }
         §§goto(addr80);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§0!E§.mTryToFly)
            {
               if(_loc2_ || _loc2_)
               {
                  addr44:
                  §97§(§@T§.§5!r§);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr53);
               }
            }
            else
            {
               super.playScreamingSoundEffect();
            }
            addr53:
            return;
         }
         §§goto(addr44);
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§-c§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§push(false);
                     if(_loc3_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     §97§(§@T§.§4!^§);
                     if(_loc3_)
                     {
                        this.§-c§ = true;
                     }
                     §§push(true);
                  }
               }
               §§goto(addr62);
            }
            return §§pop();
         }
         §§goto(addr62);
      }
      
      private function §@!R§(param1:int) : int
      {
         return Math.min(§'!V§.§1!2§.§9R§,param1);
      }
      
      override public function addDestructionParticles(param1:§<!r§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§'J§(false) + 1);
         var _loc4_:Number = 90;
         if(!(_loc9_ && this))
         {
            §§push(this.§@!R§(_loc3_));
            if(!(_loc9_ && this))
            {
               §§push(int(§§pop()));
               if(!_loc9_)
               {
                  _loc3_ = §§pop();
                  addr57:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            while(_loc5_ < _loc3_)
            {
               §§push(_loc4_);
               if(!_loc9_)
               {
                  §§push(Math.random() * (720 / _loc3_));
                  if(!_loc9_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc9_)
                     {
                        §§push(_loc4_ = §§pop());
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(180 / Math.PI);
                           if(!(_loc9_ && _loc2_))
                           {
                              _loc6_ = §§pop() / §§pop();
                              if(_loc10_)
                              {
                                 addr106:
                                 §§push(-§0!E§.mW * §7E§.§8!'§);
                                 if(_loc10_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc10_ || _loc2_)
                                       {
                                          _loc7_ = §§pop();
                                          addr141:
                                          §§push(Math.random() * -_loc7_);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(2);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc9_)
                                                   {
                                                      addr162:
                                                      §§push(Number(§§pop()));
                                                      if(_loc10_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            addr171:
                                                            addr173:
                                                            §§push(-§0!E§.mH * §7E§.§8!'§);
                                                            if(!_loc9_)
                                                            {
                                                               addr177:
                                                               §§push(_loc8_ = Number(§§pop()));
                                                               §§push(Math.random() * -_loc8_);
                                                               if(_loc10_)
                                                               {
                                                                  addr188:
                                                                  §§push(§§pop() + §§pop() * 2);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     addr196:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            _loc8_ = §§pop();
                                                            if(!(_loc10_ || this))
                                                            {
                                                               break;
                                                            }
                                                            param1.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§!r§.§^!O§(§>p§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                            if(_loc10_)
                                                            {
                                                               addr257:
                                                               _loc5_++;
                                                               if(_loc9_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr173);
                                             }
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr177);
               }
               §§goto(addr196);
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function addDamageParticles(param1:§<!r§, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!_loc9_)
         {
            if(§4!t§())
            {
               if(!(_loc9_ && _loc3_))
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(_loc10_ || param1)
               {
                  §§goto(addr53);
               }
            }
            §§push(§^![§() / 10);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!_loc9_)
            {
               §§push(_loc3_);
               if(!_loc9_)
               {
                  addr78:
                  §§push(§§pop() * §'J§(false));
                  if(_loc10_)
                  {
                     addr74:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:* = int(§§pop() + §§pop());
                  var _loc5_:* = Number(90);
                  if(_loc10_ || param2)
                  {
                     §§push(param2);
                     §§push(scale * scale);
                     if(!_loc9_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc10_ || this)
                        {
                           param2 = §§pop();
                           if(!(_loc9_ && this))
                           {
                              addr119:
                              §§push(int(_loc4_ * (3 + param2 / 20)));
                              if(!_loc9_)
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    addr130:
                                    §§push(int(this.§@!R§(_loc4_)));
                                    if(!(_loc9_ && param2))
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc10_)
                                       {
                                          addr145:
                                          _loc6_ = 0;
                                       }
                                       loop0:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc9_)
                                             {
                                                if(§§pop() >= §§pop() / 3)
                                                {
                                                   addr231:
                                                   §§push(0);
                                                   if(_loc10_ || param2)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(_loc10_ || this)
                                                      {
                                                         addr375:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            break loop0;
                                                         }
                                                         addr375:
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§push(_loc5_);
                                                §§push(Math.random() * (720 / _loc4_));
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      _loc5_ = Number(§§pop());
                                                      if(!(_loc9_ && this))
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         param1.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§!r§.§^!O§(§>p§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                         if(!_loc9_)
                                                         {
                                                            _loc6_++;
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§goto(addr375);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      addr378:
                                                      return;
                                                      addr312:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc10_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc3_);
                                                            addr302:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * (Math.random() * 0.5));
                                                            }
                                                         }
                                                         addr300:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr310:
                                                         }
                                                         addr311:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            §§goto(addr312);
                                                         }
                                                      }
                                                   }
                                                   addr292:
                                                }
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   §§push(180 / Math.PI);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Number(§§pop() / §§pop()));
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§push(0.5);
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr311);
                                                   }
                                                   §§goto(addr302);
                                                }
                                                addr265:
                                                §§goto(addr312);
                                             }
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(_loc5_);
                                                   §§push(Math.random() * (720 / _loc4_));
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc10_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr265);
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr300);
                                                }
                                                §§goto(addr378);
                                             }
                                             addr377:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr377);
                                          §§goto(addr375);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr130);
                        }
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr74);
            }
            §§goto(addr78);
         }
         addr53:
      }
   }
}
