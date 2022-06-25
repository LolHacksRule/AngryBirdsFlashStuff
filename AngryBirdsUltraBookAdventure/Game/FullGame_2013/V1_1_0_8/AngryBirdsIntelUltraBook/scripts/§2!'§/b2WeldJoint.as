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
               while(true)
               {
                  this.§&""§ = new b2Vec3();
                  while(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        this.§"X§ = new b2Mat33();
                        loop3:
                        while(_loc3_ || _loc2_)
                        {
                           super(param1);
                           while(true)
                           {
                              this.§7!'§.SetV(param1.§'G§);
                              loop5:
                              while(_loc3_)
                              {
                                 this.§+2§.SetV(param1.§true§);
                                 addr52:
                                 if(_loc2_ && param1)
                                 {
                                    continue;
                                 }
                                 this.§"X§ = new b2Mat33();
                                 addr69:
                                 if(!_loc2_)
                                 {
                                    addr31:
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       while(true)
                                       {
                                          this.§>!^§ = param1.§-!u§;
                                          loop7:
                                          while(true)
                                          {
                                             this.§&""§.§+J§();
                                             addr45:
                                             while(true)
                                             {
                                                if(_loc2_ && _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr52);
                                                §§goto(addr69);
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr31);
                                       }
                                       return;
                                       addr40:
                                       addr82:
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr40);
                                 }
                                 §§goto(addr45);
                              }
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr82);
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
         if(!_loc3_)
         {
            §§push(this.§&""§.x);
            if(!_loc3_)
            {
               §§goto(addr36);
            }
            §§goto(addr44);
         }
         addr36:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            addr44:
            §§push(§§pop() * this.§&""§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§&""§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc4_ = b2internal::&A;
         _loc5_ = b2internal::4!d;
         _loc2_ = _loc4_.m_xf.R;
         if(_loc15_ || _loc3_)
         {
            §§push(this.§7!'§);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(!_loc14_)
               {
                  §§push(_loc4_.m_sweep);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().localCenter);
                     addr266:
                     addr230:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr267:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr268:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     loop7:
                     while(true)
                     {
                        §§push(_loc4_.m_sweep);
                        if(!(_loc15_ || param1))
                        {
                           continue loop1;
                        }
                        §§push(§§pop().localCenter);
                        if(!_loc15_)
                        {
                           break;
                        }
                        §§push(§§pop().y);
                        loop8:
                        while(true)
                        {
                           if(!(_loc14_ && _loc3_))
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc15_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              loop9:
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 loop10:
                                 while(!_loc14_)
                                 {
                                    §§push(_loc2_.col1);
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc14_ && _loc3_))
                                       {
                                          §§push(_loc6_);
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr163:
                                             if(!(_loc15_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(§§pop() + §§pop());
                                             while(!(_loc14_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop9;
                                             }
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                break loop10;
                                             }
                                          }
                                       }
                                       addr201:
                                       while(true)
                                       {
                                          §§push(_loc2_.col2);
                                          addr203:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr204:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr205:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       loop21:
                                       while(true)
                                       {
                                          §§push(_loc2_.col1);
                                          if(_loc14_ && _loc2_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().y);
                                          loop22:
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                if(!_loc14_)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(_loc6_);
                                                   if(_loc15_ || this)
                                                   {
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop().y);
                                                               if(_loc15_ || param1)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(_loc14_ && param1)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr163);
                                                                        }
                                                                        addr156:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr205);
                                                                  addr152:
                                                               }
                                                               §§goto(addr156);
                                                            }
                                                            break;
                                                            addr71:
                                                            if(!(_loc15_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            addr79:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc15_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            addr81:
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               addr88:
                                                               _loc6_ = §§pop();
                                                               if(_loc14_ && _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§goto(addr71);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr171);
                                                                        }
                                                                     }
                                                                     §§goto(addr79);
                                                                     §§goto(addr88);
                                                                  }
                                                                  continue loop22;
                                                                  addr187:
                                                               }
                                                               if(!_loc14_)
                                                               {
                                                                  if(_loc14_ && _loc3_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  while(false)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  _loc2_ = _loc5_.m_xf.R;
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(this.§+2§);
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr1498:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.m_sweep);
                                                                           addr1500:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().localCenter);
                                                                              addr1501:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1502:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr1503:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr1504:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          continue loop30;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr890);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  addr223:
                                                               }
                                                            }
                                                            while(_loc15_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  §§goto(addr223);
                                                               }
                                                               §§goto(addr81);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                break;
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr201);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr267);
                           }
                        }
                     }
                     §§goto(addr266);
                  }
               }
               §§goto(addr269);
            }
         }
         §§goto(addr105);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         var _loc6_:b2Vec2 = _loc4_.§%!<§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc22_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§%!<§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§3!q§);
         if(!(_loc23_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§3!q§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§2!1§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§2!1§);
         if(_loc22_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§7!'§.x);
         if(!(_loc23_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc23_ && param1))
            {
               addr113:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§7!'§.y);
            if(!_loc23_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!_loc23_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(_loc22_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  addr247:
                  while(true)
                  {
                     §§push(_loc14_);
                     if(_loc22_)
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr253:
                           while(true)
                           {
                              §§push(§§pop().x);
                           }
                        }
                        addr251:
                     }
                     addr254:
                     while(true)
                     {
                        §§push(_loc15_);
                        addr255:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr256:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr257:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr258:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr259:
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
               }
            }
            §§goto(addr243);
         }
         §§goto(addr113);
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
         if(_loc21_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc22_ && this))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§7!'§.y);
            if(!_loc22_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc21_ || param1)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc21_)
               {
                  §§push(_loc2_.col1);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr173:
                     while(true)
                     {
                        §§push(_loc6_);
                        addr174:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr175:
                           while(true)
                           {
                              §§push(_loc2_.col2);
                              addr177:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(_loc21_)
                                 {
                                    §§push(_loc7_);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                    addr181:
                                 }
                                 addr182:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr183:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr184:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr185:
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
                     }
                  }
               }
               §§goto(addr169);
            }
            §§goto(addr68);
         }
         §§goto(addr49);
      }
   }
}
