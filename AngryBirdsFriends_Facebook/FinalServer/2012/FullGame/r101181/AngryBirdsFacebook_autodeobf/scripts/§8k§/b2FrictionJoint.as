package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §47§:b2Vec2;
      
      private var §#! §:b2Vec2;
      
      public var §<"D§:b2Mat22;
      
      public var §-<§:Number;
      
      private var §@!2§:b2Vec2;
      
      private var §+`§:Number;
      
      private var §6!_§:Number;
      
      private var §?<§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§47§ = new b2Vec2();
            while(true)
            {
               this.§#! § = new b2Vec2();
               loop1:
               for(; _loc2_; loop5:
               while(!(_loc3_ && _loc2_))
               {
                  this.§#! §.SetV(param1.§^!J§);
                  while(true)
                  {
                     this.§<"D§.§;v§();
                     loop7:
                     while(true)
                     {
                        this.§-<§ = 0;
                        loop8:
                        while(_loc2_)
                        {
                           this.§@!2§.§;v§();
                           while(true)
                           {
                              this.§+`§ = 0;
                              loop10:
                              while(_loc2_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop8;
                                 while(true)
                                 {
                                    this.§?<§ = param1.maxTorque;
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop10;
                                    }
                                    §§goto(addr37);
                                 }
                                 §§goto(addr46);
                              }
                           }
                        }
                        continue loop5;
                     }
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        this.§6!_§ = param1.§"#§;
                        §§goto(addr52);
                     }
                     §§goto(addr140);
                  }
               })
               {
                  this.§<"D§ = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§@!2§ = new b2Vec2();
                     while(true)
                     {
                        super(param1);
                        addr140:
                        while(true)
                        {
                           this.§47§.SetV(param1.§#C§);
                           continue loop1;
                        }
                        addr37:
                        if(_loc2_ || param1)
                        {
                           if(!_loc3_)
                           {
                              return;
                              addr46:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.§47§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.§#! §);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§@!2§.x);
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr41);
            }
            §§goto(addr49);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            addr49:
            §§push(§§pop() * this.§@!2§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && this))
         {
            return §§pop() * this.§+`§;
         }
      }
      
      public function §%#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§6!_§ = param1;
         }
      }
      
      public function §9"@§() : Number
      {
         return this.§6!_§;
      }
      
      public function §9!u§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?<§ = param1;
         }
      }
      
      public function §for§() : Number
      {
         return this.§?<§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::8!Z;
         _loc5_ = b2internal::4"0;
         _loc2_ = _loc4_.m_xf.R;
         if(!(_loc17_ && param1))
         {
            §§push(this.§47§);
            if(!(_loc17_ && param1))
            {
               §§push(§§pop().x);
               if(!_loc17_)
               {
                  §§push(_loc4_.m_sweep);
                  if(!(_loc17_ && param1))
                  {
                     §§push(§§pop().localCenter);
                     if(_loc16_ || _loc2_)
                     {
                        §§push(§§pop().x);
                        if(_loc16_ || _loc3_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc17_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc17_ && _loc3_))
                              {
                                 addr114:
                                 _loc6_ = §§pop();
                                 §§push(this.§47§.y);
                                 if(!(_loc17_ && _loc2_))
                                 {
                                    addr125:
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                    if(_loc16_)
                                    {
                                       addr132:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!_loc17_)
                                    {
                                       §§push(_loc2_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr249:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr250:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr251:
                                                while(true)
                                                {
                                                   §§push(_loc2_.col2);
                                                   addr253:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr254:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
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
                                          }
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr132);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr114);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::8!Z;
         var _loc5_:b2Body = b2internal::4"0;
         var _loc6_:b2Vec2 = _loc4_.§="8§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc27_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§="8§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§["A§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§["A§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§"g§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§"g§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§47§.x);
         if(!_loc27_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc26_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§47§.y);
         if(_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(_loc26_)
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc14_);
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(§§pop() * §§pop());
                     while(true)
                     {
                        §§push(_loc2_.col2);
                        addr220:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr221:
                           while(true)
                           {
                              §§push(_loc15_);
                              addr222:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                     }
                     addr218:
                  }
                  loop6:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop7:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop8:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(_loc2_.col1);
                                 if(!_loc26_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().y);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc14_);
                                    if(_loc26_)
                                    {
                                       if(!_loc26_)
                                       {
                                          continue loop6;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc26_)
                                       {
                                          if(_loc27_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(_loc2_.col2);
                                          if(!_loc27_)
                                          {
                                             §§push(§§pop().y);
                                             if(!(_loc27_ && _loc2_))
                                             {
                                                §§push(_loc15_);
                                                if(!(_loc27_ && _loc3_))
                                                {
                                                   addr189:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc26_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop12:
                                                      while(!_loc27_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop13:
                                                         while(_loc26_ || _loc3_)
                                                         {
                                                            _loc15_ = §§pop();
                                                            do
                                                            {
                                                               if(_loc26_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc26_ || param1)
                                                                  {
                                                                     if(_loc27_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!_loc26_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc27_ && param1)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  if(_loc26_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop9;
                                                            }
                                                            while(_loc14_ = §§pop(), !(_loc26_ || _loc2_));
                                                            
                                                            while(false)
                                                            {
                                                               continue loop10;
                                                            }
                                                            _loc2_ = _loc5_.m_xf.R;
                                                            §§push(this.§#! §.x);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                               if(_loc26_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc16_:* = §§pop();
                                                            §§push(this.§#! §.y);
                                                            if(!(_loc27_ && _loc3_))
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                               if(!_loc27_)
                                                               {
                                                                  addr268:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc17_:* = §§pop();
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(_loc2_.col1);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc27_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc16_);
                                                                     if(_loc26_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(_loc2_.col2);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr394:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 addr395:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr396:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr393:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr398:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              addr399:
                                                                              while(true)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr397:
                                                                     }
                                                                     §§goto(addr394);
                                                                  }
                                                                  §§goto(addr409);
                                                                  §§push(_loc7_);
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr218);
                                                      addr192:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr221);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
