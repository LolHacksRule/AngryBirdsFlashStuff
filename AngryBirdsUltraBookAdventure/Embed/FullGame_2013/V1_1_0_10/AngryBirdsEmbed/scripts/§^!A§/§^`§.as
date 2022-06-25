package §^!A§
{
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§4!C§;
   import §^!L§.§%h§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §^`§ extends §#z§
   {
      
      protected static const §#l§:Boolean = false;
      
      protected static const §=z§:Number = 2000;
      
      protected static const §9r§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §#l§ = false;
            if(_loc2_)
            {
               §=z§ = 2000;
               if(_loc2_ || _loc1_)
               {
                  §9r§ = 0.2;
               }
            }
         }
      }
      
      private var §#!§:Number;
      
      protected var §"f§:Boolean = false;
      
      protected var §7O§:int = 0;
      
      public function §^`§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            if(_loc12_)
            {
               if(param10)
               {
                  if(_loc12_)
                  {
                     addr51:
                     §;S§.mTryToScream = §[!J§.§`"§ + 1;
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public static function §+!N§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(_loc11_)
         {
            §§push(int(§§pop() + Math.random() * param4));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            §§push(Math.random() * (Math.PI * 2));
            if(_loc11_)
            {
               §§push(Number(§§pop()));
               if(!_loc12_)
               {
                  addr49:
                  _loc9_ = §§pop();
                  if(!_loc12_)
                  {
                     §§push(0.5);
                     if(_loc11_)
                     {
                        §§push(param5);
                        if(!(_loc12_ && param3))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc11_ || §^`§)
                           {
                              addr72:
                              §§push(§§pop() + param5 * (Math.random() * 0.5));
                              if(_loc11_ || param3)
                              {
                                 addr95:
                                 §§push(Number(§§pop()));
                              }
                           }
                           _loc10_ = §§pop();
                           if(_loc11_)
                           {
                              addr99:
                              §§push(§=w§.§ o§.particles);
                              §§push("STAR_PARTICLE");
                              §§push(§<!6§.§1X§);
                              §§push(§2!H§.§"!5§);
                              §§push(§<!6§.§!E§);
                              §§push(param1);
                              §§push(param2);
                              §§push(750);
                              §§push("");
                              §§push(§<!6§.§4!8§("BIRD_RED"));
                              §§push(_loc10_);
                              if(!(_loc12_ && param2))
                              {
                                 §§push(§§pop() * Math.cos(_loc9_));
                                 if(!_loc12_)
                                 {
                                    addr130:
                                    §§push(_loc7_);
                                    if(!_loc12_)
                                    {
                                       addr134:
                                       §§push(§§pop() * §§pop());
                                       §§push(_loc10_);
                                       if(_loc11_ || param2)
                                       {
                                          §§push(-§§pop());
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() * Math.sin(_loc9_));
                                             if(_loc11_ || param1)
                                             {
                                                addr166:
                                                §§push(§§pop() * _loc7_);
                                             }
                                             §§push(5);
                                             §§push(_loc10_);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() * 20);
                                             }
                                             §§pop().§?e§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc7_));
                                             if(_loc11_)
                                             {
                                                addr180:
                                                _loc8_++;
                                                if(_loc12_)
                                                {
                                                   break;
                                                }
                                             }
                                             continue;
                                          }
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr99);
               }
               §§goto(addr72);
            }
            §§goto(addr49);
         }
      }
      
      public function get §[!E§() : Boolean
      {
         return this.§"f§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.bullet = true;
            if(_loc5_ || this)
            {
               addr50:
               _loc3_.angularDamping = 2;
            }
            return _loc3_;
         }
         §§goto(addr50);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(§`Y§ < §@!§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr33:
                     §§pop();
                     if(_loc3_ || this)
                     {
                        §§push(Boolean(§switch§()));
                        if(!(_loc2_ && _loc3_))
                        {
                           addr61:
                           if(§§pop())
                           {
                              addr62:
                              §§push(this);
                              §§push(this.§#!§);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§#!§ = §§pop();
                              if(_loc3_)
                              {
                                 if(this.§#!§ >= §=z§)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       addr98:
                                       §§push(true);
                                       if(_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr109);
                                 }
                                 addr108:
                                 addr109:
                                 return §§pop();
                                 §§push(false);
                              }
                              §§goto(addr98);
                           }
                           else
                           {
                              this.§#!§ = 0;
                              §§goto(addr108);
                           }
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr33);
         }
         §§goto(addr62);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:Boolean = false;
         §§push(this.§"f§);
         if(!(_loc5_ && _loc3_))
         {
            if(§§pop())
            {
               if(!_loc5_)
               {
                  if(§1>§.toUpperCase() == "BIRD_WHITE")
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc3_ = true;
                     }
                     addr209:
                     return _loc2_;
                     addr208:
                  }
                  else
                  {
                     §§push(§1>§.toUpperCase() == "BIRD_YELLOW");
                     §§push(§1>§.toUpperCase() == "BIRD_YELLOW");
                     if(_loc4_ || this)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§pop();
                              if(_loc4_ || this)
                              {
                                 addr78:
                                 §§push(§1>§.toUpperCase() == "BIRD_GREEN");
                                 §§push(§1>§.toUpperCase() == "BIRD_GREEN");
                                 if(!_loc5_)
                                 {
                                    addr81:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          addr89:
                                          §§push(§1>§.toUpperCase() == "BIRD_RED");
                                          §§push(§1>§.toUpperCase() == "BIRD_RED");
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr107:
                                             if(!§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   addr110:
                                                   §§pop();
                                                   addr115:
                                                   §§push(§1>§.toUpperCase() == "BIRD_RED_BIG");
                                                   if(!(§1>§.toUpperCase() == "BIRD_RED_BIG"))
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§pop();
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§push(§1>§.toUpperCase() == "BIRD_ORANGE");
                                                            if(_loc4_)
                                                            {
                                                               addr138:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr141:
                                                                     if(§;S§.mTryToFly)
                                                                     {
                                                                        _loc3_ = true;
                                                                        addr146:
                                                                        §§push(_loc3_);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr154:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(§;S§.mTryToSpecial)
                                                                              {
                                                                                 addr186:
                                                                                 §;S§.mTryToSpecial = false;
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    if(!§;S§.mIsSpecial)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 §;S§.mIsSpecial = false;
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr204:
                                                                                    §§push(true);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  if(!§;S§.mTryToSpecial)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §;S§.mTryToSpecial = true;
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           addr180:
                                                                           _loc2_ = true;
                                                                           addr182:
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr204);
                                                                     }
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr146);
               }
               §§goto(addr141);
            }
            §§goto(addr209);
         }
         §§goto(addr110);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc2_:* = false;
         §§push(Boolean(§'[§().IsAwake()));
         if(_loc4_)
         {
            §§push(§§pop());
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§pop();
                     if(_loc4_ || this)
                     {
                        addr53:
                        if(§`Y§ == §@!§)
                        {
                           if(_loc4_)
                           {
                              if(!§;S§.mTryToFly)
                              {
                                 §;S§.mTryToFly = true;
                                 if(!_loc5_)
                                 {
                                    _loc2_ = true;
                                    addr66:
                                    if(§1>§.toUpperCase() == "BIRD_GREEN")
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(param1);
                                          if(_loc4_ || this)
                                          {
                                             if(this.§"f§)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(2);
                                                   if(!_loc5_)
                                                   {
                                                      addr104:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr107:
                                                         §§push(360);
                                                         if(_loc4_ || this)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            addr123:
                                                            _loc3_ = §§pop();
                                                            §§goto(addr122);
                                                         }
                                                         addr119:
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            addr122:
                                                            if(!_loc5_)
                                                            {
                                                               §=!<§(§>8§() - _loc3_);
                                                               if(_loc5_ && this)
                                                               {
                                                               }
                                                               addr217:
                                                               addr200:
                                                               §§push(_loc2_);
                                                            }
                                                            else
                                                            {
                                                               addr156:
                                                               §§push(this.§"f§);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  addr166:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(§#l§)
                                                                     {
                                                                        §`!3§();
                                                                     }
                                                                     else
                                                                     {
                                                                        addr177:
                                                                        §§push(!§"!"§());
                                                                        if(!§"!"§())
                                                                        {
                                                                           §§pop();
                                                                           addr189:
                                                                           §§push(!§@!-§());
                                                                           if(!_loc4_)
                                                                           {
                                                                           }
                                                                           addr216:
                                                                           _loc2_ = §§pop();
                                                                           §§goto(addr217);
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           §=!<§(0);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr212:
                                                                              §;S§.mIsFlying = false;
                                                                              §§goto(addr216);
                                                                              §§push(true);
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr123);
                                                      }
                                                      §§goto(addr119);
                                                      §§push(1000);
                                                   }
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr123);
                                             }
                                             else
                                             {
                                                §§push(1);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr104);
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr107);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§1>§.toUpperCase() == "BIRD_WHITE");
                                       §§push(§1>§.toUpperCase() == "BIRD_WHITE");
                                       if(!_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr156);
                                             }
                                             else
                                             {
                                                addr209:
                                                if(§;S§.mIsFlying)
                                                {
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr66);
                           }
                        }
                        else if(§;S§.mTryToFly)
                        {
                           if(!_loc5_)
                           {
                              §;S§.mTryToFly = false;
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr189);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr177);
         }
         §§goto(addr189);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§ !§ = §=w§.§ o§;
         if(!(_loc7_ && this))
         {
            §§push(§`Y§ < §@!§);
            if(_loc8_)
            {
               if(!§§pop())
               {
                  if(_loc8_ || this)
                  {
                     §§pop();
                     addr74:
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(§'[§() == null);
                     }
                     _loc1_.§?<§ = false;
                     if(_loc8_)
                     {
                        return;
                     }
                     addr80:
                     §§push(x * § !§.§`J§);
                     if(_loc8_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(y * § !§.§`J§);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(_loc1_.§?<§);
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           §§push(_loc1_.particles);
                           if(_loc8_ || this)
                           {
                              §§push(§<!6§.§7!M§);
                              if(_loc8_)
                              {
                                 §§push(§2!H§.§+!7§);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§push(§<!6§.§8!!§);
                                    if(!_loc7_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc7_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc7_)
                                          {
                                             §§push(-1);
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§push("");
                                                if(!_loc7_)
                                                {
                                                   §§push(§<!6§.§2!2§);
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                      _loc1_.§?<§ = false;
                                                      this.§7O§ = 0;
                                                      addr360:
                                                      §§push(_loc1_.slingshot.§+A§());
                                                      if(_loc8_)
                                                      {
                                                         addr365:
                                                         if(§§pop())
                                                         {
                                                            addr366:
                                                            §+!N§(_loc2_,_loc3_,0,3,10);
                                                            if(!_loc7_)
                                                            {
                                                               addr375:
                                                               §§push(§8!A§() > §4!C§.§?1§);
                                                               if(!_loc7_)
                                                               {
                                                                  addr382:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc8_ || _loc2_)
                                                                        {
                                                                           addr403:
                                                                           if(Math.random() < §9r§)
                                                                           {
                                                                              §§push(-Math.PI);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop() / 2);
                                                                                 if(!(_loc7_ && _loc1_))
                                                                                 {
                                                                                    addr418:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr421:
                                                                                       _loc5_ = §§pop();
                                                                                       §§push(Number(Math.random()));
                                                                                    }
                                                                                    _loc6_ = §§pop();
                                                                                    if(!(_loc7_ && _loc2_))
                                                                                    {
                                                                                       _loc1_.particles.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x,§'[§().GetPosition().y,1250,"",§<!6§.§4!8§(§1>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                                       addr487:
                                                                                       return;
                                                                                       addr439:
                                                                                       addr441:
                                                                                       addr437:
                                                                                       addr435:
                                                                                    }
                                                                                    §§goto(addr487);
                                                                                 }
                                                                                 §§goto(addr421);
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr487);
                                                                        }
                                                                        §§goto(addr421);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr403);
                                                            }
                                                            §§goto(addr487);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   else
                                                   {
                                                      addr211:
                                                      §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                      §§goto(addr360);
                                                   }
                                                }
                                                else
                                                {
                                                   addr357:
                                                   §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§<!6§.§2!2§);
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr360);
                                                   }
                                                }
                                                §§goto(addr366);
                                             }
                                             else
                                             {
                                                addr204:
                                                §§push("");
                                                if(_loc8_)
                                                {
                                                   §§push(§<!6§.§2!2§);
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr211);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr357);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr357);
                                                }
                                                §§goto(addr357);
                                             }
                                          }
                                          else
                                          {
                                             addr354:
                                             §§push(-1);
                                             §§push("");
                                          }
                                          §§goto(addr357);
                                       }
                                       else
                                       {
                                          addr198:
                                          §§push(_loc3_);
                                          if(!_loc7_)
                                          {
                                             §§push(-1);
                                             if(_loc8_)
                                             {
                                                §§goto(addr204);
                                             }
                                             else
                                             {
                                                §§goto(addr354);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr354);
                                          }
                                          §§goto(addr354);
                                       }
                                    }
                                    else
                                    {
                                       addr195:
                                       §§push(_loc2_);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr198);
                                       }
                                       else
                                       {
                                          addr352:
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr439);
                              }
                           }
                           else
                           {
                              addr178:
                              §§push(§<!6§.§8!H§);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(§2!H§.§+!7§);
                                 if(!_loc7_)
                                 {
                                    §§push(§<!6§.§8!!§);
                                    if(_loc8_)
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr441);
                                 }
                                 §§goto(addr487);
                              }
                           }
                           §§goto(addr437);
                        }
                        else if(§4Y§ > 1)
                        {
                           §§push(_loc1_.particles);
                           if(!(_loc7_ && _loc1_))
                           {
                              §§goto(addr178);
                           }
                           §§goto(addr435);
                        }
                        else
                        {
                           §§push(§<!6§.PARTICLE_NAME_BIRD_TRAIL1);
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(!(_loc7_ && this))
                              {
                                 _loc4_ = §§pop();
                                 if(!_loc7_)
                                 {
                                    §§push(this.§7O§);
                                    if(_loc8_ || this)
                                    {
                                       §§push(1);
                                       if(!_loc7_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§push(§<!6§.PARTICLE_NAME_BIRD_TRAIL2);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop());
                                                if(_loc8_ || _loc2_)
                                                {
                                                   _loc4_ = §§pop();
                                                }
                                                else
                                                {
                                                   addr286:
                                                   _loc4_ = §§pop();
                                                   if(_loc7_ && this)
                                                   {
                                                   }
                                                   §§goto(addr360);
                                                }
                                                §§goto(addr360);
                                             }
                                             §§goto(addr286);
                                          }
                                          else
                                          {
                                             addr268:
                                             if(this.§7O§ == 2)
                                             {
                                                if(_loc8_ || _loc2_)
                                                {
                                                   §§push(§<!6§.PARTICLE_NAME_BIRD_TRAIL3);
                                                   if(!(_loc7_ && _loc1_))
                                                   {
                                                      §§goto(addr286);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr286);
                                                }
                                                addr316:
                                                §§push(_loc1_.particles);
                                                if(_loc8_ || _loc1_)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc8_ || _loc1_)
                                                   {
                                                      §§push(§2!H§.§+!7§);
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         §§push(§<!6§.§8!!§);
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            §§goto(addr352);
                                                            §§push(_loc2_);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr487);
                                             }
                                          }
                                          §§push(this);
                                          §§push(this.§7O§ + 1);
                                          if(_loc8_ || _loc1_)
                                          {
                                             §§push(§§pop() % 3);
                                          }
                                          §§pop().§7O§ = §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             §§goto(addr316);
                                          }
                                          §§goto(addr375);
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr375);
                              }
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr360);
                     }
                     §§goto(addr365);
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc7_ && this))
               {
                  _loc1_.§[r§(this);
                  if(_loc8_)
                  {
                     §§goto(addr74);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr80);
         }
         §§goto(addr74);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§;S§.mTryToFly)
            {
               if(!_loc2_)
               {
                  §,H§(§%h§.§+T§);
                  if(_loc1_ || this)
                  {
                     addr49:
                  }
               }
            }
            else
            {
               super.playScreamingSoundEffect();
            }
            return;
         }
         §§goto(addr49);
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§"f§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(false);
                     if(_loc3_ || param1)
                     {
                        return §§pop();
                     }
                     §§goto(addr82);
                  }
                  else
                  {
                     addr78:
                     this.§"f§ = true;
                  }
                  §§goto(addr82);
               }
               else
               {
                  §,H§(§%h§.§8M§);
                  if(_loc3_ || param1)
                  {
                     §§goto(addr78);
                  }
               }
               §§push(true);
            }
            addr82:
            return §§pop();
         }
         §§goto(addr78);
      }
      
      private function §3x§(param1:int) : int
      {
         return Math.min(§=w§.§ o§.§!,§,param1);
      }
      
      override public function addDestructionParticles(param1:§2!H§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§1!=§(false) + 1);
         var _loc4_:Number = 90;
         if(_loc9_ || this)
         {
            §§push(this.§3x§(_loc3_));
            if(!(_loc10_ && _loc3_))
            {
               §§push(int(§§pop()));
               if(_loc9_ || _loc3_)
               {
                  addr60:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               for(; _loc5_ < _loc3_; _loc5_++,if(_loc10_)
               {
                  break;
               })
               {
                  §§push(_loc4_);
                  §§push(Math.random() * (720 / _loc3_));
                  if(_loc9_ || _loc3_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        §§push(_loc4_ = §§pop());
                        if(!_loc10_)
                        {
                           §§push(§§pop() / (180 / Math.PI));
                           if(_loc9_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc10_ && param1))
                              {
                                 §§push(-§;S§.mW);
                                 if(!_loc10_)
                                 {
                                    §§push(§ !§.§`J§);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             addr133:
                                             §§push(_loc7_ = §§pop());
                                             if(!_loc10_)
                                             {
                                                §§push(Math.random() * -_loc7_);
                                                §§push(2);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   if(_loc9_)
                                                   {
                                                      addr149:
                                                      §§push(Number(§§pop()));
                                                      if(!_loc10_)
                                                      {
                                                         addr152:
                                                         _loc7_ = §§pop();
                                                         if(!(_loc9_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(-§;S§.mH);
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            addr170:
                                                            §§push(§ !§.§`J§);
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               addr206:
                                                               §§push(Number(§§pop() * §§pop()));
                                                               if(_loc9_ || this)
                                                               {
                                                                  addr189:
                                                                  §§push(_loc8_ = §§pop());
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     addr197:
                                                                     §§push(§§pop() + Math.random() * -_loc8_ * 2);
                                                                  }
                                                               }
                                                               _loc8_ = Number(§§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               param1.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + _loc7_,§'[§().GetPosition().y + _loc8_,1500,"",§<!6§.§4!8§(§1>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                               addr209:
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr197);
                                             }
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr197);
               }
               return;
            }
         }
         §§goto(addr60);
      }
      
      override public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         if(_loc9_ || param2)
         {
            if(§@!-§())
            {
               if(_loc9_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(_loc9_)
               {
                  return;
               }
            }
         }
         §§push(§8!A§() / 10);
         if(_loc9_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc9_ || _loc3_)
         {
            §§push(_loc3_);
            if(!_loc10_)
            {
               §§push(§§pop() * §1!=§(false));
               if(!(_loc10_ && this))
               {
                  §§push(§§pop() * 0.12);
               }
            }
            §§push(int(§§pop() + §§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = Number(90);
         if(_loc9_ || _loc3_)
         {
            §§push(param2);
            if(_loc9_ || param2)
            {
               §§push(scale * scale);
               if(_loc9_ || param2)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc10_)
                  {
                     param2 = §§pop();
                     if(!(_loc10_ && _loc3_))
                     {
                        addr123:
                        §§push(_loc4_);
                        if(!_loc10_)
                        {
                           addr132:
                           §§push(int(§§pop() * (3 + param2 / 20)));
                           if(_loc9_ || param2)
                           {
                              _loc4_ = §§pop();
                              if(!(_loc10_ && this))
                              {
                                 addr148:
                                 §§push(int(this.§3x§(_loc4_)));
                                 if(!(_loc10_ && param2))
                                 {
                                    addr159:
                                    _loc4_ = §§pop();
                                    if(_loc9_)
                                    {
                                       addr163:
                                       _loc6_ = 0;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(_loc9_ || this)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc10_)
                                          {
                                             if(§§pop() >= §§pop() / 3)
                                             {
                                                §§push(0);
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr371:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§push(_loc5_);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop() + Math.random() * (720 / _loc4_)));
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     §§push(Number(§§pop() / (180 / Math.PI)));
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        §§push(0.5);
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * (Math.random() * 0.5));
                                                                                    addr305:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                 }
                                                                                 addr300:
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           addr297:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(!(_loc9_ || this))
                                                                           {
                                                                              break loop1;
                                                                           }
                                                                           param1.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x,§'[§().GetPosition().y,1250,"",§<!6§.§4!8§(§1>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                                           _loc6_++;
                                                                           while(true)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                                  addr265:
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr297);
                                                            continue loop9;
                                                         }
                                                         addr247:
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc5_);
                                                §§push(Math.random() * (720 / _loc4_));
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc10_ && this))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr247);
                                                }
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr371);
                                       }
                                       break;
                                    }
                                    _loc6_ = §§pop();
                                    §§goto(addr369);
                                 }
                              }
                              §§goto(addr163);
                           }
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr148);
                  }
               }
               §§goto(addr132);
            }
            §§goto(addr163);
         }
         §§goto(addr123);
      }
   }
}
