package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §5T§:b2Vec2;
      
      private var §?!o§:b2Vec2;
      
      private var §;9§:b2Vec2;
      
      private var §&!a§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § !`§:b2Mat22;
      
      private var §7!a§:b2Vec2;
      
      private var §-!!§:Number;
      
      private var §0,§:Number;
      
      private var §0C§:Number;
      
      private var §%X§:Number;
      
      private var §6@§:Number;
      
      private var §4%§:Number;
      
      private var §&-§:Boolean;
      
      private var §7#§:Boolean;
      
      private var §]!C§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         if(!_loc6_)
         {
            this.m_localAnchor2 = new b2Vec2();
            if(_loc5_)
            {
               this.§5T§ = new b2Vec2();
               this.§?!o§ = new b2Vec2();
               this.§;9§ = new b2Vec2();
               if(_loc5_ || _loc2_)
               {
                  this.§&!a§ = new b2Vec2();
                  this.§ !`§ = new b2Mat22();
                  this.§7!a§ = new b2Vec2();
                  super(param1);
                  this.m_localAnchor1.SetV(param1.§;!1§);
                  this.m_localAnchor2.SetV(param1.§%?§);
                  this.§5T§.SetV(param1.§<E§);
                  if(!_loc6_)
                  {
                     §§push(this.§?!o§);
                     if(!_loc6_)
                     {
                        §§push(this.§5T§);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop().y);
                           if(!_loc6_)
                           {
                              §§push(-§§pop());
                              if(_loc5_ || _loc2_)
                              {
                                 §§pop().x = §§pop();
                                 if(_loc5_ || _loc2_)
                                 {
                                    addr133:
                                    this.§?!o§.y = this.§5T§.x;
                                    this.§7!a§.§22§();
                                    addr132:
                                    addr130:
                                    if(!_loc6_)
                                    {
                                       addr139:
                                       this.§-!!§ = 0;
                                    }
                                    this.§0,§ = 0;
                                    if(_loc5_)
                                    {
                                       this.§0C§ = param1.§7=§;
                                       §§goto(addr151);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr202);
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr130);
                  }
                  addr151:
                  this.§%X§ = param1.§2!q§;
                  if(_loc5_ || _loc3_)
                  {
                     this.§6@§ = param1.§=!G§;
                     addr166:
                     this.§4%§ = param1.motorSpeed;
                     if(_loc5_ || param1)
                     {
                        addr187:
                        this.§&-§ = param1.§'!v§;
                        this.§7#§ = param1.§3!J§;
                        if(!(_loc6_ && param1))
                        {
                           addr202:
                           this.§]!C§ = b2internal::2!v;
                           this.§;9§.§22§();
                        }
                        §§goto(addr211);
                     }
                     this.§&!a§.§22§();
                  }
                  addr211:
                  return;
               }
               §§goto(addr139);
            }
            §§goto(addr166);
         }
         §§goto(addr202);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§7!a§.x);
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.§&!a§.x);
               if(_loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     §§push(this.§0,§);
                     §§push(this.§7!a§.y);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + §§pop());
                        §§push(this.§;9§.x);
                        if(!(_loc3_ && param1))
                        {
                           addr76:
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!(_loc3_ && param1))
                           {
                              addr86:
                              §§push(§§pop() * §§pop());
                              §§push(param1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr94:
                                 §§push(this.§7!a§.x);
                                 if(!_loc3_)
                                 {
                                    §§push(this.§&!a§.y);
                                    if(!_loc3_)
                                    {
                                       addr115:
                                       §§push(§§pop() * §§pop());
                                       §§push(this.§0,§);
                                       if(!_loc3_)
                                       {
                                          §§push(this.§7!a§.y);
                                          if(_loc2_)
                                          {
                                             §§goto(addr136);
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr94);
               }
               §§goto(addr115);
            }
            addr136:
            §§push(§§pop() + §§pop());
            if(!(_loc3_ && _loc3_))
            {
               addr132:
               §§push(this.§;9§.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
         }
         §§goto(addr86);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(§§pop() * this.§7!a§.y);
         }
         return §§pop();
      }
      
      public function §"!5§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2+;
         var _loc2_:b2Body = b2internal::4P;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && this))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc10_ || this)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§=d§(this.§5T§)).x);
            if(_loc10_)
            {
               §§push(_loc6_);
               if(_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_ || _loc3_)
                  {
                     §§goto(addr110);
                  }
                  §§goto(addr132);
               }
               §§goto(addr119);
            }
            addr110:
            §§push(_loc8_.y);
            if(!(_loc11_ && _loc1_))
            {
               addr119:
               §§push(§§pop() * _loc7_);
               if(_loc10_ || _loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc11_)
                  {
                     addr132:
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr132);
               }
            }
            var _loc9_:* = §§pop();
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function §%9§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2+;
         var _loc2_:b2Body = b2internal::4P;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc21_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc21_)
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
               if(_loc22_ || _loc1_)
               {
                  §§push(_loc3_.col2.x);
                  if(_loc22_)
                  {
                     addr85:
                     §§push(§§pop() * _loc5_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc21_)
                  {
                     addr91:
                     var _loc6_:* = Number(§§pop());
                     if(_loc22_ || _loc2_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc21_ && this))
                        {
                           §§push(_loc4_);
                           if(_loc22_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc22_)
                              {
                                 addr120:
                                 §§push(_loc3_.col2.y);
                                 if(_loc22_)
                                 {
                                    addr125:
                                    §§push(§§pop() * _loc5_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc21_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc21_ && _loc1_))
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc22_)
                                       {
                                          addr141:
                                          §§push(_loc6_);
                                          if(_loc22_)
                                          {
                                             addr145:
                                             _loc4_ = Number(§§pop());
                                          }
                                          §§goto(addr145);
                                       }
                                       _loc3_ = _loc2_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc22_ || _loc1_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(_loc22_ || this)
                                          {
                                             addr173:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc22_ || this)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(_loc22_)
                                             {
                                                addr192:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!_loc21_)
                                             {
                                                §§push(_loc3_.col1);
                                                if(!_loc21_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc22_)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc21_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc22_ || _loc2_)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc22_ || _loc2_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc22_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop() + §§pop()));
                                                                        if(_loc22_)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(_loc22_)
                                                                           {
                                                                              addr241:
                                                                              §§push(_loc3_.col1.y * _loc7_);
                                                                              if(_loc22_)
                                                                              {
                                                                                 addr248:
                                                                                 §§push(_loc3_.col2.y);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr252:
                                                                                    §§push(§§pop() * _loc8_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       addr256:
                                                                                       addr255:
                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             addr274:
                                                                                             _loc7_ = Number(_loc6_);
                                                                                             addr275:
                                                                                             §§push(_loc1_.m_sweep.c.x);
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                addr282:
                                                                                                §§push(§§pop() + _loc4_);
                                                                                                if(!(_loc21_ && _loc1_))
                                                                                                {
                                                                                                   addr290:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             addr272:
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       var _loc9_:* = §§pop();
                                                                                       §§push(_loc1_.m_sweep.c.y);
                                                                                       if(_loc22_ || _loc1_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc5_);
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc10_:* = §§pop();
                                                                                       §§push(_loc2_.m_sweep.c.x);
                                                                                       if(_loc22_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + _loc7_);
                                                                                          if(!(_loc21_ && _loc2_))
                                                                                          {
                                                                                             addr329:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc11_:* = §§pop();
                                                                                          §§push(_loc2_.m_sweep.c.y);
                                                                                          if(_loc22_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc8_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr346:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc12_:* = §§pop();
                                                                                             §§push(_loc11_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() - _loc9_);
                                                                                                if(_loc22_ || _loc2_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc13_:* = §§pop();
                                                                                             §§push(_loc12_);
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                §§push(§§pop() - _loc10_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             var _loc15_:b2Vec2 = _loc1_.§=d§(this.§5T§);
                                                                                             var _loc16_:b2Vec2 = _loc1_.§<&§;
                                                                                             var _loc17_:b2Vec2 = _loc2_.§<&§;
                                                                                             §§push(_loc1_.m_angularVelocity);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc18_:* = §§pop();
                                                                                             §§push(_loc2_.m_angularVelocity);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc19_:* = §§pop();
                                                                                             §§push(_loc13_);
                                                                                             if(_loc22_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() * (-_loc18_ * _loc15_.y));
                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   §§push(_loc18_);
                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc15_.x);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop() * (§§pop() * §§pop()));
                                                                                                         if(_loc22_ || this)
                                                                                                         {
                                                                                                            §§push(_loc15_.x);
                                                                                                            if(_loc22_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(_loc17_.x);
                                                                                                               if(!(_loc21_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc19_);
                                                                                                                  if(!(_loc21_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              §§push(_loc16_.x);
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    addr507:
                                                                                                                                    addr484:
                                                                                                                                    §§push(-_loc18_);
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       addr490:
                                                                                                                                       §§push(§§pop() - §§pop() * _loc5_);
                                                                                                                                    }
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!(_loc21_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                       if(_loc22_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr538:
                                                                                                                                          §§push(§§pop() - _loc16_.y);
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          §§push(_loc4_);
                                                                                                                                       }
                                                                                                                                       §§goto(addr538);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + (§§pop() + §§pop() * (§§pop() - §§pop() * §§pop())));
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       addr549:
                                                                                                                                       return Number(§§pop());
                                                                                                                                       addr548:
                                                                                                                                    }
                                                                                                                                    §§goto(addr548);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc22_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_.y);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       addr503:
                                                                                                                                       §§push(_loc17_.y);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr507);
                                                                                                                                 }
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr538);
                                                                                                                  }
                                                                                                                  §§goto(addr490);
                                                                                                               }
                                                                                                               §§goto(addr484);
                                                                                                            }
                                                                                                            §§goto(addr507);
                                                                                                         }
                                                                                                         §§goto(addr549);
                                                                                                      }
                                                                                                      §§goto(addr507);
                                                                                                   }
                                                                                                   §§goto(addr503);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr549);
                                                                                          }
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr282);
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr272);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr145);
                                 }
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr141);
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr85);
         }
         §§goto(addr91);
      }
      
      public function §[M§() : Boolean
      {
         return this.§&-§;
      }
      
      public function §&O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            b2internal::2+.SetAwake(true);
            if(_loc2_ || param1)
            {
               §§goto(addr43);
            }
            §§goto(addr48);
         }
         addr43:
         b2internal::4P.SetAwake(true);
         if(!_loc3_)
         {
            addr48:
            this.§&-§ = param1;
         }
      }
      
      public function §7!%§() : Number
      {
         return this.§0C§;
      }
      
      public function §"B§() : Number
      {
         return this.§%X§;
      }
      
      public function §0S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::2+.SetAwake(true);
            if(_loc4_ || param2)
            {
               b2internal::4P.SetAwake(true);
               if(_loc4_)
               {
                  this.§0C§ = param1;
                  if(_loc4_ || param1)
                  {
                  }
                  §§goto(addr57);
               }
            }
            this.§%X§ = param2;
         }
         addr57:
      }
      
      public function §1!'§() : Boolean
      {
         return this.§7#§;
      }
      
      public function §4!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::2+.SetAwake(true);
            if(!(_loc2_ && this))
            {
               b2internal::4P.SetAwake(true);
               if(_loc3_ || this)
               {
                  this.§7#§ = param1;
               }
            }
         }
      }
      
      public function §-0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::2+.SetAwake(true);
            if(_loc3_)
            {
               addr39:
               b2internal::4P.SetAwake(true);
               if(_loc3_ || this)
               {
                  this.§4%§ = param1;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §1B§() : Number
      {
         return this.§4%§;
      }
      
      public function §"]§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::2+.SetAwake(true);
            if(_loc3_)
            {
               b2internal::4P.SetAwake(true);
               if(!(_loc2_ && _loc3_))
               {
                  addr49:
                  this.§6@§ = param1;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §]0§() : Number
      {
         return this.§6@§;
      }
      
      public function §5%§() : Number
      {
         return this.§0,§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1585
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::2+;
         var _loc3_:b2Body = b2internal::4P;
         var _loc4_:b2Vec2 = _loc2_.§<&§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§<&§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(this.§7#§);
         if(!_loc24_)
         {
            §§push(Boolean(§§pop()));
            if(_loc23_)
            {
               if(§§pop())
               {
                  if(!(_loc24_ && _loc2_))
                  {
                     addr93:
                     §§pop();
                     §§push(this.§]!C§ == b2internal::+!5);
                     if(!(_loc24_ && param1))
                     {
                        §§push(!§§pop());
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc24_ && _loc3_))
                  {
                     §§push(this.§;9§.x);
                     if(_loc23_)
                     {
                        §§push(_loc6_.x);
                        if(_loc23_ || _loc2_)
                        {
                           §§push(§§pop() - _loc4_.x);
                           if(_loc23_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc23_ || this)
                              {
                                 §§push(this.§;9§);
                                 if(_loc23_ || _loc3_)
                                 {
                                    §§push(§§pop().y);
                                    if(_loc23_)
                                    {
                                       §§push(_loc6_.y);
                                       if(_loc23_ || param1)
                                       {
                                          §§push(_loc4_.y);
                                          if(_loc23_ || this)
                                          {
                                             §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                             if(!_loc24_)
                                             {
                                                §§push(this.m_a2);
                                                §§push(_loc7_);
                                                if(!_loc24_)
                                                {
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   if(_loc23_ || _loc2_)
                                                   {
                                                      §§push(this.m_a1 * _loc5_);
                                                      if(_loc23_)
                                                      {
                                                         _loc13_ = §§pop() - §§pop();
                                                         if(_loc23_ || _loc2_)
                                                         {
                                                            §§push(this.§-!!§);
                                                            §§push(this.§4%§);
                                                            if(_loc23_ || _loc3_)
                                                            {
                                                               addr223:
                                                               §§push(§§pop() - _loc13_);
                                                            }
                                                            §§push(Number(§§pop() * §§pop()));
                                                            if(!_loc24_)
                                                            {
                                                               addr228:
                                                               _loc14_ = §§pop();
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(this.§0,§);
                                                                  if(!(_loc24_ && _loc2_))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc23_)
                                                                     {
                                                                        addr243:
                                                                        _loc15_ = §§pop();
                                                                        if(!_loc24_)
                                                                        {
                                                                           §§push(param1.§>N§);
                                                                           §§push(this.§6@§);
                                                                           if(_loc23_)
                                                                           {
                                                                              §§push(Number(§§pop() * §§pop()));
                                                                              if(!_loc24_)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 addr257:
                                                                                 §§push(this);
                                                                                 §§push(b2Math);
                                                                                 §§push(this.§0,§);
                                                                                 if(!(_loc24_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    if(_loc23_ || _loc2_)
                                                                                    {
                                                                                       addr277:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push(_loc16_);
                                                                                       if(_loc23_ || this)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                    }
                                                                                    §§pop().§0,§ = §§pop().§%!j§(§§pop(),§§pop(),_loc16_);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       §§push(this.§0,§);
                                                                                       if(!(_loc24_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() - _loc15_);
                                                                                          if(!(_loc24_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                §§push(this.§;9§);
                                                                                                if(!(_loc24_ && this))
                                                                                                {
                                                                                                   addr323:
                                                                                                   §§push(§§pop() * §§pop().x);
                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                   {
                                                                                                      addr332:
                                                                                                      _loc8_ = §§pop();
                                                                                                      §§push(_loc14_);
                                                                                                   }
                                                                                                   §§push(this.§;9§);
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc24_ && param1))
                                                                                                {
                                                                                                   addr345:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc24_ && this))
                                                                                                   {
                                                                                                      addr353:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         _loc9_ = §§pop();
                                                                                                         addr357:
                                                                                                         §§push(_loc14_);
                                                                                                         if(!(_loc24_ && this))
                                                                                                         {
                                                                                                            §§push(this.m_a1);
                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(Number(§§pop() * §§pop()));
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  addr378:
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  if(!(_loc24_ && this))
                                                                                                                  {
                                                                                                                     addr386:
                                                                                                                     §§push(_loc14_);
                                                                                                                     §§push(this.m_a2);
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        addr392:
                                                                                                                        _loc11_ = Number(§§pop() * §§pop());
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           addr396:
                                                                                                                           §§push(_loc4_);
                                                                                                                           §§push(_loc4_.x);
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - b2internal::3T * _loc8_);
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              §§push(_loc4_.y);
                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - b2internal::3T * _loc9_);
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              addr428:
                                                                                                                              §§push(_loc5_);
                                                                                                                              §§push(b2internal::@!= * _loc10_);
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 addr435:
                                                                                                                                 §§push(Number(§§pop() - §§pop()));
                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                 {
                                                                                                                                    addr443:
                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                    addr444:
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + b2internal::`y * _loc8_);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + b2internal::`y * _loc9_);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(b2internal::'o * _loc11_);
                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr477:
                                                                                                                                          _loc7_ = Number(§§pop() + §§pop());
                                                                                                                                          addr483:
                                                                                                                                          §§push(this.§&!a§.x);
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          §§push(_loc4_.x);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr489:
                                                                                                                                             §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                             {
                                                                                                                                                addr501:
                                                                                                                                                addr514:
                                                                                                                                                addr498:
                                                                                                                                                §§push(this.§&!a§.y);
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr512:
                                                                                                                                                   §§push(§§pop() - _loc4_.y);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                §§push(this.m_s2);
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr533:
                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                   §§push(this.m_s1);
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr531:
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr537:
                                                                                                                                                      var _loc12_:Number = §§pop();
                                                                                                                                                      §§push(this.§&-§);
                                                                                                                                                      if(_loc23_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(_loc23_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr564:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§push(this.§]!C§ == b2internal::2!v);
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr572:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§;9§.x);
                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.x);
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           addr585:
                                                                                                                                                                           §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§;9§.y);
                                                                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - _loc4_.y);
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr616:
                                                                                                                                                                                          §§push(this.m_a2);
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr628:
                                                                                                                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr635:
                                                                                                                                                                                                   §§push(this.m_a1 * _loc5_);
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc17_ = §§pop();
                                                                                                                                                                                                         §§push(this.§7!a§);
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc18_ = §§pop().Copy();
                                                                                                                                                                                                            _loc19_ = this.§ !`§.static(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                                                                            §§push(this.§7!a§);
                                                                                                                                                                                                            if(_loc23_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().§!a§(_loc19_);
                                                                                                                                                                                                               if(_loc23_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§]!C§);
                                                                                                                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() == b2internal::,!')
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§7!a§);
                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr709:
                                                                                                                                                                                                                           §§push(b2Math.§,!a§(this.§7!a§.y,0));
                                                                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              addr755:
                                                                                                                                                                                                                              §§push(-_loc12_);
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§7!a§.y);
                                                                                                                                                                                                                                 if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc18_.y);
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§ !`§.col2.x);
                                                                                                                                                                                                                                          if(!(_loc24_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc20_ = §§pop();
                                                                                                                                                                                                                                                   if(_loc23_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§ !`§.col1.x);
                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                      if(_loc23_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc20_ / this.§ !`§.col1.x);
                                                                                                                                                                                                                                                               §§push(_loc18_.x);
                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc21_ = §§pop();
                                                                                                                                                                                                                                                                     addr867:
                                                                                                                                                                                                                                                                     this.§7!a§.x = _loc21_;
                                                                                                                                                                                                                                                                     addr864:
                                                                                                                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr875:
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        §§push(this.§7!a§.x);
                                                                                                                                                                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() - _loc18_.x);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr892:
                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                           §§push(this.§7!a§.y);
                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                           §§push(_loc19_.x);
                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§&!a§);
                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr917:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop().x);
                                                                                                                                                                                                                                                                                 §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                 §§push(this.§;9§);
                                                                                                                                                                                                                                                                                 if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr931:
                                                                                                                                                                                                                                                                                       _loc8_ = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                       addr939:
                                                                                                                                                                                                                                                                                       §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                       §§push(this.§&!a§.y);
                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr949:
                                                                                                                                                                                                                                                                                             §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                             §§push(this.§;9§.y);
                                                                                                                                                                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr968:
                                                                                                                                                                                                                                                                                                      _loc9_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                      addr970:
                                                                                                                                                                                                                                                                                                      §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(this.m_s1);
                                                                                                                                                                                                                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                         §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr990:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr999:
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                                     if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1028:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * this.m_a2);
                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1032:
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1035:
                                                                                                                                                                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                    §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - b2internal::3T * _loc8_);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                    §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - b2internal::3T * _loc9_);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1068:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1068);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(b2internal::@!= * _loc10_);
                                                                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1074:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1082:
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1088:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                          if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + b2internal::`y * _loc8_);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + b2internal::`y * _loc9_);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1131:
                                                                                                                                                                                                                                                                                                                                                §§push(_loc7_ + b2internal::'o * _loc11_);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1139:
                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1397:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc2_.§<&§);
                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1412);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                   addr1148:
                                                                                                                                                                                                                                                                                                                                                   addr1412:
                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1405:
                                                                                                                                                                                                                                                                                                                                                      _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_.§<&§);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                   return;
                                                                                                                                                                                                                                                                                                                                                   addr1148:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1412);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1412);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1405);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1131);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1139);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1131);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1035);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1082);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1074);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1028);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1131);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1028);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1131);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1028);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr999);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr990);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr949);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr939);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr917);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1412);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr970);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr968);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1074);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr875);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc21_ = Number(_loc18_.x);
                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr864);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr892);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1074);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1148);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr968);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr917);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1028);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr931);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1028);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1032);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr747:
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              if(_loc23_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr755);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1068);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr739:
                                                                                                                                                                                                                           §§push(b2Math.§5!>§(this.§7!a§.y,0));
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr747);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr867);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr726:
                                                                                                                                                                                                                        if(this.§]!C§ == b2internal::86)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§7!a§);
                                                                                                                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr739);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr867);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1088);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr755);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr726);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1405);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr709);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1186:
                                                                                                                                                                                                            §§push(this.§7!a§.x);
                                                                                                                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + _loc22_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                            §§push(this.§&!a§);
                                                                                                                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop().x);
                                                                                                                                                                                                               if(_loc23_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1218:
                                                                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1230:
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     §§push(this.§&!a§.y);
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1236:
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.m_s1);
                                                                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1258:
                                                                                                                                                                                                                                    _loc10_ = Number(§§pop() * §§pop());
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1263:
                                                                                                                                                                                                                                       §§push(this.m_s2);
                                                                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1272:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!(_loc24_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1281:
                                                                                                                                                                                                                                             _loc11_ = Number(§§pop());
                                                                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1289:
                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                §§push(_loc4_.x);
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - b2internal::3T * _loc8_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                   §§push(_loc4_.y);
                                                                                                                                                                                                                                                   if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - b2internal::3T * _loc9_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1318:
                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1330:
                                                                                                                                                                                                                                                         §§push(Number(§§pop() - b2internal::@!= * _loc10_));
                                                                                                                                                                                                                                                         if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1338:
                                                                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                                                                            addr1339:
                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                                                                                                                            if(_loc23_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + b2internal::`y * _loc8_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + b2internal::`y * _loc9_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                               addr1371:
                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1392:
                                                                                                                                                                                                                                                                  §§push(§§pop() + b2internal::'o * _loc11_);
                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1395:
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                                                                                                                  §§goto(addr1397);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1397);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1395);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1371);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1339);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1318);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1330);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1392);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1330);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1263);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1392);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1281);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1330);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1289);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1263);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1230);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1218);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1272);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1175:
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                      addr1184:
                                                                                                                                                                                                      §§goto(addr1186);
                                                                                                                                                                                                      §§push(this.§7!a§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1258);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr635);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1171:
                                                                                                                                                                                             _loc22_ = Number(§§pop() / §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1184);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1171);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr628);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1272);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr616);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr628);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr585);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     if(this.§ !`§.col1.x != 0)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1171);
                                                                                                                                                                              §§push(this.§ !`§.col1.x);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1338);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1236);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1175);
                                                                                                                                                                        §§push(0);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1258);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr572);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr564);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr537);
                                                                                                                                                }
                                                                                                                                                §§goto(addr533);
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr533);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr537);
                                                                                                                              }
                                                                                                                              §§goto(addr501);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr444);
                                                                                                                     }
                                                                                                                     §§goto(addr531);
                                                                                                                  }
                                                                                                                  §§goto(addr428);
                                                                                                               }
                                                                                                               §§goto(addr435);
                                                                                                            }
                                                                                                            §§goto(addr514);
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr435);
                                                                                                   }
                                                                                                   §§goto(addr483);
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             §§goto(addr533);
                                                                                          }
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                                 §§goto(addr277);
                                                                              }
                                                                              §§goto(addr498);
                                                                           }
                                                                           §§goto(addr477);
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  §§goto(addr443);
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr489);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr512);
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr533);
                                 }
                                 §§goto(addr323);
                              }
                              §§goto(addr353);
                           }
                           §§goto(addr533);
                        }
                        §§goto(addr477);
                     }
                     §§goto(addr537);
                  }
                  §§goto(addr396);
               }
               §§goto(addr477);
            }
         }
         §§goto(addr93);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1806
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
