package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-jM§:b2Vec2;
      
      private var §_-oV§:b2Vec2;
      
      private var §_-YX§:b2Vec2;
      
      private var §_-k1§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-Zj§:b2Mat22;
      
      private var §_-tN§:b2Vec2;
      
      private var §_-5w§:Number;
      
      private var §_-3k§:Number;
      
      private var §_-OF§:Number;
      
      private var §_-AB§:Number;
      
      private var §_-oY§:Number;
      
      private var §_-bm§:Number;
      
      private var §_-b9§:Boolean;
      
      private var §_-2a§:Boolean;
      
      private var §_-0L§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         if(_loc6_ || _loc3_)
         {
            this.m_localAnchor2 = new b2Vec2();
            if(!(_loc5_ && param1))
            {
               this.§_-jM§ = new b2Vec2();
               if(!(_loc5_ && _loc2_))
               {
                  this.§_-oV§ = new b2Vec2();
                  this.§_-YX§ = new b2Vec2();
                  addr62:
                  this.§_-k1§ = new b2Vec2();
                  this.§_-Zj§ = new b2Mat22();
                  this.§_-tN§ = new b2Vec2();
                  super(param1);
                  if(!(_loc5_ && _loc2_))
                  {
                     this.m_localAnchor1.SetV(param1.§_-Kz§);
                     if(_loc6_)
                     {
                        this.m_localAnchor2.SetV(param1.§_-Dq§);
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§_-jM§.SetV(param1.§_-1u§);
                           §§push(this.§_-oV§);
                           if(_loc6_)
                           {
                              §§push(this.§_-jM§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop().y);
                                 if(!_loc5_)
                                 {
                                    §§push(-§§pop());
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().x = §§pop();
                                       addr139:
                                       §§push(this.§_-oV§);
                                       §§push(this.§_-jM§.x);
                                    }
                                 }
                                 §§pop().y = §§pop();
                                 this.§_-tN§.§_-0a§();
                                 addr144:
                                 this.§_-5w§ = 0;
                                 this.§_-3k§ = 0;
                                 this.§_-OF§ = param1.§_-AK§;
                                 this.§_-AB§ = param1.§_-AX§;
                                 if(_loc6_)
                                 {
                                    this.§_-oY§ = param1.§_-W-§;
                                    if(_loc6_ || this)
                                    {
                                       addr171:
                                       this.§_-bm§ = param1.motorSpeed;
                                       this.§_-b9§ = param1.§_-3J§;
                                       this.§_-2a§ = param1.§_-mY§;
                                       if(_loc5_ && this)
                                       {
                                       }
                                       §§goto(addr203);
                                    }
                                    this.§_-0L§ = b2internal::_-vv;
                                    addr200:
                                    this.§_-YX§.§_-0a§();
                                 }
                                 §§goto(addr203);
                              }
                           }
                           §§goto(addr139);
                        }
                        addr203:
                        this.§_-k1§.§_-0a§();
                        return;
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr200);
               }
               §§goto(addr144);
            }
            §§goto(addr171);
         }
         §§goto(addr62);
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
         if(_loc3_ || _loc2_)
         {
            §§push(this.§_-tN§.x);
            if(!_loc2_)
            {
               §§push(this.§_-k1§.x);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§_-3k§);
                     if(_loc3_)
                     {
                        addr50:
                        §§push(this.§_-tN§.y);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§push(this.§_-YX§.x);
                              if(_loc3_)
                              {
                                 §§push(§§pop() + §§pop() * §§pop());
                                 if(!_loc2_)
                                 {
                                    addr79:
                                    addr80:
                                    §§push(§§pop() * §§pop());
                                    §§push(param1);
                                    if(_loc2_)
                                    {
                                    }
                                    §§goto(addr129);
                                 }
                                 §§push(this.§_-tN§.x);
                                 if(!_loc2_)
                                 {
                                    addr103:
                                    §§push(this.§_-k1§.y);
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(this.§_-tN§.y);
                                    if(!_loc2_)
                                    {
                                       addr127:
                                       §§push(§§pop() + §§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr126:
                                          §§push(§§pop() * this.§_-YX§.y);
                                       }
                                       addr129:
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                       §§push(§§pop() * (§§pop() + §§pop()));
                                    }
                                    §§goto(addr126);
                                 }
                                 §§push(this.§_-3k§);
                                 if(_loc3_)
                                 {
                                    §§goto(addr103);
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr79);
               }
               §§goto(addr50);
            }
            §§goto(addr79);
         }
         §§goto(addr80);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && this))
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
         if(_loc11_ || this)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc11_ || _loc3_)
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc11_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§_-Op§(this.§_-jM§)).x);
            if(_loc11_)
            {
               §§push(_loc6_);
               if(!_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc11_ || _loc1_)
                  {
                     §§push(_loc8_.y);
                     if(_loc11_)
                     {
                        §§goto(addr99);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr119);
               }
               addr99:
               §§push(§§pop() * _loc7_);
               if(!(_loc10_ && _loc2_))
               {
                  addr115:
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     addr119:
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr119);
               }
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr119);
         }
         §§goto(addr61);
      }
      
      public function §_-A6§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-93;
         var _loc2_:b2Body = b2internal::_-9K;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_ || this)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc21_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(!_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.col1.x);
         if(!_loc21_)
         {
            §§push(_loc4_);
            if(_loc22_)
            {
               §§push(§§pop() * §§pop());
               if(_loc22_ || this)
               {
                  addr82:
                  §§push(_loc3_.col2.x);
                  if(_loc22_)
                  {
                     addr87:
                     §§push(§§pop() * _loc5_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc21_ && _loc1_))
                  {
                     addr97:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  if(_loc22_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc22_ || this)
                     {
                        §§push(_loc4_);
                        if(!(_loc21_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc22_ || _loc1_)
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc22_)
                              {
                                 addr132:
                                 §§push(§§pop() * _loc5_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc21_)
                              {
                                 addr137:
                                 §§push(Number(§§pop()));
                                 if(!_loc21_)
                                 {
                                    addr140:
                                    _loc5_ = §§pop();
                                    if(!_loc21_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc22_ || _loc1_)
                                       {
                                          addr151:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                       addr153:
                                       _loc3_ = _loc2_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(!(_loc21_ && _loc2_))
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(_loc22_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(_loc22_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(_loc22_ || _loc3_)
                                          {
                                             addr199:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          if(_loc22_ || _loc2_)
                                          {
                                             §§push(_loc3_.col1);
                                             if(_loc22_)
                                             {
                                                §§push(§§pop().x * _loc7_);
                                                if(!_loc21_)
                                                {
                                                   §§push(_loc3_.col2);
                                                   if(_loc22_ || _loc3_)
                                                   {
                                                      §§push(§§pop().x);
                                                      §§push(_loc8_);
                                                      if(_loc22_ || this)
                                                      {
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(!_loc21_)
                                                         {
                                                            _loc6_ = Number(§§pop());
                                                            if(_loc22_)
                                                            {
                                                               addr245:
                                                               §§push(_loc3_.col1.y);
                                                               §§push(_loc7_);
                                                               if(_loc22_ || _loc3_)
                                                               {
                                                                  addr255:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(_loc3_.col2.y);
                                                                  if(_loc22_ || _loc2_)
                                                                  {
                                                                     addr265:
                                                                     §§push(§§pop() * _loc8_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  if(_loc22_ || _loc3_)
                                                                  {
                                                                     addr291:
                                                                     §§push(Number(_loc6_));
                                                                     if(!(_loc21_ && _loc2_))
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        addr301:
                                                                        §§push(Number(_loc1_.m_sweep.c.x + _loc4_));
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     §§push(_loc1_.m_sweep.c.y);
                                                                     if(_loc22_ || this)
                                                                     {
                                                                        §§push(§§pop() + _loc5_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           addr324:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(_loc2_.m_sweep.c.x);
                                                                        if(_loc22_)
                                                                        {
                                                                           §§push(§§pop() + _loc7_);
                                                                           if(!(_loc21_ && this))
                                                                           {
                                                                              addr341:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc2_.m_sweep.c.y);
                                                                           if(_loc22_)
                                                                           {
                                                                              §§push(§§pop() + _loc8_);
                                                                              if(!(_loc21_ && _loc2_))
                                                                              {
                                                                                 addr358:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc11_);
                                                                              if(_loc22_)
                                                                              {
                                                                                 §§push(§§pop() - _loc9_);
                                                                                 if(_loc22_ || this)
                                                                                 {
                                                                                    addr372:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc13_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(!(_loc21_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() - _loc10_);
                                                                                    if(!(_loc21_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc14_:* = §§pop();
                                                                                 var _loc15_:b2Vec2 = _loc1_.§_-Op§(this.§_-jM§);
                                                                                 var _loc16_:b2Vec2 = _loc1_.§_-ZZ§;
                                                                                 var _loc17_:b2Vec2 = _loc2_.§_-ZZ§;
                                                                                 §§push(_loc1_.m_angularVelocity);
                                                                                 if(_loc22_ || _loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc18_:* = §§pop();
                                                                                 §§push(_loc2_.m_angularVelocity);
                                                                                 if(!(_loc21_ && _loc3_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc19_:* = §§pop();
                                                                                 §§push(_loc13_);
                                                                                 if(!(_loc21_ && this))
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       §§push(_loc15_.y);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(§§pop() * (§§pop() * §§pop()));
                                                                                          if(_loc22_ || _loc1_)
                                                                                          {
                                                                                             addr454:
                                                                                             §§push(_loc14_);
                                                                                             if(_loc22_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() * (_loc18_ * _loc15_.x));
                                                                                                if(_loc22_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc22_ || _loc2_)
                                                                                                   {
                                                                                                      addr484:
                                                                                                      §§push(_loc15_.x);
                                                                                                      §§push(_loc17_.x);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         addr488:
                                                                                                         §§push(-_loc19_);
                                                                                                         if(_loc22_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc8_);
                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc22_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc16_.x);
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     addr519:
                                                                                                                     §§push(§§pop() * (§§pop() - -_loc18_ * _loc5_));
                                                                                                                     §§push(_loc15_.y);
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        addr531:
                                                                                                                        §§push(_loc17_.y);
                                                                                                                        §§push(_loc19_);
                                                                                                                        if(_loc22_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(!(_loc21_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr559:
                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 addr556:
                                                                                                                                 §§push(§§pop() - _loc16_.y - _loc18_ * _loc4_);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 addr562:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc21_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr579:
                                                                                                                                    return Number(§§pop());
                                                                                                                                    addr578:
                                                                                                                                 }
                                                                                                                                 §§goto(addr578);
                                                                                                                              }
                                                                                                                              §§goto(addr579);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr556);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr559);
                                                                                                               }
                                                                                                               §§goto(addr519);
                                                                                                            }
                                                                                                            §§goto(addr531);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr519);
                                                                                                   }
                                                                                                   §§goto(addr579);
                                                                                                }
                                                                                                §§goto(addr484);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr579);
                                                                                       }
                                                                                       §§goto(addr488);
                                                                                    }
                                                                                    §§goto(addr562);
                                                                                 }
                                                                                 §§goto(addr454);
                                                                              }
                                                                              §§goto(addr372);
                                                                           }
                                                                           §§goto(addr358);
                                                                        }
                                                                        §§goto(addr341);
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr255);
                                                }
                                                §§goto(addr291);
                                             }
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr153);
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr153);
               }
               §§goto(addr97);
            }
            §§goto(addr87);
         }
         §§goto(addr82);
      }
      
      public function §_-qL§() : Boolean
      {
         return this.§_-b9§;
      }
      
      public function §_-M5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::_-93.SetAwake(true);
            if(_loc3_ || _loc2_)
            {
               §§goto(addr40);
            }
            §§goto(addr45);
         }
         addr40:
         b2internal::_-9K.SetAwake(true);
         if(!_loc2_)
         {
            addr45:
            this.§_-b9§ = param1;
         }
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            b2internal::_-93.SetAwake(true);
            if(_loc3_ || this)
            {
               b2internal::_-9K.SetAwake(true);
               if(!_loc4_)
               {
                  addr44:
                  this.§_-OF§ = param1;
                  if(_loc3_)
                  {
                     this.§_-AB§ = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-ur§() : Boolean
      {
         return this.§_-2a§;
      }
      
      public function §_-HV§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::_-93.SetAwake(true);
            if(_loc3_)
            {
               b2internal::_-9K.SetAwake(true);
               if(!(_loc2_ && this))
               {
                  this.§_-2a§ = param1;
               }
            }
         }
      }
      
      public function §_-BM§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::_-93.SetAwake(true);
            if(!_loc2_)
            {
               b2internal::_-9K.SetAwake(true);
               if(_loc3_)
               {
                  addr33:
                  this.§_-bm§ = param1;
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      public function §_-wU§() : Number
      {
         return this.§_-bm§;
      }
      
      public function §_-90§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::_-93.SetAwake(true);
            if(!(_loc2_ && this))
            {
               b2internal::_-9K.SetAwake(true);
               if(!_loc2_)
               {
                  this.§_-oY§ = param1;
               }
            }
         }
      }
      
      public function §_-N3§() : Number
      {
         return this.§_-oY§;
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
          * Instruction count: 1433
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::_-93;
         var _loc3_:b2Body = b2internal::_-9K;
         var _loc4_:b2Vec2 = _loc2_.§_-ZZ§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc24_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§_-ZZ§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc24_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(this.§_-2a§);
         if(!_loc23_)
         {
            §§push(Boolean(§§pop()));
            if(_loc24_)
            {
               if(§§pop())
               {
                  if(_loc24_)
                  {
                     addr91:
                     §§pop();
                     §§push(this.§_-0L§ == b2internal::_-j9);
                     if(_loc24_ || param1)
                     {
                        addr103:
                        §§push(!§§pop());
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc23_ && this))
                  {
                     §§push(this.§_-YX§.x);
                     §§push(_loc6_.x);
                     §§push(_loc4_.x);
                     if(_loc24_ || _loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc23_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc23_ && param1))
                           {
                              §§push(this.§_-YX§);
                              if(!(_loc23_ && _loc3_))
                              {
                                 §§push(§§pop().y);
                                 if(_loc24_ || this)
                                 {
                                    §§push(_loc6_.y);
                                    §§push(_loc4_.y);
                                    if(_loc24_ || _loc3_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc24_ || _loc2_)
                                       {
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(_loc24_ || this)
                                          {
                                             §§push(this.m_a2);
                                             if(_loc24_)
                                             {
                                                §§push(§§pop() * _loc7_);
                                                if(!_loc23_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   §§push(this.m_a1);
                                                   §§push(_loc5_);
                                                   if(!_loc23_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc24_ || param1)
                                                      {
                                                         §§push(Number(§§pop() - §§pop()));
                                                         if(_loc24_ || this)
                                                         {
                                                            _loc13_ = §§pop();
                                                            §§push(this.§_-5w§);
                                                            §§push(this.§_-bm§);
                                                            §§push(_loc13_);
                                                            if(!_loc23_)
                                                            {
                                                               addr226:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc23_ && _loc2_))
                                                               {
                                                                  addr234:
                                                                  §§push(Number(§§pop() * §§pop()));
                                                                  if(_loc24_ || _loc2_)
                                                                  {
                                                                     _loc14_ = §§pop();
                                                                     if(_loc24_ || _loc2_)
                                                                     {
                                                                        §§push(Number(this.§_-3k§));
                                                                        if(_loc24_)
                                                                        {
                                                                           addr256:
                                                                           _loc15_ = §§pop();
                                                                           if(_loc24_ || _loc3_)
                                                                           {
                                                                              §§push(Number(param1.§_-h8§ * this.§_-oY§));
                                                                              if(!_loc23_)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 §§push(this);
                                                                                 §§push(b2Math);
                                                                                 §§push(this.§_-3k§);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       addr283:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push(_loc16_);
                                                                                       if(_loc24_ || _loc2_)
                                                                                       {
                                                                                          addr291:
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().§_-3k§ = §§pop().§_-Gj§(§§pop(),§§pop(),_loc16_);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          addr297:
                                                                                          §§push(_loc14_ = Number(this.§_-3k§ - _loc15_));
                                                                                          §§push(this.§_-YX§);
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             addr313:
                                                                                             §§push(§§pop().x);
                                                                                             if(!(_loc23_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                {
                                                                                                   _loc8_ = Number(§§pop());
                                                                                                   if(_loc24_ || _loc3_)
                                                                                                   {
                                                                                                      addr341:
                                                                                                      §§push(_loc14_);
                                                                                                      §§push(this.§_-YX§.y);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop() * §§pop()));
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            §§push(_loc14_);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               _loc10_ = Number(§§pop() * this.m_a1);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr367:
                                                                                                                     §§push(this.m_a2);
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        _loc11_ = §§pop() * §§pop();
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           addr376:
                                                                                                                           §§push(_loc4_);
                                                                                                                           §§push(_loc4_.x);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - b2internal::_-k9 * _loc8_);
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              §§push(_loc4_.y);
                                                                                                                              if(_loc24_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - b2internal::_-k9 * _loc9_);
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              addr408:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(b2internal::_-kg * _loc10_);
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    _loc5_ = Number(§§pop() - §§pop());
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + b2internal::_-s8 * _loc8_);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + b2internal::_-s8 * _loc9_);
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                    }
                                                                                                                                    addr451:
                                                                                                                                    §§push(Number(_loc7_ + b2internal::_-GH * _loc11_));
                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr459:
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       addr460:
                                                                                                                                       §§push(this.§_-k1§.x);
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr470:
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr479:
                                                                                                                                             §§push(_loc4_.x);
                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr490:
                                                                                                                                                §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                §§push(this.§_-k1§.y);
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr495:
                                                                                                                                                   §§push(_loc6_.y - _loc4_.y);
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr504:
                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                      §§push(this.m_s2);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr508:
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr511:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc23_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr519:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr530:
                                                                                                                                                                  §§push(Number(§§pop() - this.m_s1 * _loc5_));
                                                                                                                                                               }
                                                                                                                                                               var _loc12_:* = §§pop();
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§_-b9§);
                                                                                                                                                                  if(!(_loc23_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              §§push(this.§_-0L§ == b2internal::_-vv);
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr564:
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§_-YX§.x);
                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                           §§push(_loc4_.x);
                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 §§push(this.§_-YX§.y);
                                                                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - _loc4_.y);
                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr603:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr611:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.m_a2);
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             if(_loc24_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr624:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   §§push(this.m_a1);
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr634:
                                                                                                                                                                                                      §§push(§§pop() - §§pop() * _loc5_);
                                                                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc17_ = §§pop();
                                                                                                                                                                                                         addr651:
                                                                                                                                                                                                         §§push(this.§_-tN§);
                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc18_ = §§pop().Copy();
                                                                                                                                                                                                            _loc19_ = this.§_-Zj§.§_-B-§(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                                                                            §§push(this.§_-tN§);
                                                                                                                                                                                                            if(_loc24_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().§_-Jv§(_loc19_);
                                                                                                                                                                                                               §§push(this.§_-0L§);
                                                                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() == b2internal::_-oP)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§_-tN§);
                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(b2Math.§_-YD§(this.§_-tN§.y,0));
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr729:
                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                                                                 §§push(this.§_-tN§.y);
                                                                                                                                                                                                                                 §§push(_loc18_.y);
                                                                                                                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    §§push(this.§_-Zj§.col2.x);
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop() - §§pop() * §§pop()));
                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                                                                                                                          if(this.§_-Zj§.col1.x != 0)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                §§push(this.§_-Zj§.col1.x);
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   §§push(_loc18_.x);
                                                                                                                                                                                                                                                   if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr789:
                                                                                                                                                                                                                                                      _loc21_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                      this.§_-tN§.x = _loc21_;
                                                                                                                                                                                                                                                      addr803:
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         §§push(this.§_-tN§.x);
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc18_.x);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         §§push(this.§_-tN§.y);
                                                                                                                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc19_.x);
                                                                                                                                                                                                                                                            §§push(this.§_-k1§);
                                                                                                                                                                                                                                                            if(_loc24_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop().x);
                                                                                                                                                                                                                                                               §§push(_loc19_.y);
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§_-YX§);
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr865:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                                                                                                                              §§push(_loc19_.x);
                                                                                                                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr895:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * this.§_-k1§.y);
                                                                                                                                                                                                                                                                                 §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                 §§push(this.§_-YX§.y);
                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                             addr908:
                                                                                                                                                                                                                                                                                             §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr915:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * this.m_s1);
                                                                                                                                                                                                                                                                                                §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr924:
                                                                                                                                                                                                                                                                                                   §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr930:
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr950:
                                                                                                                                                                                                                                                                                                            §§push(_loc19_.x * this.m_s2);
                                                                                                                                                                                                                                                                                                            §§push(_loc19_.y * this.m_a2);
                                                                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr954:
                                                                                                                                                                                                                                                                                                               _loc11_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                  §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - b2internal::_-k9 * _loc8_);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr991:
                                                                                                                                                                                                                                                                                                                     addr994:
                                                                                                                                                                                                                                                                                                                     addr980:
                                                                                                                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                     §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - b2internal::_-k9 * _loc9_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                     _loc5_ -= b2internal::_-kg * _loc10_;
                                                                                                                                                                                                                                                                                                                     addr997:
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + b2internal::_-s8 * _loc8_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + b2internal::_-s8 * _loc9_);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1036:
                                                                                                                                                                                                                                                                                                                           §§push(_loc7_ + b2internal::_-GH * _loc11_);
                                                                                                                                                                                                                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1049:
                                                                                                                                                                                                                                                                                                                              _loc7_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                              addr1048:
                                                                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1267:
                                                                                                                                                                                                                                                                                                                                 §§push(_loc2_.§_-ZZ§);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                    _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_.§_-ZZ§);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1297:
                                                                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                                                                                 addr1052:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                              §§goto(addr1297);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1049);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1297);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1297);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1036);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr997);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr991);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr950);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr994);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1048);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1049);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr915);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr950);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr930);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr954);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr924);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr930);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr895);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1036);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr895);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr908);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr980);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1036);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr930);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr950);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(_loc18_.x));
                                                                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr803);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr895);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr954);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr865);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr930);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr789);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1297);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr728:
                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr789);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr714:
                                                                                                                                                                                                                     if(this.§_-0L§ == b2internal::_-Hv)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§_-tN§);
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(b2Math.§_-cD§(this.§_-tN§.y,0));
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr728);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr789);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr729);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr714);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr789);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1099:
                                                                                                                                                                                                            §§push(this.§_-tN§.x);
                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + _loc22_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                            §§push(this.§_-k1§);
                                                                                                                                                                                                            if(_loc24_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1124:
                                                                                                                                                                                                               _loc8_ = Number(§§pop() * §§pop().x);
                                                                                                                                                                                                               addr1123:
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1134:
                                                                                                                                                                                                                  _loc9_ = Number(§§pop() * this.§_-k1§.y);
                                                                                                                                                                                                                  addr1131:
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1138:
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     §§push(this.m_s1);
                                                                                                                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1147:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc24_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1155:
                                                                                                                                                                                                                           _loc10_ = Number(§§pop());
                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1159:
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.m_s2);
                                                                                                                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc24_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1180:
                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                       §§push(_loc4_.x);
                                                                                                                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - b2internal::_-k9 * _loc8_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                       §§push(_loc4_.y);
                                                                                                                                                                                                                                       if(_loc24_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - b2internal::_-k9 * _loc9_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1218:
                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1221:
                                                                                                                                                                                                                                             §§push(b2internal::_-kg * _loc10_);
                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1226:
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                if(!(_loc23_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1234:
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1237:
                                                                                                                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                                                                                                                      addr1238:
                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + b2internal::_-s8 * _loc8_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + b2internal::_-s8 * _loc9_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      §§push(_loc7_ + b2internal::_-GH * _loc11_);
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1265:
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                                                                      §§goto(addr1267);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1265);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1237);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1234);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1238);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1221);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1226);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1180);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1218);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1237);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1221);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1131);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1134);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1123);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr634);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1138);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1058:
                                                                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                if(!(_loc23_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§_-Zj§.col1.x);
                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                                                                         addr1097:
                                                                                                                                                                                                         §§goto(addr1099);
                                                                                                                                                                                                         §§push(this.§_-tN§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1155);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1147);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1155);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1237);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(0));
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                                                                §§goto(addr1097);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1124);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr624);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr611);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr603);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1159);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§_-Zj§.col1.x);
                                                                                                                                                                        §§push(0);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1058);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr564);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr651);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr530);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr508);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr530);
                                                                                                                                       }
                                                                                                                                       §§goto(addr504);
                                                                                                                                    }
                                                                                                                                    §§goto(addr490);
                                                                                                                                 }
                                                                                                                                 §§goto(addr479);
                                                                                                                              }
                                                                                                                              §§goto(addr530);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr460);
                                                                                                                     }
                                                                                                                     §§goto(addr508);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr459);
                                                                                                            }
                                                                                                            §§goto(addr451);
                                                                                                         }
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      §§goto(addr495);
                                                                                                   }
                                                                                                   §§goto(addr408);
                                                                                                }
                                                                                                §§goto(addr470);
                                                                                             }
                                                                                             §§goto(addr530);
                                                                                          }
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr530);
                                                                           }
                                                                        }
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr511);
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      §§goto(addr451);
                                                   }
                                                   §§goto(addr504);
                                                }
                                                §§goto(addr519);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr530);
                                       }
                                       §§goto(addr511);
                                    }
                                    §§goto(addr495);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr313);
                           }
                           §§goto(addr367);
                        }
                        §§goto(addr490);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr408);
               }
               §§goto(addr459);
            }
            §§goto(addr91);
         }
         §§goto(addr103);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1560
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
