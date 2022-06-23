package §^!A§
{
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §>!7§.§@!+§;
   import §^!L§.§%h§;
   import §^!L§.§5b§;
   import §^!L§.§6<§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=!$§ extends §^`§
   {
      
      public static const §[=§:int = 6;
      
      private static const §"!<§:int = 200;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §=!$§)
         {
            §§push(§§findproperty(§[=§));
            §§push(241 * § !§.§`J§);
            if(!_loc1_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().§[=§ = §§pop();
            if(!(_loc1_ && _loc1_))
            {
               addr51:
               §"!<§ = 200;
            }
            return;
         }
         §§goto(addr51);
      }
      
      private const § use§:Number = -5;
      
      private const §<!E§:int = 1500;
      
      private const §28§:int = 3500;
      
      private const §?Q§:int = 1500;
      
      private var §%!1§:Boolean = false;
      
      private var §@C§:Boolean = false;
      
      private var §7p§:Number = -5;
      
      private var §0d§:Number = -5;
      
      private var §^! §:Number = -5;
      
      private var §@!G§:Number = 0;
      
      private var §[7§:int = 0;
      
      private var §]!+§:Number = 0;
      
      private var §'9§:Number = 0;
      
      private var §^W§:Number = 0;
      
      private var §?O§:Number = 1000;
      
      private var §7!F§:Boolean = false;
      
      private var §+r§:§@H§;
      
      public function §=!$§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            if(!(_loc13_ && this))
            {
               this.§+r§ = param1;
               if(_loc12_ || this)
               {
               }
               §§goto(addr78);
            }
            §;S§.mTryToFly = true;
            if(_loc13_)
            {
            }
            §§goto(addr78);
         }
         addr78:
         this.§^W§ = 0;
      }
      
      private function get §-§() : Number
      {
         return §[=§ * scale;
      }
      
      override public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(2);
               if(!(_loc3_ && param2))
               {
                  §§push(§§pop() < §§pop());
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           §§pop();
                           §§push(this.§?O§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() < §"!<§);
                              if(_loc4_)
                              {
                                 §§goto(addr71);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr100);
         }
         addr71:
         if(§§pop())
         {
            if(!_loc3_)
            {
               return;
            }
         }
         else
         {
            addr89:
            §§push(this.§0d§ == this.§ use§);
            if(!_loc3_)
            {
               addr95:
               if(!§§pop() || param2 > 20)
               {
                  this.§7a§(1,param2 > 20);
               }
            }
            §§goto(addr95);
         }
         this.§?O§ = 0;
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§,?§(param1));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(false);
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr49);
                     }
                  }
                  else
                  {
                     addr96:
                     this.§+w§(0);
                     §§push(true);
                  }
                  return §§pop();
               }
               §=w§.§ o§.particles.§4#§(§<!6§.§7!M§,§2!H§.§+!7§,§<!6§.§8!!§,§'[§().GetPosition().x,§'[§().GetPosition().y,-1,"",§<!6§.§2!2§);
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr96);
               }
               §§goto(addr96);
            }
            addr49:
            return §§pop();
         }
         §§goto(addr96);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = NaN;
         if(_loc9_)
         {
            §§push(!§[!E§);
            if(_loc9_ || param2)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§pop();
                        §§push(this.§7p§);
                        if(!(_loc8_ && param2))
                        {
                           §§push(§§pop() == this.§ use§);
                           if(!_loc8_)
                           {
                              addr51:
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    this.§+w§();
                                    if(!(_loc8_ && param3))
                                    {
                                       addr63:
                                       §§push(param1);
                                       if(_loc9_ || this)
                                       {
                                          addr71:
                                          §§push(12);
                                          if(_loc9_)
                                          {
                                             addr85:
                                             §§push(§§pop() < §§pop());
                                             §§push(§§pop() < §§pop());
                                             if(!(_loc8_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§pop();
                                                      if(_loc9_ || param3)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc8_)
                                                         {
                                                            addr109:
                                                            §§push(§§pop() > 5);
                                                            if(§§pop() > 5)
                                                            {
                                                               addr111:
                                                               §§pop();
                                                               if(_loc9_ || param2)
                                                               {
                                                                  §§push(this.§%!1§);
                                                                  if(_loc8_)
                                                                  {
                                                                  }
                                                                  §§goto(addr124);
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            §§goto(addr124);
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   addr124:
                                                   §§goto(addr123);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr71);
                     }
                     addr123:
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           addr127:
                           §,H§(§%h§.§=c§);
                           §§push(Number(§`Y§));
                           if(!(_loc8_ && param1))
                           {
                              _loc7_ = §§pop();
                              addr171:
                              this.§%!1§ = true;
                              §§push(_loc7_);
                           }
                        }
                        §§goto(addr171);
                     }
                     else
                     {
                        §§push(Number(super.applyDamage(param1,param2,param3,param4,param5,param6)));
                        if(!(_loc8_ && param1))
                        {
                           addr168:
                           _loc7_ = §§pop();
                           if(_loc8_)
                           {
                           }
                           §§goto(addr171);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr51);
               }
               §§goto(addr109);
            }
            §§goto(addr111);
         }
         §§goto(addr171);
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§[!E§)
            {
               if(!_loc1_)
               {
                  this.§,?§(null);
                  if(!(_loc1_ && _loc2_))
                  {
                     addr58:
                     §[!D§ = true;
                     if(_loc2_)
                     {
                        this.§+w§(0);
                        if(!_loc1_)
                        {
                           addr68:
                           §§push(true);
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr72:
                           §§push(false);
                        }
                        return §§pop();
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr68);
               }
               §§goto(addr58);
            }
            §§goto(addr72);
         }
         §§goto(addr58);
      }
      
      private function §+w§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(0);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_)
                     {
                        addr58:
                        this.§7p§ = 0;
                        this.update(0);
                     }
                  }
                  else
                  {
                     addr67:
                     if(param1 > 0)
                     {
                        this.§7p§ = param1;
                     }
                     else
                     {
                        this.§7p§ = this.§<!E§;
                     }
                  }
                  return;
               }
            }
            §§goto(addr67);
         }
         §§goto(addr58);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Vector.<§;!%§> = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         §§push(this);
         §§push(this.§?O§);
         if(!_loc9_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§?O§ = §§pop();
         §[!D§ = true;
         if(!(_loc9_ && this))
         {
            §§push(this.§7p§);
            §§push(this.§ use§);
            if(_loc8_)
            {
               if(§§pop() != §§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(this);
                     §§push(this.§7p§);
                     if(_loc8_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§7p§ = §§pop();
                  }
                  §§push(this.§7p§);
                  if(!_loc9_)
                  {
                     §§push(0);
                     if(!_loc9_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(this.§^W§ >= 1)
                           {
                              this.§7p§ = this.§ use§;
                              if(!(_loc9_ && _loc3_))
                              {
                                 this.§^W§ = 1;
                                 if(_loc8_ || _loc2_)
                                 {
                                    this.§7@§(this.§-§);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       this.§0d§ = this.§28§;
                                       if(_loc8_)
                                       {
                                          §@!+§.§`Z§(false);
                                          if(_loc8_)
                                          {
                                             addr126:
                                             §§push(this);
                                             §§push(this.§-§);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() * this.§^W§);
                                             }
                                             §§pop().§7@§(§§pop(),§4>§.material.mValues[§5b§.§>!2§],§4>§.material.mValues[§5b§.§^!0§],§4>§.material.mValues[§5b§.§0!,§]);
                                             §;S§.setScale(this.§^W§ * scale);
                                          }
                                          else
                                          {
                                             addr166:
                                             _loc2_ = new Vector.<§;!%§>(1,true);
                                             if(!(_loc9_ && this))
                                             {
                                                _loc2_[0] = this;
                                                if(!_loc9_)
                                                {
                                                   container.addExplosions(§[!N§.§%Q§,§'[§().GetPosition().x,§'[§().GetPosition().y,_loc2_);
                                                   addr200:
                                                   this.§,?§(null);
                                                   §1>§ = "BIRD_ORANGE_BIG";
                                                   §4>§ = §6<§.§6H§(§1>§);
                                                   if(_loc8_ || param1)
                                                   {
                                                      sprite.scaleX = this.§^W§;
                                                      if(_loc9_)
                                                      {
                                                      }
                                                      addr606:
                                                      return;
                                                      addr228:
                                                   }
                                                   §§goto(addr228);
                                                }
                                                sprite.scaleY = this.§^W§;
                                                §§goto(addr228);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr228);
                                       }
                                       else
                                       {
                                          §,H§(§%h§.§"h§);
                                          addr285:
                                          if(!_loc9_)
                                          {
                                             addr301:
                                             §§goto(addr606);
                                          }
                                          else
                                          {
                                             addr538:
                                             _loc5_ = (_loc4_ = §'[§()).GetLinearVelocity();
                                             if(!_loc9_)
                                             {
                                                _loc4_.ApplyImpulse(new b2Vec2(this.§]!+§,this.§'9§),§'[§().GetPosition());
                                                if(_loc9_ && param1)
                                                {
                                                }
                                                addr596:
                                                §§goto(addr606);
                                             }
                                             _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                             if(!_loc9_)
                                             {
                                                this.§7a§(0.02,true);
                                             }
                                          }
                                          §§goto(addr606);
                                       }
                                    }
                                    else
                                    {
                                       addr407:
                                       §§push(this);
                                       §§push(Math.random() * 100);
                                       if(!_loc9_)
                                       {
                                          §§push(50);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc9_ && this))
                                             {
                                                addr431:
                                                §§push(§§pop() * 10);
                                             }
                                             §§pop().§'9§ = §§pop();
                                             if(!(_loc9_ && param1))
                                             {
                                                addr440:
                                                §§push(this.§^! §);
                                                §§push(this.§?Q§);
                                                if(!_loc9_)
                                                {
                                                   addr447:
                                                   §§push(Number(§§pop() / §§pop()));
                                                   if(!(_loc9_ && this))
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr456:
                                                      §§push(_loc3_);
                                                      if(_loc8_)
                                                      {
                                                         addr460:
                                                         if(§§pop() > 1)
                                                         {
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§push(1);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr474:
                                                                     _loc3_ = §§pop();
                                                                     addr475:
                                                                     var _loc6_:*;
                                                                     §§push((_loc6_ = this).§[7§);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     var _loc7_:* = §§pop();
                                                                     if(!_loc9_)
                                                                     {
                                                                        _loc6_.§[7§ = _loc7_;
                                                                     }
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        addr506:
                                                                        if(this.§[7§ % 3 == 0)
                                                                        {
                                                                           addr508:
                                                                           §;S§.setScale(_loc3_ * scale);
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              addr602:
                                                                              this.§+r§.§&I§(this);
                                                                           }
                                                                           §§goto(addr606);
                                                                        }
                                                                        §§goto(addr596);
                                                                     }
                                                                     §§push(this);
                                                                     §§push(this.§-§);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr534:
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(0.00001);
                                                                        }
                                                                        §§pop().§7@§(§§pop(),§§pop(),0,0);
                                                                        §§goto(addr538);
                                                                     }
                                                                     §§goto(addr534);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr506);
                                                         }
                                                         §§goto(addr475);
                                                      }
                                                      §§goto(addr474);
                                                   }
                                                }
                                             }
                                             §§goto(addr506);
                                          }
                                       }
                                       §§goto(addr431);
                                    }
                                    §§goto(addr596);
                                 }
                                 else
                                 {
                                    addr273:
                                    this.§0d§ = this.§ use§;
                                    if(!_loc9_)
                                    {
                                       this.§^! § = this.§?Q§;
                                       if(!_loc9_)
                                       {
                                          §§goto(addr285);
                                       }
                                       else
                                       {
                                          §§goto(addr508);
                                       }
                                    }
                                 }
                                 §§goto(addr602);
                              }
                              §§goto(addr285);
                           }
                           else
                           {
                              §§push(this);
                              §§push(this.§^W§);
                              if(_loc8_)
                              {
                                 §§push(§§pop() + 0.2);
                              }
                              §§pop().§^W§ = §§pop();
                           }
                           §§goto(addr126);
                        }
                        else
                        {
                           §§push(this.§7p§);
                           §§push(param1);
                           if(!_loc9_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 §§goto(addr166);
                              }
                              §§goto(addr606);
                           }
                           else
                           {
                              addr233:
                              if(§§pop() != §§pop())
                              {
                                 addr234:
                                 §§push(this.§%!1§);
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(this);
                                       §§push(this.§0d§);
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§0d§ = §§pop();
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          §§push(this.§0d§);
                                          if(_loc8_ || _loc3_)
                                          {
                                             if(§§pop() < 0)
                                             {
                                                this.§@C§ = true;
                                                §§goto(addr273);
                                             }
                                             §§goto(addr301);
                                          }
                                          else
                                          {
                                             §§goto(addr474);
                                          }
                                       }
                                       else
                                       {
                                          addr360:
                                          §§push(this.§@!G§);
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr369:
                                             §§push(0);
                                             if(!(_loc9_ && param1))
                                             {
                                                addr377:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      this.§@!G§ = this.§?Q§ / 5;
                                                      §§push(this);
                                                      §§push(Math.random() * 100);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(50);
                                                         if(_loc8_)
                                                         {
                                                            addr406:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§push(10);
                                                            }
                                                            §§pop().§]!+§ = §§pop();
                                                            §§goto(addr407);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   §§goto(addr538);
                                                }
                                                §§goto(addr440);
                                             }
                                             §§goto(addr460);
                                          }
                                          §§goto(addr447);
                                       }
                                       §§goto(addr506);
                                    }
                                    §§goto(addr301);
                                 }
                                 §§goto(addr606);
                              }
                              else
                              {
                                 §§push(this.§@C§);
                              }
                              if(§§pop())
                              {
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(this.§^! §);
                                    if(!_loc9_)
                                    {
                                       §§push(0);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(this);
                                                §§push(this.§^! §);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§^! § = §§pop();
                                                §§push(this);
                                                §§push(this.§@!G§);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§@!G§ = §§pop();
                                                if(!(_loc9_ && this))
                                                {
                                                   §§goto(addr360);
                                                }
                                                §§goto(addr506);
                                             }
                                             §§goto(addr360);
                                          }
                                          else
                                          {
                                             this.§7!F§ = true;
                                             if(!_loc9_)
                                             {
                                                §§goto(addr602);
                                             }
                                             §§goto(addr606);
                                          }
                                       }
                                       §§goto(addr506);
                                    }
                                    §§goto(addr474);
                                 }
                                 §§goto(addr456);
                              }
                           }
                        }
                        §§goto(addr606);
                     }
                     §§goto(addr377);
                  }
                  §§goto(addr369);
               }
               else
               {
                  §§push(this.§0d§);
                  §§push(this.§ use§);
               }
            }
            §§goto(addr233);
         }
         §§goto(addr234);
      }
      
      private function §7@§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §'[§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(_loc8_ || this)
         {
            _loc5_.SetAwake(true);
            if(_loc8_)
            {
               _loc7_.SetRadius(param1);
               addr42:
               if(_loc8_)
               {
                  §§push(param2);
                  if(_loc8_)
                  {
                     §§push(0);
                     if(!_loc9_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc8_)
                           {
                              _loc6_.SetDensity(param2);
                              addr69:
                              _loc5_.ResetMassData();
                              §§goto(addr71);
                           }
                           §§goto(addr103);
                        }
                        addr71:
                        §§push(param3);
                        if(!(_loc9_ && this))
                        {
                           addr89:
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr92:
                              if(§§pop() >= §§pop())
                              {
                                 addr93:
                                 _loc6_.SetFriction(param3);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr103);
                                 }
                                 §§goto(addr113);
                              }
                              addr103:
                              §§goto(addr105);
                           }
                           addr105:
                           §§goto(addr104);
                        }
                        addr104:
                        if(param4 >= 0)
                        {
                           if(_loc8_ || param1)
                           {
                              addr113:
                              _loc6_.SetRestitution(param4);
                           }
                        }
                        return;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr89);
               }
               §§goto(addr93);
            }
            §§goto(addr69);
         }
         §§goto(addr42);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(!§[!E§)
            {
               if(_loc2_)
               {
                  addr28:
                  super.addTrail();
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §7a§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         §§push((§'[§().GetFixtureList().GetShape() as b2CircleShape).GetRadius());
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§8!A§() / 40);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1);
         if(!(_loc13_ && param1))
         {
            §§push(_loc4_);
            if(!(_loc13_ && param2))
            {
               §§push(§§pop() * §1!=§(true));
               if(!(_loc13_ && param1))
               {
                  §§push(§§pop() * 0.9);
               }
            }
            §§push(int(§§pop() + §§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(Math.PI / 2);
         if(!(_loc13_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc13_ && param2))
         {
            §§push(§§pop() / this.§-§);
            if(_loc12_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(!_loc13_)
         {
            §§push(_loc5_);
            §§push(_loc7_);
            if(_loc12_ || param2)
            {
               §§push(§§pop() * 3);
               if(!_loc13_)
               {
                  addr123:
                  §§push(§§pop() * param1);
               }
               §§push(§§pop() * §§pop());
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc13_ && param2))
                  {
                     §§push(§§pop());
                     if(!_loc13_)
                     {
                        _loc5_ = §§pop();
                        addr140:
                        §§push(30);
                     }
                     if(§§pop() > §§pop())
                     {
                        addr142:
                        §§push(30);
                        if(_loc12_ || param1)
                        {
                           _loc5_ = §§pop();
                           if(!(_loc13_ && param2))
                           {
                              addr158:
                              if(param2)
                              {
                                 §§push(8);
                                 if(!_loc13_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!_loc13_)
                                    {
                                       §§push(8);
                                       if(_loc12_)
                                       {
                                          addr170:
                                          _loc4_ = Number(§§pop());
                                          addr175:
                                          addr169:
                                          if(_loc12_)
                                          {
                                             addr173:
                                             §§push(0);
                                          }
                                          while(true)
                                          {
                                             §§push(_loc9_);
                                             if(_loc12_ || _loc3_)
                                             {
                                                §§push(_loc5_);
                                                if(!_loc13_)
                                                {
                                                   if(§§pop() >= §§pop() / 3)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr540:
                                                         while(true)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(Number(§§pop() + §;!E§(Math.random() * (720 / _loc5_))));
                                                               }
                                                               §§push(_loc6_ = §§pop());
                                                               §§push(180);
                                                               if(!(_loc13_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() / Math.PI);
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(Number(§§pop() / §§pop()));
                                                                     if(_loc12_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        §§push(Math.random() * this.§-§);
                                                                        if(_loc12_ || this)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§-§);
                                                                              addr418:
                                                                              while(true)
                                                                              {
                                                                                 §§push(2);
                                                                                 addr419:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          addr425:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(2);
                                                                                             addr426:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc12_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() * _loc7_);
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc12_ || this)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            §§push(0.5);
                                                                                                         }
                                                                                                         addr446:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc4_);
                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * (Math.random() * 0.5));
                                                                                                               addr463:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            addr458:
                                                                                                         }
                                                                                                      }
                                                                                                      addr448:
                                                                                                   }
                                                                                                   loop4:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc11_ = §§pop();
                                                                                                      §§push(§=w§.§ o§);
                                                                                                      addr468:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().particles);
                                                                                                         addr469:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§<!6§.§9<§);
                                                                                                            addr471:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§2!H§.§"!5§);
                                                                                                               addr473:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§<!6§.§!E§);
                                                                                                                  addr475:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§4#§(§§pop(),§§pop(),§§pop(),§'[§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§'[§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§<!6§.§#4§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
                                                                                                                     addr530:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc9_++;
                                                                                                                        if(_loc13_ && param1)
                                                                                                                        {
                                                                                                                           break loop4;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                   addr541:
                                                                                                   return;
                                                                                                   addr465:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr425:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr465);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr416:
                                                                        }
                                                                        §§goto(addr465);
                                                                     }
                                                                     §§goto(addr425);
                                                                  }
                                                                  §§goto(addr418);
                                                               }
                                                               §§goto(addr426);
                                                            }
                                                            §§goto(addr541);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc12_)
                                                      {
                                                         §§push(Math.random() * (720 / _loc5_));
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            §§push(Number(§§pop() + §§pop()));
                                                            if(_loc12_ || this)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§push(Math.random() * this.§-§);
                                                               §§push(this.§-§);
                                                               if(_loc12_ || param1)
                                                               {
                                                                  §§push(2);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        addr228:
                                                                        §§push(§§pop() - §§pop());
                                                                        §§push(2);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              addr241:
                                                                              §§push(§§pop() * _loc7_);
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    §§push(§=w§.§ o§);
                                                                                    if(_loc12_ || this)
                                                                                    {
                                                                                       §§push(§§pop().particles);
                                                                                       if(!(_loc13_ && param1))
                                                                                       {
                                                                                          §§push(§<!6§.§=#§);
                                                                                          if(!(_loc13_ && _loc3_))
                                                                                          {
                                                                                             §§push(§2!H§.§"!5§);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§push(§<!6§.§!E§);
                                                                                                if(!(_loc13_ && param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr475);
                                                                                             }
                                                                                             §§goto(addr473);
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                       }
                                                                                       §§goto(addr469);
                                                                                    }
                                                                                    §§goto(addr468);
                                                                                 }
                                                                                 §§goto(addr541);
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                           §§goto(addr446);
                                                                        }
                                                                        §§goto(addr426);
                                                                     }
                                                                     §§goto(addr463);
                                                                  }
                                                                  §§goto(addr419);
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                   }
                                                   §§goto(addr425);
                                                }
                                                §§goto(addr540);
                                             }
                                             break;
                                          }
                                          _loc9_ = §§pop();
                                          if(!(_loc13_ && param2))
                                          {
                                             §§goto(addr538);
                                          }
                                          §§goto(addr530);
                                       }
                                       _loc9_ = §§pop();
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr173);
                           }
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr140);
               }
               §§goto(addr170);
            }
            §§goto(addr123);
         }
         §§goto(addr142);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§[!E§)
            {
               if(!_loc1_)
               {
                  §§push(1);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  §§push(-1);
               }
               return §§pop();
            }
         }
         §§goto(addr47);
      }
      
      private function §,?§(param1:§@H§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§"f§)
            {
               if(!(_loc2_ && param1))
               {
                  §§push(false);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr84:
                  §§push(true);
               }
               return §§pop();
            }
            addr59:
            §§push(§,!F§);
            §§push("Globe_Bird_Special_Activation_");
            if(!_loc2_)
            {
               §§push(§§pop() + Math.round(Math.random() * 2 + 1));
            }
            §§pop().§!!C§(§§pop(),"ChannelOrangeBird");
            if(_loc3_ || _loc2_)
            {
               §"f§ = true;
            }
            §§goto(addr84);
         }
         §§goto(addr59);
      }
   }
}
