package §%t§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §3!;§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!;§ = 2;
         }
      }
      
      private var §]R§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §,!Z§:Number;
      
      private var §?"§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §7U§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §;!?§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §'Z§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || this)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(_loc5_ || _loc2_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           addr390:
                           while(true)
                           {
                              super(param1);
                              addr384:
                              loop6:
                              while(true)
                              {
                                 this.§]R§ = §1!G§.m_world.m_groundBody;
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    while(true)
                                    {
                                       §§push(param1.§+f§);
                                       addr354:
                                       addr371:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr355:
                                          while(true)
                                          {
                                             §§push(this.§]R§);
                                             addr357:
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr358:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr359:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr360:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr361:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§push(this.m_groundAnchor1);
                                       if(!(_loc5_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(param1.§+f§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop().y);
                                          if(!(_loc6_ && this))
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(this.§]R§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop().m_xf);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop().position);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            addr333:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§pop().y = §§pop();
                                                               while(_loc5_ || this)
                                                               {
                                                                  §§push(this.m_groundAnchor2);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§6!P§);
                                                                     addr276:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr277:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§]R§);
                                                                           addr279:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().m_xf);
                                                                              addr280:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().position);
                                                                                 addr281:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr282:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr283:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr359);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr358);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                else
                                                {
                                                   §§goto(addr357);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr355);
                                             }
                                             §§goto(addr357);
                                          }
                                          §§goto(addr333);
                                       }
                                       else
                                       {
                                          §§goto(addr354);
                                       }
                                    }
                                    addr144:
                                    while(!(_loc6_ && _loc3_))
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc6_ && this))
                     {
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr270);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §1!G§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §&!F§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§;!?§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && param1))
               {
                  addr47:
                  §§push(this.m_u2.x);
                  if(_loc2_)
                  {
                     §§goto(addr53);
                  }
                  §§goto(addr71);
               }
               §§goto(addr53);
            }
            addr53:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               addr71:
               §§push(this.§;!?§);
               if(!(_loc3_ && this))
               {
                  §§goto(addr92);
               }
               §§push(§§pop() * §§pop());
            }
            addr92:
            §§push(§§pop() * §§pop());
            if(_loc2_ || _loc2_)
            {
               §§push(this.m_u2.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §4!A§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§]R§.m_xf.position.Copy();
         if(!_loc3_)
         {
            _loc1_.§4!0§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §>&§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§]R§.m_xf.position.Copy();
         if(!_loc3_)
         {
            _loc1_.§4!0§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = §1!G§.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§]R§.m_xf.position.x);
         if(_loc6_ || _loc1_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!_loc7_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§]R§.m_xf.position.y);
            if(!(_loc7_ && _loc1_))
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(!(_loc7_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc6_ || _loc1_)
            {
               §§push(§§pop() - _loc2_);
               if(_loc6_)
               {
                  addr101:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!_loc7_)
               {
                  §§push(§§pop() - _loc3_);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr101);
         }
         §§goto(addr41);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = §&!F§.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§]R§.m_xf.position.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc6_ || _loc1_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§]R§.m_xf.position.y);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc6_ || _loc2_)
               {
                  addr81:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop() - _loc2_);
                  if(_loc6_)
                  {
                     addr106:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc1_.y);
                  if(_loc6_)
                  {
                     §§push(§§pop() - _loc3_);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr106);
            }
            §§goto(addr81);
         }
         §§goto(addr46);
      }
      
      public function §1=§() : Number
      {
         return this.§?"§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = §1!G§;
         _loc3_ = §&!F§;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc28_ || this)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc28_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc28_)
         {
            §§push(this.m_localAnchor1.y);
            if(_loc28_)
            {
               §§push(_loc2_.m_sweep.localCenter.y);
               if(_loc28_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc27_)
                     {
                        addr97:
                        _loc6_ = §§pop();
                        §§push(_loc4_.col1.x);
                        if(!_loc27_)
                        {
                           §§push(_loc5_);
                           if(_loc28_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc28_)
                              {
                                 §§push(_loc4_.col2.x);
                                 if(_loc28_ || param1)
                                 {
                                    addr119:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc27_ && _loc2_)
                                 {
                                 }
                                 addr130:
                                 var _loc7_:* = §§pop();
                                 if(!_loc27_)
                                 {
                                    §§push(_loc4_.col1.y);
                                    if(!_loc27_)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc27_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc27_ && this))
                                          {
                                             addr149:
                                             §§push(_loc4_.col2.y);
                                             if(!_loc27_)
                                             {
                                                addr156:
                                                §§push(§§pop() + §§pop() * _loc6_);
                                                if(_loc28_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc28_ || this)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(!_loc27_)
                                                      {
                                                         addr175:
                                                         §§push(_loc7_);
                                                         if(!(_loc27_ && param1))
                                                         {
                                                            addr184:
                                                            _loc5_ = Number(§§pop());
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      _loc4_ = _loc3_.m_xf.R;
                                                      §§push(this.m_localAnchor2.x);
                                                      if(_loc28_ || this)
                                                      {
                                                         §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                         if(_loc28_)
                                                         {
                                                            addr207:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         §§push(this.m_localAnchor2.y);
                                                         if(!(_loc27_ && param1))
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                            if(_loc28_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         if(_loc28_ || this)
                                                         {
                                                            §§push(_loc4_.col1);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc28_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col2);
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc28_ || _loc3_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             addr267:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.col1);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc27_ && this))
                                                                                                {
                                                                                                   if(_loc28_ || this)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc27_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            addr298:
                                                                                                            §§push(_loc4_.col2);
                                                                                                            if(!(_loc27_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc27_ && _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop9:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc28_ || param1))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 addr250:
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr374:
                                                                                                                           §§push(_loc5_);
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§goto(addr379);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§goto(addr298);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                §§goto(addr379);
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr379);
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr379);
                                                            }
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr184);
                                                }
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr130);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr97);
               }
               §§goto(addr119);
            }
            §§goto(addr130);
         }
         §§goto(addr97);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc2_:b2Body = §1!G§;
         var _loc3_:b2Body = §&!F§;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc3_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               addr71:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc21_ || _loc3_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(_loc21_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc4_.col1.x);
            if(!_loc22_)
            {
               §§push(_loc5_);
               if(_loc21_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc22_ && param1))
                  {
                     addr113:
                     §§push(_loc4_.col2.x);
                     if(_loc21_ || _loc3_)
                     {
                        addr123:
                        §§push(§§pop() * _loc6_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc21_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc22_ && _loc3_))
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc22_)
                     {
                        §§push(_loc5_);
                        if(_loc21_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc22_ && this))
                           {
                              §§push(_loc4_.col2.y);
                              if(!_loc22_)
                              {
                                 addr165:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(!_loc21_)
                                 {
                                 }
                                 addr193:
                                 _loc5_ = §§pop();
                                 _loc4_ = _loc3_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(_loc21_ || _loc2_)
                                 {
                                    §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                    if(!(_loc22_ && _loc2_))
                                    {
                                       addr221:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(!(_loc22_ && _loc3_))
                                    {
                                       §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                       if(_loc21_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    if(_loc21_)
                                    {
                                       §§push(_loc4_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr2322:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             addr2323:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr2324:
                                                while(true)
                                                {
                                                   §§push(_loc4_.col2);
                                                   addr2326:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr2327:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         addr2328:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr2329:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr2330:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr2331:
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr867);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr165);
                           }
                           §§push(Number(§§pop()));
                           if(!(_loc22_ && this))
                           {
                              _loc6_ = §§pop();
                              if(!(_loc22_ && param1))
                              {
                                 addr184:
                                 §§push(_loc7_);
                                 if(_loc21_ || _loc3_)
                                 {
                                    §§goto(addr193);
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr184);
               }
               §§goto(addr123);
            }
            §§goto(addr113);
         }
         §§goto(addr71);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
