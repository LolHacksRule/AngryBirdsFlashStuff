package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-06Z§:b2Jacobian;
      
      private var §_-gl§:Number;
      
      private var §_-I1§:Number;
      
      private var §_-5W§:Number;
      
      private var §_-MK§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(!_loc7_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     for(; !(_loc7_ && this); while(_loc6_ || _loc2_)
                     {
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        super(param1);
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§goto(addr29);
                     })
                     {
                        while(true)
                        {
                           do
                           {
                              this.§_-06Z§ = new b2Jacobian();
                              continue loop3;
                           }
                           while(false);
                           
                           §§push(param1.joint1.§_-1c§);
                           if(!_loc7_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           §§push(param1.joint2.§_-1c§);
                           if(_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           if(_loc6_)
                           {
                              this.m_revolute1 = null;
                              loop7:
                              while(true)
                              {
                                 this.m_prismatic1 = null;
                                 addr492:
                                 while(true)
                                 {
                                    this.m_revolute2 = null;
                                 }
                                 loop40:
                                 while(true)
                                 {
                                    if(_loc7_ && this)
                                    {
                                       continue loop7;
                                    }
                                    §§push(this.m_revolute1.§_-yj§());
                                    loop41:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop42:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop43:
                                          while(true)
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                this.m_ground2 = param1.joint2.§_-00L§();
                                                loop21:
                                                while(true)
                                                {
                                                   §_-c9§ = param1.joint2.§_-03D§();
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(§§pop() != b2Joint.e_revoluteJoint)
                                                            {
                                                               this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(this.m_groundAnchor2);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                                           loop24:
                                                                           for(; _loc6_; loop28:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this);
                                                                                 §§push(_loc4_);
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§_-I1§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc5_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().§_-gl§ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr382:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop24;
                                                                           },while(true)
                                                                           {
                                                                              §§push(this.m_groundAnchor1);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                                                 break loop24;
                                                                              }
                                                                              §§goto(addr430);
                                                                           })
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop40;
                                                                                       }
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(this.m_prismatic2.§_-qk§());
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc7_ && _loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                _loc5_ = §§pop();
                                                                                                while(!_loc7_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      addr372:
                                                                                                   }
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             loop32:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ && param1)
                                                                                                         {
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                         _loc5_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§_-I1§ = param1.§_-0Bd§;
                                                                                                                  continue loop24;
                                                                                                                  §§goto(addr284);
                                                                                                               }
                                                                                                               addr284:
                                                                                                               continue loop23;
                                                                                                               addr159:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr322:
                                                                                                            }
                                                                                                            loop38:
                                                                                                            while(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(this.m_groundAnchor2);
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                                                                                        addr309:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.m_localAnchor2);
                                                                                                                           addr288:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                                                                                              addr292:
                                                                                                                              addr470:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    addr294:
                                                                                                                                    if(!(_loc6_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(this.m_revolute2.§_-yj§());
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 break loop22;
                                                                                                                                 §§goto(addr294);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr447:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                                                                                                     addr463:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.m_groundAnchor1);
                                                                                                                        addr430:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                                                                                           addr434:
                                                                                                                           addr487:
                                                                                                                           while(_loc6_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.m_localAnchor1);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.m_prismatic2 = null;
                                                                                                                              break loop38;
                                                                                                                              §§goto(addr434);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr492);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.m_ground1 = param1.joint1.§_-00L§();
                                                                                                               break loop23;
                                                                                                               §§goto(addr322);
                                                                                                            }
                                                                                                            addr322:
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop42;
                                                                                                      addr269:
                                                                                                   }
                                                                                                   continue loop41;
                                                                                                }
                                                                                                addr370:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break loop25;
                                                                                                }
                                                                                             }
                                                                                             continue loop41;
                                                                                             §§goto(addr159);
                                                                                          }
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                       §§goto(addr434);
                                                                                    }
                                                                                    §§goto(addr335);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    §§goto(addr372);
                                                                                 }
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop43;
                                                                              }
                                                                              §§push(this.m_localAnchor1);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                                                 §§goto(addr382);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr415);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               while(true)
                                                               {
                                                                  §_-0FB§ = param1.joint1.§_-03D§();
                                                                  §§goto(addr470);
                                                               }
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         break;
                                                         addr358:
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() == b2Joint.e_revoluteJoint)
                                                      {
                                                         §§goto(addr447);
                                                      }
                                                      else
                                                      {
                                                         this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                         §§goto(addr404);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr487);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-MK§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && param1))
               {
                  addr47:
                  §§push(this.§_-06Z§.§_-01W§.x);
                  if(_loc2_ || param1)
                  {
                     addr59:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                     }
                     §§goto(addr99);
                  }
                  §§push(this.§_-MK§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc2_ || _loc3_)
                     {
                        §§push(this.§_-06Z§.§_-01W§.y);
                     }
                     §§goto(addr99);
                  }
                  addr99:
                  return new §§pop().b2Vec2(§§pop(),§§pop());
                  §§push(§§pop() * §§pop());
               }
            }
            §§goto(addr59);
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::_-c9.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc8_)
         {
            §§push(§§pop() - b2internal::_-c9.m_sweep.localCenter.x);
            if(!(_loc8_ && _loc2_))
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc9_)
            {
               §§push(§§pop() - b2internal::_-c9.m_sweep.localCenter.y);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc9_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc9_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc9_ || _loc2_)
                     {
                        addr86:
                        §§push(§§pop() * _loc4_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_ || param1)
                     {
                        addr97:
                        var _loc5_:Number = §§pop();
                        if(!(_loc8_ && param1))
                        {
                           §§push(_loc2_.col1.y);
                           if(_loc9_)
                           {
                              §§push(_loc3_);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc8_)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(_loc9_ || this)
                                    {
                                       §§push(§§pop() * _loc4_);
                                       if(_loc9_ || _loc2_)
                                       {
                                       }
                                       addr189:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc8_ && param1))
                                       {
                                          addr197:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc6_:* = §§pop();
                                       §§push(this.§_-MK§);
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          §§push(§§pop() * this.§_-06Z§.§_-01W§.y);
                                          if(!_loc8_)
                                          {
                                             addr215:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(param1);
                                          if(!_loc8_)
                                          {
                                             §§push(this.§_-MK§);
                                             if(!_loc8_)
                                             {
                                                §§push(this.§_-06Z§.§_-k3§);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr280);
                                                            }
                                                            addr280:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               addr269:
                                                               §§push(_loc4_);
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  addr278:
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                            }
                                                            return §§pop() * §§pop();
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr278);
                                             }
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc9_ || _loc3_)
                                          {
                                             addr169:
                                             §§push(_loc5_);
                                             if(_loc9_ || this)
                                             {
                                                addr177:
                                                §§push(Number(§§pop()));
                                                if(!_loc8_)
                                                {
                                                   _loc3_ = §§pop();
                                                }
                                                addr185:
                                                §§goto(addr189);
                                                §§push(this.§_-06Z§.§_-01W§.x);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§push(this.§_-MK§);
                                          if(!_loc9_)
                                          {
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr169);
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr86);
            }
            §§goto(addr97);
         }
         §§goto(addr39);
      }
      
      public function §_-0Bg§() : Number
      {
         return this.§_-I1§;
      }
      
      public function §_-MO§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-I1§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::_-0FB;
         var _loc5_:b2Body = b2internal::_-c9;
         §§push(0);
         if(!(_loc16_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!(_loc16_ && _loc2_))
         {
            §§push(this.§_-06Z§);
            if(_loc15_ || _loc2_)
            {
               §§pop().§_-el§();
               if(_loc15_ || _loc2_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(!(_loc16_ && param1))
                        {
                           §§push(§§pop().R);
                           if(!(_loc16_ && _loc2_))
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§_-0-i§;
                              if(!_loc16_)
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc16_ && _loc3_))
                                    {
                                       §§push(_loc11_.x);
                                       if(!_loc16_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(_loc10_.col2);
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         addr221:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc15_)
                                                            {
                                                               addr227:
                                                               _loc6_ = §§pop();
                                                               if(!(_loc16_ && _loc2_))
                                                               {
                                                                  addr237:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     §§push(_loc11_.x);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr252:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              addr262:
                                                                              §§push(§§pop() * _loc11_.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               addr270:
                                                               _loc10_ = _loc4_.m_xf.R;
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  §§push(this.m_localAnchor1);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(_loc4_.m_sweep);
                                                                        loop83:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().localCenter);
                                                                           addr662:
                                                                           addr632:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr663:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr664:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.m_sweep);
                                                                              if(_loc16_ && _loc2_)
                                                                              {
                                                                                 continue loop83;
                                                                              }
                                                                              §§push(§§pop().localCenter);
                                                                              if(_loc16_ && _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              loop90:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc10_.col1);
                                                                                          loop94:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!(_loc16_ && this))
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                while(!_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                                continue loop90;
                                                                                                addr614:
                                                                                             }
                                                                                             addr617:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc10_.col2);
                                                                                                addr619:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr620:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc9_);
                                                                                                      addr621:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr622:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr623:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr624:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  continue loop94;
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
                                                                              }
                                                                              while(!(_loc16_ && _loc3_))
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 §§goto(addr571);
                                                                              }
                                                                           }
                                                                           §§goto(addr662);
                                                                        }
                                                                     }
                                                                     §§goto(addr665);
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_localAnchor1);
                                                                        if(!_loc15_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr632);
                                                                        §§push(§§pop().y);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr578);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         _loc7_ = §§pop();
                                                         §§goto(addr270);
                                                      }
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr221);
                                             }
                                          }
                                          §§goto(addr252);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr227);
                           }
                           addr730:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§_-0-i§;
                           if(!(_loc16_ && _loc3_))
                           {
                              §§push(_loc10_.col1);
                              if(!_loc16_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc15_ || _loc2_)
                                 {
                                    §§push(_loc11_.x);
                                    if(_loc15_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc16_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc15_ || _loc3_)
                                             {
                                                §§push(_loc11_.y);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc16_)
                                                   {
                                                      addr787:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc16_ && _loc2_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc16_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               addr803:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc15_)
                                                               {
                                                                  addr806:
                                                                  §§push(_loc11_.x);
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr828:
                                                                        addr830:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                        }
                                                                        addr841:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc15_)
                                                                        {
                                                                           addr845:
                                                                           _loc7_ = Number(§§pop());
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop37:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1244:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1246:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1247:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1248:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1249:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1250:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop37;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1240);
                                                                           addr844:
                                                                        }
                                                                     }
                                                                     §§goto(addr845);
                                                                  }
                                                                  §§goto(addr841);
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                               §§goto(addr828);
                                                            }
                                                            §§goto(addr845);
                                                         }
                                                         §§goto(addr806);
                                                      }
                                                      §§goto(addr845);
                                                   }
                                                   §§goto(addr828);
                                                }
                                                §§goto(addr806);
                                             }
                                             §§goto(addr787);
                                          }
                                          §§goto(addr830);
                                       }
                                       §§goto(addr844);
                                    }
                                    §§goto(addr787);
                                 }
                                 §§goto(addr845);
                              }
                           }
                           §§goto(addr803);
                        }
                        break;
                     }
                     if(_loc15_)
                     {
                        §§push(this.§_-06Z§);
                        if(!(_loc16_ && _loc2_))
                        {
                           §§pop().§_-O8§ = -1;
                           if(!_loc16_)
                           {
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 §§push(_loc4_.§_-Dz§);
                                 if(_loc15_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc15_ || this)
                                    {
                                       addr90:
                                       §§push(Number(§§pop()));
                                       if(!_loc16_)
                                       {
                                          _loc14_ = §§pop();
                                          if(_loc15_ || this)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr667:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(_loc15_)
                                             {
                                                addr674:
                                                §§push(this.§_-06Z§);
                                                §§push(this.§_-I1§);
                                                if(!(_loc16_ && this))
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§_-k3§ = §§pop();
                                                if(_loc15_ || param1)
                                                {
                                                   §§push(_loc14_);
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      addr700:
                                                      §§push(this.§_-I1§);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(this.§_-I1§);
                                                         if(_loc15_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr718:
                                                               §§push(§§pop() * _loc5_.§_-Dz§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc15_)
                                                            {
                                                               addr723:
                                                               _loc14_ = Number(§§pop());
                                                               if(_loc15_)
                                                               {
                                                                  addr1252:
                                                                  §§push(this);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!(_loc16_ && param1))
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           addr1266:
                                                                           §§push(1 / _loc14_);
                                                                           if(_loc15_ || _loc2_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc16_ && this)
                                                                              {
                                                                                 addr1288:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1284:
                                                                              }
                                                                           }
                                                                           §§goto(addr1284);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§goto(addr1288);
                                                                           }
                                                                        }
                                                                        §§pop().§_-5W§ = §§pop();
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           if(!param1.§_-0F7§)
                                                                           {
                                                                              this.§_-MK§ = 0;
                                                                              if(!(_loc16_ && param1))
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          if(_loc15_ || _loc2_)
                                                                                          {
                                                                                             addr1486:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                §§push(_loc5_.m_angularVelocity);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§push(_loc5_.§_-Dz§);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(this.§_-MK§);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr1344:
                                                                                                         addr1345:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc16_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(this.§_-06Z§.§_-k3§);
                                                                                                         }
                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc16_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc15_ || param1)
                                                                                                               {
                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr1660:
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§_-kZ§);
                                                                                                                     addr1582:
                                                                                                                     addr1645:
                                                                                                                     loop13:
                                                                                                                     for(; !(_loc16_ && _loc3_); loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc16_ && param1)
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        §§push(_loc5_.§_-kZ§);
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.§_-03A§);
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§_-MK§);
                                                                                                                                 loop27:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop28:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-06Z§);
                                                                                                                                          loop24:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§_-01W§);
                                                                                                                                                loop23:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   addr1520:
                                                                                                                                                   addr1538:
                                                                                                                                                   addr1539:
                                                                                                                                                   loop26:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc16_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  break loop26;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1653);
                                                                                                                                                            }
                                                                                                                                                            addr1530:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1652);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1636);
                                                                                                                                                   }
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.§_-kZ§);
                                                                                                                                                      if(!(_loc15_ || this))
                                                                                                                                                      {
                                                                                                                                                         continue loop31;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc5_.§_-kZ§);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc16_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§_-03A§);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop28;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.§_-MK§);
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop25;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§_-06Z§);
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc15_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§_-01W§);
                                                                                                                                                                                    if(_loc16_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1442:
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc15_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1452:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc15_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1469:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1592);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1658);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1637);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1530);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1657);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1655);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1650);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1452);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1520);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1442);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1452);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1638);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1469);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr1647:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1648);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1591);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1617);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1607);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1538);
                                                                                                                        }
                                                                                                                     })
                                                                                                                     {
                                                                                                                        §§push(_loc4_.§_-kZ§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           addr1592:
                                                                                                                           loop15:
                                                                                                                           while(_loc15_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.§_-03A§);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-MK§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc15_ || this)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-06Z§);
                                                                                                                                             addr1617:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§_-SD§);
                                                                                                                                                if(!(_loc15_ || param1))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1656:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr1657:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr1658:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      break loop15;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1615:
                                                                                                                                       }
                                                                                                                                       addr1637:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr1638:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             addr1639:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                §§push(_loc4_.m_angularVelocity);
                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_.§_-Dz§);
                                                                                                                                                   if(!(_loc16_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-MK§);
                                                                                                                                                      if(_loc15_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr1576:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-06Z§.§_-O8§);
                                                                                                                                                         }
                                                                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.§_-kZ§);
                                                                                                                                                            continue loop13;
                                                                                                                                                         }
                                                                                                                                                         addr1578:
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1576);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1607:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1615);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§_-03A§);
                                                                                                                                    addr1650:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-MK§);
                                                                                                                                       addr1652:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr1653:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-06Z§);
                                                                                                                                             addr1655:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1648:
                                                                                                                              }
                                                                                                                              §§goto(addr1656);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr1647);
                                                                                                                        §§goto(addr1582);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1639);
                                                                                                            }
                                                                                                            §§goto(addr1578);
                                                                                                         }
                                                                                                         return;
                                                                                                         addr1346:
                                                                                                         addr1367:
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§goto(addr1344);
                                                                                                }
                                                                                                §§goto(addr1345);
                                                                                             }
                                                                                             addr1486:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr1643:
                                                                                          }
                                                                                          §§goto(addr1645);
                                                                                       }
                                                                                       §§goto(addr1539);
                                                                                       §§pop().y = §§pop();
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1317:
                                                                                 }
                                                                                 §§goto(addr1344);
                                                                              }
                                                                              §§goto(addr1346);
                                                                           }
                                                                           §§goto(addr1643);
                                                                           addr1297:
                                                                        }
                                                                        §§goto(addr1486);
                                                                     }
                                                                     §§goto(addr1284);
                                                                  }
                                                                  §§goto(addr1266);
                                                                  addr726:
                                                               }
                                                               §§goto(addr1367);
                                                            }
                                                            §§goto(addr723);
                                                         }
                                                      }
                                                      §§goto(addr718);
                                                   }
                                                   §§goto(addr723);
                                                }
                                                §§goto(addr1660);
                                             }
                                             §§goto(addr726);
                                          }
                                          §§goto(addr1297);
                                       }
                                       §§goto(addr723);
                                    }
                                    §§goto(addr700);
                                 }
                                 §§goto(addr718);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr1539);
                        }
                        §§goto(addr674);
                     }
                     §§goto(addr1486);
                     §§goto(addr1252);
                  }
                  §§goto(addr730);
                  §§push(§§pop().R);
               }
               §§goto(addr1317);
            }
            §§goto(addr674);
         }
         §§goto(addr1576);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         §§push(this.§_-06Z§.§_-KX§(_loc2_.§_-kZ§,_loc2_.m_angularVelocity,_loc3_.§_-kZ§,_loc3_.m_angularVelocity));
         if(!(_loc7_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§_-5W§);
         if(!(_loc7_ && _loc3_))
         {
            §§push(-§§pop());
            if(!_loc7_)
            {
               addr54:
               §§push(§§pop() * _loc4_);
               if(_loc6_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && this))
            {
               §§push(this);
               §§push(this.§_-MK§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§_-MK§ = §§pop();
            }
            loop0:
            while(true)
            {
               §§push(_loc2_.§_-kZ§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.§_-kZ§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!_loc7_)
                     {
                        §§push(_loc2_.§_-03A§);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr380:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr381:
                              while(true)
                              {
                                 §§push(this.§_-06Z§);
                                 addr383:
                                 while(true)
                                 {
                                    §§push(§§pop().§_-SD§);
                                    addr384:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr385:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr386:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr379:
                     }
                     loop10:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        loop11:
                        while(true)
                        {
                           §§push(_loc2_.§_-kZ§);
                           loop12:
                           while(true)
                           {
                              §§push(_loc2_.§_-kZ§);
                              loop13:
                              while(true)
                              {
                                 §§push(§§pop().y);
                                 loop14:
                                 while(true)
                                 {
                                    §§push(_loc2_.§_-03A§);
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(_loc5_);
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc7_ && param1))
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§_-06Z§);
                                                   loop34:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§_-SD§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop().y);
                                                         loop35:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr356:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(_loc2_.§_-Dz§);
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr317:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 addr315:
                                                                                 §§push(§§pop() * this.§_-06Z§.§_-O8§);
                                                                              }
                                                                              §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc6_ || _loc2_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc3_.§_-kZ§);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(_loc3_.§_-kZ§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc7_ && param1)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop().x);
                                                                                                loop22:
                                                                                                while(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(_loc3_.§_-03A§);
                                                                                                      while(_loc6_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§_-06Z§);
                                                                                                               addr269:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ || param1))
                                                                                                                  {
                                                                                                                     continue loop34;
                                                                                                                  }
                                                                                                                  §§push(§§pop().§_-01W§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr278:
                                                                                                                     while(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr282:
                                                                                                                           while(_loc6_)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr199:
                                                                                                                     §§goto(addr380);
                                                                                                                     §§push(§§pop().§_-01W§);
                                                                                                                     if(!(_loc6_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr217:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr220:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    §§push(_loc3_.m_angularVelocity);
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.§_-Dz§);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr112:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc7_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(this.§_-06Z§.§_-k3§);
                                                                                                                                             }
                                                                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr112);
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr278);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr384);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                      addr258:
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§push(_loc3_.§_-kZ§);
                                                                                             addr124:
                                                                                             continue loop13;
                                                                                             if(_loc7_ && _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   §§push(_loc3_.§_-03A§);
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               continue loop35;
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.§_-06Z§);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              §§goto(addr199);
                                                                                                                           }
                                                                                                                           §§goto(addr383);
                                                                                                                        }
                                                                                                                        §§goto(addr269);
                                                                                                                     }
                                                                                                                     §§goto(addr386);
                                                                                                                  }
                                                                                                                  §§goto(addr258);
                                                                                                               }
                                                                                                               §§goto(addr281);
                                                                                                            }
                                                                                                            §§goto(addr217);
                                                                                                         }
                                                                                                         §§goto(addr208);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr379);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr217);
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             §§goto(addr220);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                }
                                                addr349:
                                             }
                                             §§goto(addr356);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr349);
                                 }
                                 §§goto(addr381);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::_-0FB;
         var _loc4_:b2Body = b2internal::_-c9;
         if(!(_loc10_ && _loc2_))
         {
            §§push(this.m_revolute1);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     addr133:
                     §§push(this.m_revolute1.§_-yj§());
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr135:
                        while(true)
                        {
                           _loc5_ = §§pop();
                        }
                     }
                     addr134:
                  }
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.m_revolute2);
                        if(!(_loc10_ && param1))
                        {
                           if(!§§pop())
                           {
                              §§push(this.m_prismatic2.§_-qk§());
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc10_)
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc9_)
                                    {
                                       if(!_loc10_)
                                       {
                                          while(false)
                                          {
                                             continue loop1;
                                          }
                                          addr137:
                                          §§push(this.§_-gl§);
                                          if(!(_loc10_ && param1))
                                          {
                                             break;
                                          }
                                          var _loc7_:Number = §§pop();
                                          §§push(this.§_-5W§);
                                          if(!_loc10_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() * _loc7_);
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§push(_loc3_.m_sweep);
                                             loop2:
                                             while(true)
                                             {
                                                §§push(§§pop().c);
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(_loc3_.m_sweep);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().c);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            §§push(_loc3_.§_-03A§);
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               addr640:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr641:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-06Z§);
                                                                     addr643:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§_-SD§);
                                                                        addr644:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr645:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr646:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr532:
                                                               if(!(_loc9_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               loop48:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.m_sweep);
                                                                     loop50:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr348:
                                                                           §§push(_loc4_.m_sweep);
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              addr359:
                                                                              §§push(§§pop().c);
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr457:
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       loop51:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop50;
                                                                                          }
                                                                                          addr648:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.m_sweep);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().c);
                                                                                                addr572:
                                                                                                while(!_loc10_)
                                                                                                {
                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      addr577:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(_loc3_.§_-03A§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§_-06Z§);
                                                                                                                     addr593:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§_-SD§);
                                                                                                                        if(_loc10_ && param1)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                     }
                                                                                                                     §§goto(addr644);
                                                                                                                  }
                                                                                                                  addr591:
                                                                                                               }
                                                                                                               addr602:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr603:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     break loop50;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr587:
                                                                                                         }
                                                                                                         break loop50;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr545:
                                                                                                continue loop3;
                                                                                                while(_loc9_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().a);
                                                                                                         addr557:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.§_-Dz§);
                                                                                                            addr559:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               addr560:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr561:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§_-06Z§);
                                                                                                                     addr563:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§_-O8§);
                                                                                                                        addr564:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr565:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr566:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                 addr567:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                    break loop51;
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
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       loop37:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             while(!(_loc10_ && _loc2_))
                                                                                             {
                                                                                                §§push(_loc4_.m_sweep);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(_loc10_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§push(§§pop().x);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_.§_-03A§);
                                                                                                               addr498:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!(_loc10_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        loop43:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(this.§_-06Z§);
                                                                                                                              while(_loc9_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§_-01W§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr527:
                                                                                                                                    addr439:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr528:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr532);
                                                                                                                                          }
                                                                                                                                          §§goto(addr603);
                                                                                                                                       }
                                                                                                                                       §§goto(addr641);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§_-01W§);
                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                    {
                                                                                                                                       addr448:
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                       {
                                                                                                                                          addr456:
                                                                                                                                          §§goto(addr457);
                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       break loop43;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr643);
                                                                                                                              addr518:
                                                                                                                           }
                                                                                                                           §§goto(addr587);
                                                                                                                        }
                                                                                                                        §§goto(addr602);
                                                                                                                        addr514:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr527);
                                                                                                               }
                                                                                                               addr377:
                                                                                                               §§goto(addr645);
                                                                                                               if(!(_loc9_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc4_.§_-03A§);
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                    {
                                                                                                                                       addr424:
                                                                                                                                       if(_loc9_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-06Z§);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr439);
                                                                                                                                                }
                                                                                                                                                §§goto(addr593);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr518);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr591);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr498);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr456);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr640);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr527);
                                                                                                                           }
                                                                                                                           §§goto(addr448);
                                                                                                                        }
                                                                                                                        §§goto(addr646);
                                                                                                                     }
                                                                                                                     §§goto(addr514);
                                                                                                                  }
                                                                                                                  §§goto(addr528);
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      §§goto(addr577);
                                                                                                      addr486:
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                §§goto(addr576);
                                                                                             }
                                                                                             §§goto(addr572);
                                                                                             addr474:
                                                                                          }
                                                                                          break;
                                                                                          addr250:
                                                                                          if(!(_loc9_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc4_.m_sweep);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop().a);
                                                                                             if(!(_loc10_ && _loc2_))
                                                                                             {
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc4_.§_-Dz§);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!(_loc10_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc9_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(this.§_-06Z§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr303:
                                                                                                                  §§push(§§pop().§_-k3§);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr323:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              addr333:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc10_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc3_.§_-da§();
                                                                                                                                    loop53:
                                                                                                                                    for(; !_loc10_; while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_.§_-da§();
                                                                                                                                       if(_loc10_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop53;
                                                                                                                                       }
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ || this))
                                                                                                                                          {
                                                                                                                                             continue loop49;
                                                                                                                                          }
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr622:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             break loop37;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr460);
                                                                                                                                       }
                                                                                                                                    },return _loc2_ < b2Settings.b2_linearSlop)
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr567);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr557);
                                                                                                                           }
                                                                                                                           §§goto(addr561);
                                                                                                                        }
                                                                                                                        §§goto(addr565);
                                                                                                                     }
                                                                                                                     §§goto(addr560);
                                                                                                                  }
                                                                                                                  §§goto(addr564);
                                                                                                               }
                                                                                                               §§goto(addr563);
                                                                                                            }
                                                                                                            §§goto(addr323);
                                                                                                         }
                                                                                                         §§goto(addr303);
                                                                                                      }
                                                                                                      §§goto(addr559);
                                                                                                   }
                                                                                                   §§goto(addr323);
                                                                                                }
                                                                                                §§goto(addr566);
                                                                                             }
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                          §§goto(addr556);
                                                                                       }
                                                                                       addr460:
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                 }
                                                                                 continue loop48;
                                                                                 break;
                                                                              }
                                                                              §§goto(addr486);
                                                                           }
                                                                           §§goto(addr483);
                                                                        }
                                                                        §§goto(addr474);
                                                                     }
                                                                     while(!(_loc10_ && this))
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        §§goto(addr622);
                                                                     }
                                                                     addr647:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        §§goto(addr648);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr647);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr239);
                                          addr65:
                                       }
                                       else
                                       {
                                          addr78:
                                          if(!_loc10_)
                                          {
                                             addr82:
                                             §§push(this.m_revolute2.§_-yj§());
                                             if(!_loc10_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_ || param1)
                                                         {
                                                            _loc6_ = §§pop();
                                                            §§goto(addr137);
                                                            addr105:
                                                         }
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr113:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr116:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr134);
                                                            }
                                                         }
                                                      }
                                                      addr112:
                                                   }
                                                   §§goto(addr135);
                                                }
                                                §§goto(addr113);
                                             }
                                             break;
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr105);
                                 }
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr82);
                     }
                     §§push(_loc5_);
                     if(!(_loc10_ && this))
                     {
                        §§push(this.§_-I1§);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc9_ || _loc2_)
                     {
                     }
                     §§goto(addr137);
                  }
               }
               else
               {
                  §§push(this.m_prismatic1.§_-qk§());
               }
               §§goto(addr112);
            }
            §§goto(addr133);
         }
         §§goto(addr65);
      }
   }
}
