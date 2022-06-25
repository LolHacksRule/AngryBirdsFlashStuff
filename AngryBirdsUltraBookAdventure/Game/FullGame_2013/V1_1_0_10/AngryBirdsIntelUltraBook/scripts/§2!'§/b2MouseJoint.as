package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §+!K§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §1!,§:b2Vec2;
      
      private var §]!A§:b2Vec2;
      
      private var §&""§:b2Vec2;
      
      private var §"X§:b2Mat22;
      
      private var §&!w§:b2Vec2;
      
      private var §>!z§:Number;
      
      private var §=§:Number;
      
      private var §#!d§:Number;
      
      private var §[^§:Number;
      
      private var §4z§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc5_)
         {
            this.§+!K§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§1!,§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§]!A§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§&""§ = new b2Vec2();
                           addr134:
                           while(!_loc6_)
                           {
                              this.§"X§ = new b2Mat22();
                              while(_loc5_)
                              {
                                 this.§&!w§ = new b2Vec2();
                                 while(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       super(param1);
                                       loop8:
                                       while(_loc5_)
                                       {
                                          continue loop2;
                                          while(true)
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                continue loop0;
                                             }
                                             continue loop8;
                                          }
                                          §§push(§§pop().y);
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr186:
                                             §§push(§§pop() - b2internal::4!d.m_xf.position.y);
                                             if(_loc5_ || param1)
                                             {
                                                addr198:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc3_:* = §§pop();
                                             _loc4_ = b2internal::4!d.m_xf.R;
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(this.§1!,§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   addr357:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.col1.x);
                                                      addr360:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr361:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            addr362:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.col1.y);
                                                               addr365:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr366:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr367:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr198);
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]!A§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.§1!,§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§&""§.x);
            if(!(_loc2_ && param1))
            {
               §§goto(addr42);
            }
            §§goto(addr45);
         }
         addr42:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc2_)
         {
            addr45:
            §§push(§§pop() * this.§&""§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §0" §() : b2Vec2
      {
         return this.§]!A§;
      }
      
      public function §^!Z§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(b2internal::4!d.IsAwake() == false)
            {
               while(true)
               {
                  b2internal::4!d.SetAwake(true);
                  addr49:
                  while(true)
                  {
                  }
               }
               addr46:
            }
            while(true)
            {
               this.§]!A§ = param1;
               if(_loc3_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr46);
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §=!3§() : Number
      {
         return this.§>!z§;
      }
      
      public function §1!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!z§ = param1;
         }
      }
      
      public function §!K§() : Number
      {
         return this.§=§;
      }
      
      public function §3!D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=§ = param1;
         }
      }
      
      public function §?!Y§() : Number
      {
         return this.§#!d§;
      }
      
      public function §7!F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#!d§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::4!d;
         §§push(_loc2_.GetMass());
         if(_loc14_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc14_)
         {
            §§push(§§pop() * this.§=§);
            if(!(_loc13_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(!(_loc13_ && this))
         {
            §§push(this.§#!d§);
            if(!(_loc13_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc14_ || this)
               {
                  addr84:
                  §§push(§§pop() * _loc4_);
                  if(!(_loc13_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_);
               if(_loc14_ || this)
               {
                  §§push(_loc4_);
                  if(!(_loc13_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc13_ && _loc2_))
                     {
                        addr119:
                        §§push(§§pop() * _loc4_);
                        if(!_loc14_)
                        {
                        }
                        addr123:
                        var _loc6_:* = §§pop();
                        if(!_loc13_)
                        {
                           §§push(this);
                           §§push(param1.§?!C§);
                           if(!_loc13_)
                           {
                              §§push(_loc5_);
                              if(_loc14_)
                              {
                                 §§push(param1.§?!C§);
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§4z§ = §§pop();
                        }
                        loop0:
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this);
                              if(!_loc13_)
                              {
                                 §§push(this.§4z§);
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr172:
                                       §§push(1 / this.§4z§);
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc14_ || param1)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(!(_loc13_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                                 §§pop().§4z§ = §§pop();
                                 for(; _loc14_; §§pop().§[^§ = §§pop(),if(!(_loc13_ && _loc2_))
                                 {
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 })
                                 {
                                    §§push(this);
                                    §§push(param1.§?!C§);
                                    if(!_loc13_)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc13_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc13_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§4z§);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr172);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§1!,§.x);
                           if(!_loc13_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(this.§1!,§.y);
                           if(!_loc13_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           §§push(_loc7_.col1.x);
                           if(!(_loc13_ && this))
                           {
                              §§push(_loc8_);
                              if(!(_loc13_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc14_ || this)
                                 {
                                    addr287:
                                    §§push(_loc7_.col2.x);
                                    if(_loc14_)
                                    {
                                       addr292:
                                       §§push(§§pop() * _loc9_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc14_ || _loc2_)
                                    {
                                       addr302:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc10_:* = §§pop();
                                    if(_loc14_ || _loc2_)
                                    {
                                       §§push(_loc7_.col1);
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_)
                                                {
                                                   §§push(_loc7_.col2.y);
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      addr1099:
                                                      §§push(§§pop() * _loc9_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr1102:
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop9:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§3!q§);
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!(_loc14_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc11_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§2!1§);
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           if(_loc13_ && _loc2_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!(_loc14_ || param1))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        if(_loc13_ && _loc2_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(!_loc14_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc12_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.K1);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().col1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.K1);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().col2);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.K1);
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().col1);
                                                                                                      addr990:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr991:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            continue loop23;
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
                                                                     }
                                                                     §§goto(addr1102);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1099);
                                          }
                                          if(!(_loc14_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr900);
                                          §§push(_loc12_);
                                       }
                                    }
                                    §§goto(addr742);
                                 }
                                 §§goto(addr302);
                              }
                              §§goto(addr292);
                           }
                           §§goto(addr287);
                        }
                     }
                     §§goto(addr123);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr119);
            }
         }
         §§goto(addr84);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::4!d;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§1!,§.x);
         if(!_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc16_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§1!,§.y);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc16_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc16_ || param1)
         {
            §§push(_loc3_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc16_)
               {
                  §§push(_loc6_);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc16_)
                     {
                        §§push(_loc3_.col2);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc16_)
                           {
                              §§push(_loc7_);
                              if(_loc16_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop3:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop4:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc3_.col1);
                                                if(_loc15_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc16_ || _loc2_)
                                                {
                                                   §§push(_loc6_);
                                                   if(!(_loc16_ || this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc16_)
                                                      {
                                                         addr158:
                                                         §§push(Number(§§pop()));
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc15_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc16_)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc16_ || _loc3_)
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           _loc6_ = §§pop();
                                                                           if(_loc15_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 §§push(_loc2_.§%!<§.x);
                                                                                 if(!(_loc15_ && this))
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        break loop6;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop5;
                                                            }
                                                            addr219:
                                                            break loop0;
                                                         }
                                                         addr159:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr155:
                                                   }
                                                   continue loop1;
                                                   break;
                                                }
                                                §§goto(addr158);
                                             }
                                             §§push(_loc2_.m_angularVelocity);
                                             if(_loc16_)
                                             {
                                                addr201:
                                                §§push(-§§pop());
                                                if(_loc16_ || _loc3_)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                break loop2;
                                             }
                                             break loop2;
                                          }
                                       }
                                    }
                                    addr184:
                                 }
                                 break;
                              }
                              addr210:
                              §§push(§§pop() * §§pop());
                              break;
                           }
                           §§push(_loc3_.col2);
                           addr137:
                           break;
                           if(!(_loc15_ && _loc2_))
                           {
                              §§push(§§pop().y);
                              if(_loc16_)
                              {
                                 §§push(_loc7_);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc16_)
                                    {
                                       §§goto(addr155);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr210);
                              }
                              break;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc16_ || param1)
                        {
                           §§goto(addr219);
                        }
                        break loop0;
                     }
                     §§goto(addr184);
                  }
               }
               break;
            }
            var _loc8_:* = §§pop();
            §§push(_loc2_.§%!<§.y);
            if(_loc16_ || _loc3_)
            {
               §§push(_loc2_.m_angularVelocity);
               if(!_loc15_)
               {
                  §§push(§§pop() * _loc6_);
               }
               §§push(§§pop() + §§pop());
               if(_loc16_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            _loc3_ = this.§"X§;
            if(!_loc15_)
            {
               §§push(_loc8_);
               if(_loc16_ || _loc2_)
               {
                  §§push(this.§[^§);
                  if(!_loc15_)
                  {
                     §§push(this.§&!w§);
                     if(!_loc15_)
                     {
                        §§push(§§pop().x);
                        if(_loc16_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc16_ || _loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 §§push(this.§4z§);
                                 if(_loc16_ || this)
                                 {
                                    §§push(this.§&""§);
                                    if(!(_loc15_ && this))
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc16_)
                                             {
                                                addr315:
                                                §§push(Number(§§pop()));
                                                if(_loc16_ || _loc3_)
                                                {
                                                   addr323:
                                                   _loc4_ = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      addr326:
                                                      §§push(_loc9_);
                                                      if(_loc16_ || _loc3_)
                                                      {
                                                         §§push(this.§[^§);
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            addr345:
                                                            §§push(this.§&!w§.y);
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc16_)
                                                               {
                                                                  addr356:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc16_ || _loc3_)
                                                                  {
                                                                     §§push(this.§4z§);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr368:
                                                                        §§push(this.§&""§.y);
                                                                        if(!(_loc15_ && _loc3_))
                                                                        {
                                                                           addr378:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc16_)
                                                                           {
                                                                              addr381:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc15_ && _loc3_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc16_ || this)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    addr408:
                                                                                    §§push(_loc3_.col1.x);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr413:
                                                                                       §§push(_loc4_);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr416:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc16_ || this)
                                                                                          {
                                                                                             §§push(_loc3_.col2.x);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr429:
                                                                                                §§push(§§pop() * _loc5_);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr434:
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr434);
                                                                                       }
                                                                                       §§goto(addr429);
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc3_.col1.y);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(_loc3_.col2.y);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr457:
                                                                                                §§push(§§pop() + §§pop() * _loc5_);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!(_loc15_ && param1))
                                                                                                   {
                                                                                                      addr468:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr457);
                                                                                          }
                                                                                          var _loc11_:* = §§pop();
                                                                                          §§push(this.§&""§.x);
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc12_:* = §§pop();
                                                                                          §§push(this.§&""§.y);
                                                                                          if(_loc16_ || _loc3_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(this.§&""§);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(this.§&""§);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr536:
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               addr525:
                                                                                                               §§push(this.§&""§);
                                                                                                               §§push(this.§&""§.y);
                                                                                                               if(!(_loc15_ && param1))
                                                                                                               {
                                                                                                                  addr534:
                                                                                                                  §§push(§§pop() + _loc11_);
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(param1.§?!C§);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§>!z§);
                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc14_:* = §§pop();
                                                                                                            if(!(_loc15_ && param1))
                                                                                                            {
                                                                                                               §§push(this.§&""§);
                                                                                                               loop9:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§%!]§());
                                                                                                                  addr792:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(_loc16_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc14_);
                                                                                                                     }
                                                                                                                     addr802:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§&""§);
                                                                                                                              addr805:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!(_loc15_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / this.§&""§.§,!t§());
                                                                                                                                 }
                                                                                                                                 §§pop().§9""§(§§pop());
                                                                                                                                 addr818:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr803:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§&""§);
                                                                                                                           loop15:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              addr772:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 addr773:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    addr777:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                       addr778:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§&""§);
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(!(_loc15_ && this))
                                                                                                                                          {
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                          §§goto(addr805);
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr818);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         §§goto(addr536);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr534);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr525);
                                                                                          }
                                                                                          §§goto(addr536);
                                                                                       }
                                                                                       §§goto(addr457);
                                                                                    }
                                                                                    §§goto(addr468);
                                                                                 }
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                        }
                                                                        §§goto(addr429);
                                                                     }
                                                                  }
                                                                  §§goto(addr434);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr408);
                                                }
                                             }
                                             §§goto(addr434);
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr378);
                                    }
                                    §§goto(addr368);
                                 }
                                 §§goto(addr381);
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr429);
                        }
                        §§goto(addr378);
                     }
                     §§goto(addr345);
                  }
                  §§goto(addr429);
               }
               §§goto(addr315);
            }
            §§goto(addr326);
         }
         §§goto(addr104);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
