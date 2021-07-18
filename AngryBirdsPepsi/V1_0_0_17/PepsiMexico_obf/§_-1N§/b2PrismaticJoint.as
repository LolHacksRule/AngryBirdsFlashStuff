package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Mat33;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-Ja§.b2Vec3;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-jM§:b2Vec2;
      
      private var §_-oV§:b2Vec2;
      
      private var §_-D3§:Number;
      
      private var §_-YX§:b2Vec2;
      
      private var §_-k1§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-Zj§:b2Mat33;
      
      private var §_-tN§:b2Vec3;
      
      private var §_-5w§:Number;
      
      private var §_-3k§:Number;
      
      private var §_-OF§:Number;
      
      private var §_-AB§:Number;
      
      private var §_-oY§:Number;
      
      private var §_-bm§:Number;
      
      private var §_-b9§:Boolean;
      
      private var §_-2a§:Boolean;
      
      private var §_-0L§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            if(!_loc6_)
            {
               this.m_localAnchor2 = new b2Vec2();
               if(!(_loc6_ && param1))
               {
                  this.§_-jM§ = new b2Vec2();
                  if(_loc5_)
                  {
                     addr45:
                     this.§_-oV§ = new b2Vec2();
                     if(_loc5_ || _loc3_)
                     {
                        this.§_-YX§ = new b2Vec2();
                        if(!_loc6_)
                        {
                           this.§_-k1§ = new b2Vec2();
                           if(_loc5_ || this)
                           {
                              this.§_-Zj§ = new b2Mat33();
                              this.§_-tN§ = new b2Vec3();
                              addr81:
                              super(param1);
                              if(!(_loc6_ && _loc2_))
                              {
                                 this.m_localAnchor1.SetV(param1.§_-Kz§);
                                 §§goto(addr96);
                              }
                              §§goto(addr214);
                           }
                           addr96:
                           this.m_localAnchor2.SetV(param1.§_-Dq§);
                           if(_loc5_ || param1)
                           {
                              this.§_-jM§.SetV(param1.§_-1u§);
                              §§push(this.§_-oV§);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(this.§_-jM§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop().y);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(-§§pop());
                                       if(_loc5_)
                                       {
                                          §§pop().x = §§pop();
                                          addr149:
                                          §§push(this.§_-oV§);
                                          §§push(this.§_-jM§.x);
                                       }
                                    }
                                    §§pop().y = §§pop();
                                    this.§_-D3§ = param1.§_-Lv§;
                                    addr155:
                                    this.§_-tN§.§_-0a§();
                                    this.§_-5w§ = 0;
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr168:
                                       this.§_-3k§ = 0;
                                       this.§_-OF§ = param1.§_-AK§;
                                       addr175:
                                       this.§_-AB§ = param1.§_-AX§;
                                       §§goto(addr179);
                                    }
                                    §§goto(addr198);
                                 }
                              }
                              §§goto(addr149);
                           }
                           addr179:
                           this.§_-oY§ = param1.§_-W-§;
                           this.§_-bm§ = param1.motorSpeed;
                           this.§_-b9§ = param1.§_-3J§;
                           if(!(_loc6_ && param1))
                           {
                              addr198:
                              this.§_-2a§ = param1.§_-mY§;
                              if(!_loc6_)
                              {
                                 this.§_-0L§ = b2internal::_-vv;
                                 addr214:
                                 this.§_-YX§.§_-0a§();
                              }
                           }
                           this.§_-k1§.§_-0a§();
                           return;
                        }
                        §§goto(addr168);
                     }
                  }
                  §§goto(addr175);
               }
               §§goto(addr81);
            }
            §§goto(addr155);
         }
         §§goto(addr45);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§_-tN§.x);
            if(!_loc2_)
            {
               §§push(this.§_-k1§.x);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || this)
                  {
                     §§push(this.§_-3k§);
                     if(_loc3_)
                     {
                        §§push(this.§_-tN§.z);
                        if(!(_loc2_ && this))
                        {
                           addr56:
                           §§push(§§pop() + §§pop());
                           §§push(this.§_-YX§.x);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    addr85:
                                    §§push(§§pop() * §§pop());
                                    §§push(param1);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr93:
                                       §§push(this.§_-tN§.x);
                                       §§push(this.§_-k1§.y);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(this.§_-3k§);
                                             if(!(_loc2_ && param1))
                                             {
                                                addr123:
                                                §§push(this.§_-tN§.z);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§goto(addr149);
                                                }
                                             }
                                             §§goto(addr146);
                                          }
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr56);
                  }
                  addr149:
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     addr146:
                     §§push(§§pop() * this.§_-YX§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
               }
            }
            §§goto(addr93);
         }
         §§goto(addr85);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            §§push(§§pop() * this.§_-tN§.y);
         }
         return §§pop();
      }
      
      public function §_-ke§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-93;
         var _loc2_:b2Body = b2internal::_-9K;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc11_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!(_loc10_ && _loc1_))
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc11_)
            {
               addr72:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§_-Op§(this.§_-jM§)).x);
            if(!_loc10_)
            {
               §§push(_loc6_);
               if(_loc11_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc10_)
                  {
                     §§push(_loc8_.y);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(!(_loc10_ && _loc1_))
                        {
                           addr108:
                           §§push(§§pop() + §§pop());
                           if(_loc11_ || _loc3_)
                           {
                              addr124:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr124);
                        }
                        var _loc9_:* = §§pop();
                        return §§pop();
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr124);
               }
               §§goto(addr108);
            }
            §§goto(addr124);
         }
         §§goto(addr72);
      }
      
      public function §_-A6§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-93;
         var _loc2_:b2Body = b2internal::_-9K;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc3_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc22_ && _loc2_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc21_)
            {
               addr63:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_)
            {
               §§push(_loc4_);
               if(_loc21_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_)
                  {
                     addr76:
                     §§push(_loc3_.col2.x);
                     if(_loc21_ || this)
                     {
                        addr86:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc21_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(!(_loc22_ && _loc2_))
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc21_)
                     {
                        §§push(_loc4_);
                        if(!_loc22_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc22_)
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc21_ || _loc3_)
                              {
                                 addr128:
                                 §§push(§§pop() + §§pop() * _loc5_);
                                 if(!(_loc22_ && _loc2_))
                                 {
                                    addr136:
                                    §§push(Number(§§pop()));
                                    if(!(_loc22_ && _loc3_))
                                    {
                                       _loc5_ = §§pop();
                                       addr157:
                                       if(!(_loc22_ && _loc1_))
                                       {
                                          §§push(_loc6_);
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc3_ = _loc2_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(!(_loc22_ && _loc3_))
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(!_loc22_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(!_loc22_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       if(_loc21_ || this)
                                       {
                                          §§push(_loc3_.col1);
                                          if(!(_loc22_ && this))
                                          {
                                             §§push(§§pop().x);
                                             §§push(_loc7_);
                                             if(!(_loc22_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                §§push(_loc3_.col2);
                                                if(_loc21_ || _loc2_)
                                                {
                                                   §§push(§§pop().x);
                                                   §§push(_loc8_);
                                                   if(!(_loc22_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc22_)
                                                         {
                                                            _loc6_ = Number(§§pop());
                                                            if(_loc21_)
                                                            {
                                                               addr251:
                                                               §§push(_loc3_.col1.y);
                                                               if(!_loc22_)
                                                               {
                                                                  addr259:
                                                                  §§push(§§pop() * _loc7_);
                                                                  §§push(_loc3_.col2.y * _loc8_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     addr263:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc21_)
                                                                     {
                                                                        _loc8_ = Number(§§pop());
                                                                        if(_loc21_ || _loc1_)
                                                                        {
                                                                           addr284:
                                                                           _loc7_ = Number(_loc6_);
                                                                        }
                                                                        §§push(_loc1_.m_sweep.c.x);
                                                                        if(_loc21_)
                                                                        {
                                                                           addr292:
                                                                           §§push(§§pop() + _loc4_);
                                                                        }
                                                                        var _loc9_:Number = §§pop();
                                                                        §§push(_loc1_.m_sweep.c.y);
                                                                        if(_loc21_ || _loc1_)
                                                                        {
                                                                           §§push(§§pop() + _loc5_);
                                                                           if(_loc21_)
                                                                           {
                                                                              addr310:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc2_.m_sweep.c.x);
                                                                           if(!(_loc22_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() + _loc7_);
                                                                              if(!(_loc22_ && _loc1_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc2_.m_sweep.c.y);
                                                                           if(_loc21_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() + _loc8_);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 addr349:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc11_);
                                                                              if(!(_loc22_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() - _loc9_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr363:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc13_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() - _loc10_);
                                                                                    if(_loc21_ || _loc2_)
                                                                                    {
                                                                                       addr382:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc14_:* = §§pop();
                                                                                    var _loc15_:b2Vec2 = _loc1_.§_-Op§(this.§_-jM§);
                                                                                    var _loc16_:b2Vec2 = _loc1_.§_-ZZ§;
                                                                                    var _loc17_:b2Vec2 = _loc2_.§_-ZZ§;
                                                                                    §§push(_loc1_.m_angularVelocity);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc18_:* = §§pop();
                                                                                    §§push(_loc2_.m_angularVelocity);
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc19_:* = §§pop();
                                                                                    §§push(_loc13_);
                                                                                    if(!(_loc22_ && this))
                                                                                    {
                                                                                       §§push(-_loc18_);
                                                                                       §§push(_loc15_.y);
                                                                                       if(_loc21_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() * (§§pop() * §§pop()));
                                                                                          if(!(_loc22_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() + _loc14_ * (_loc18_ * _loc15_.x));
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                §§push(_loc15_.x);
                                                                                                §§push(_loc17_.x);
                                                                                                §§push(_loc19_);
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc8_);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(_loc16_.x);
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               addr483:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               §§push(_loc18_);
                                                                                                               if(!(_loc22_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!(_loc22_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        §§goto(addr504);
                                                                                                                     }
                                                                                                                     §§goto(addr524);
                                                                                                                  }
                                                                                                                  addr504:
                                                                                                                  §§push(§§pop() - §§pop() * §§pop());
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     §§push(_loc15_.y);
                                                                                                                     §§push(_loc17_.y);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§goto(addr534);
                                                                                                                     }
                                                                                                                     addr534:
                                                                                                                     §§goto(addr535);
                                                                                                                  }
                                                                                                                  addr535:
                                                                                                                  §§push(_loc19_);
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr524:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     §§push(_loc16_.y);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        addr530:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        §§push(_loc18_);
                                                                                                                     }
                                                                                                                     §§push(_loc4_);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop() * (§§pop() - §§pop() * §§pop()));
                                                                                                                  if(!(_loc22_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        addr554:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr554);
                                                                                                                  }
                                                                                                                  var _loc20_:* = §§pop();
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr534);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr483);
                                                                                                }
                                                                                                §§goto(addr530);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                       §§goto(addr534);
                                                                                    }
                                                                                    §§goto(addr554);
                                                                                 }
                                                                                 §§goto(addr382);
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                   }
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr263);
                                          }
                                       }
                                       §§goto(addr251);
                                    }
                                 }
                              }
                              §§goto(addr128);
                           }
                           _loc4_ = §§pop();
                           §§goto(addr157);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr157);
               }
               §§goto(addr86);
            }
            §§goto(addr76);
         }
         §§goto(addr63);
      }
      
      public function §_-qL§() : Boolean
      {
         return this.§_-b9§;
      }
      
      public function §_-M5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            b2internal::_-93.SetAwake(true);
            if(!_loc2_)
            {
               b2internal::_-9K.SetAwake(true);
               if(_loc3_ || _loc2_)
               {
               }
               §§goto(addr53);
            }
            this.§_-b9§ = param1;
         }
         addr53:
      }
      
      public function §_-3f§() : Number
      {
         return this.§_-OF§;
      }
      
      public function §_-LG§() : Number
      {
         return this.§_-AB§;
      }
      
      public function § get§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::_-93.SetAwake(true);
            if(_loc4_)
            {
               b2internal::_-9K.SetAwake(true);
               if(!(_loc3_ && _loc3_))
               {
                  this.§_-OF§ = param1;
                  if(!_loc3_)
                  {
                     addr50:
                     this.§_-AB§ = param2;
                  }
               }
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §_-ur§() : Boolean
      {
         return this.§_-2a§;
      }
      
      public function §_-HV§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            b2internal::_-93.SetAwake(true);
            if(_loc3_)
            {
               b2internal::_-9K.SetAwake(true);
               if(!_loc2_)
               {
                  addr45:
                  this.§_-2a§ = param1;
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function §_-BM§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::_-93.SetAwake(true);
            if(!(_loc2_ && _loc3_))
            {
               b2internal::_-9K.SetAwake(true);
               if(!_loc3_)
               {
               }
               §§goto(addr48);
            }
            this.§_-bm§ = param1;
         }
         addr48:
      }
      
      public function §_-wU§() : Number
      {
         return this.§_-bm§;
      }
      
      public function §_-90§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            b2internal::_-93.SetAwake(true);
            if(_loc2_ || this)
            {
               b2internal::_-9K.SetAwake(true);
               if(_loc2_ || _loc2_)
               {
                  addr54:
                  this.§_-oY§ = param1;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §_-ug§() : Number
      {
         return this.§_-3k§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1564
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1488
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1823
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
