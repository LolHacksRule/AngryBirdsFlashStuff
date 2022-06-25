package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Mat33;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §&H§.b2Vec3;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §7!'§:b2Vec2;
      
      private var §+2§:b2Vec2;
      
      private var §>!^§:Number;
      
      private var §&""§:b2Vec3;
      
      private var §"X§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!'§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§+2§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§&""§ = new b2Vec3();
                  while(true)
                  {
                     this.§"X§ = new b2Mat33();
                     continue loop1;
                     loop5:
                     for(; !(_loc2_ && this); if(!(_loc3_ || this))
                     {
                        continue;
                     },§§goto(addr59))
                     {
                        this.§+2§.SetV(param1.§true§);
                        loop6:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              addr84:
                              if(_loc2_ && param1)
                              {
                                 break;
                              }
                              this.§>!^§ = param1.§-!u§;
                              loop7:
                              while(true)
                              {
                                 this.§&""§.§+J§();
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop7;
                                    addr59:
                                    this.§"X§ = new b2Mat33();
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§7!'§.SetV(param1.§'G§);
                                 continue loop5;
                              }
                              addr120:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.§7!'§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.§+2§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§&""§.x);
            if(!_loc3_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() * this.§&""§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            return §§pop() * this.§&""§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc4_ = b2internal::&A;
         _loc5_ = b2internal::4!d;
         _loc2_ = _loc4_.m_xf.R;
         if(!(_loc15_ && param1))
         {
            §§push(this.§7!'§);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr267:
               while(true)
               {
                  §§push(_loc4_.m_sweep);
                  addr269:
                  while(true)
                  {
                     §§push(§§pop().localCenter);
                     addr270:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr271:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr272:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr273:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         var _loc6_:b2Vec2 = _loc4_.§%!<§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc22_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§%!<§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§3!q§);
         if(!(_loc22_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§3!q§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§2!1§);
         if(!(_loc22_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§2!1§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§7!'§.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§7!'§.y);
         if(_loc23_ || param1)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc23_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(!(_loc22_ && _loc2_))
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr253:
               while(true)
               {
                  §§push(_loc14_);
                  if(_loc23_ || _loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     while(true)
                     {
                        §§push(_loc2_.col2);
                        addr264:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr265:
                           while(true)
                           {
                              §§push(_loc15_);
                              addr266:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                     }
                     addr262:
                  }
                  addr267:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     addr268:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr269:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr270:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr172);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§7!'§.x);
         if(!(_loc22_ && param1))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc21_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§7!'§.y);
         if(_loc21_ || _loc2_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!_loc22_)
            {
               addr73:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!_loc22_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc6_);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc22_ && _loc3_))
                        {
                           §§push(_loc2_.col2);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc21_)
                              {
                                 §§push(_loc7_);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr161:
                                    §§push(_loc7_);
                                    if(!(_loc21_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() * §§pop());
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc21_ || this)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop13:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop14:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop15:
                                                while(!(_loc22_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc21_)
                                                      {
                                                         addr82:
                                                         if(!(_loc22_ && _loc2_))
                                                         {
                                                            if(!(_loc22_ && _loc2_))
                                                            {
                                                               addr97:
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc22_ && param1))
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     addr106:
                                                                     if(!(_loc22_ && this))
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(_loc21_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                              addr118:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     while(!_loc22_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!(_loc21_ || _loc3_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr82);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr208:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr106);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop14;
                                                            }
                                                            §§goto(addr208);
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               break loop15;
                                                            }
                                                            addr209:
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr97);
                                                   }
                                                   _loc2_ = _loc5_.m_xf.R;
                                                   §§push(this.§+2§.x);
                                                   if(!(_loc22_ && this))
                                                   {
                                                      §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                      if(!_loc22_)
                                                      {
                                                         addr233:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      §§push(this.§+2§.y);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                         if(_loc21_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      if(_loc21_)
                                                      {
                                                         §§push(_loc2_.col1);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr345:
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc21_ || this)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(_loc2_.col2);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr359:
                                                                        addr297:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           addr360:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr361:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr362:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr371:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr371:
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§push(_loc2_.col2);
                                                                        if(_loc22_ && param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        if(_loc21_)
                                                                        {
                                                                           if(_loc21_ || _loc2_)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc22_ && _loc2_))
                                                                              {
                                                                                 addr325:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       if(_loc22_ && this)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          addr339:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop26;
                                                                                             }
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr359);
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                              §§goto(addr360);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr371);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr118);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr207);
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                              }
                              §§goto(addr207);
                           }
                        }
                        §§goto(addr209);
                     }
                  }
               }
            }
            §§goto(addr187);
         }
         §§goto(addr73);
      }
   }
}
