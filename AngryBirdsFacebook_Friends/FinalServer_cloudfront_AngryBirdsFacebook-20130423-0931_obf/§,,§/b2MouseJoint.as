package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var § "C§:b2Vec2;
      
      private var §]3§:b2Vec2;
      
      private var §2!_§:b2Vec2;
      
      private var §,!v§:b2Mat22;
      
      private var §4"J§:b2Vec2;
      
      private var §[%§:Number;
      
      private var §&j§:Number;
      
      private var §6!A§:Number;
      
      private var §#!K§:Number;
      
      private var §3'§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc6_ || _loc2_)
         {
            this.K = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(_loc6_)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§ "C§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§]3§ = new b2Vec2();
                        while(true)
                        {
                           this.§2!_§ = new b2Vec2();
                           while(true)
                           {
                              this.§,!v§ = new b2Mat22();
                              while(_loc6_)
                              {
                                 loop9:
                                 for(; _loc6_ || param1; while(true)
                                 {
                                    if(!(_loc6_ || param1))
                                    {
                                       continue loop9;
                                    }
                                    if(_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    addr119:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          super(param1);
                                          continue loop9;
                                       }
                                       continue loop1;
                                    }
                                 },continue loop3)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§]3§);
                                       addr80:
                                       while(true)
                                       {
                                          §§pop().SetV(param1.target);
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                           addr68:
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr77);
                           }
                           else
                           {
                              addr179:
                              §§push(this.§]3§.y);
                              if(!(_loc5_ && param1))
                              {
                                 addr187:
                                 §§push(§§pop() - b2internal::5!.m_xf.position.y);
                                 if(_loc6_)
                                 {
                                    addr194:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 _loc4_ = b2internal::5!.m_xf.R;
                                 if(_loc6_ || param1)
                                 {
                                    addr363:
                                    this.§ "C§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
                                    addr364:
                                    addr356:
                                    addr361:
                                    addr357:
                                    addr358:
                                    addr362:
                                    addr353:
                                    §§push(this.§ "C§);
                                    if(_loc6_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(_loc4_.col2.x);
                                             if(!_loc5_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc5_)
                                                            {
                                                               addr317:
                                                               §§push(_loc4_.col2.y);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  addr338:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr341:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        this.§[%§ = param1.§`"M§;
                                                                        this.§2!_§.§%y§();
                                                                        this.§&j§ = param1.§0c§;
                                                                        this.§6!A§ = param1.§6!i§;
                                                                        addr349:
                                                                        addr274:
                                                                        addr268:
                                                                        if(!_loc5_)
                                                                        {
                                                                           this.§#!K§ = 0;
                                                                           addr236:
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       this.§3'§ = 0;
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          if(_loc5_ && _loc3_)
                                                                                          {
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    §§goto(addr364);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        addr263:
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr338);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr358);
                                                }
                                                §§goto(addr362);
                                             }
                                             §§goto(addr317);
                                          }
                                          §§goto(addr353);
                                       }
                                       §§goto(addr341);
                                    }
                                    addr352:
                                    §§goto(addr352);
                                 }
                                 §§goto(addr349);
                              }
                              §§goto(addr194);
                           }
                        }
                     }
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     §§push(this.§]3§);
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop().x);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() - b2internal::5!.m_xf.position.x);
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc5_)
                                 {
                                    addr65:
                                    _loc2_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       §§goto(addr68);
                                    }
                                    §§goto(addr83);
                                 }
                                 §§goto(addr187);
                              }
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr179);
                  }
               }
            }
         }
         while(true)
         {
            this.§4"J§ = new b2Vec2();
            §§goto(addr119);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]3§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.§ "C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§2!_§.x);
            if(!_loc2_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(§§pop() * this.§2!_§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §7g§() : b2Vec2
      {
         return this.§]3§;
      }
      
      public function §0!l§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(b2internal::5!.IsAwake() == false)
            {
               while(true)
               {
                  b2internal::5!.SetAwake(true);
                  addr59:
                  while(true)
                  {
                  }
               }
               addr56:
            }
            while(true)
            {
               this.§]3§ = param1;
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr56);
            }
         }
      }
      
      public function §#!"§() : Number
      {
         return this.§[%§;
      }
      
      public function §=!x§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[%§ = param1;
         }
      }
      
      public function §-!o§() : Number
      {
         return this.§&j§;
      }
      
      public function § !x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&j§ = param1;
         }
      }
      
      public function §%g§() : Number
      {
         return this.§6!A§;
      }
      
      public function §^!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6!A§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::5!;
         §§push(_loc2_.GetMass());
         if(_loc13_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!(_loc14_ && this))
         {
            §§push(§§pop() * this.§&j§);
            if(!(_loc14_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(!_loc14_)
         {
            §§push(this.§6!A§);
            if(_loc13_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc14_)
               {
                  addr78:
                  §§push(§§pop() * _loc4_);
                  if(!_loc14_)
                  {
                     addr81:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(_loc13_)
                  {
                     §§push(_loc4_);
                     if(!_loc14_)
                     {
                        addr101:
                        §§push(§§pop() * §§pop());
                        if(_loc13_)
                        {
                           §§push(_loc4_);
                        }
                        var _loc6_:Number = §§pop();
                        if(_loc13_ || param1)
                        {
                           §§push(this);
                           §§push(param1.§;J§);
                           if(_loc13_ || this)
                           {
                              §§push(_loc5_);
                              if(!(_loc14_ && param1))
                              {
                                 §§push(param1.§;J§);
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§3'§ = §§pop();
                           loop0:
                           while(true)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this);
                                 if(!_loc14_)
                                 {
                                    §§push(this.§3'§);
                                    if(_loc13_)
                                    {
                                       if(§§pop() != 0)
                                       {
                                          addr141:
                                          §§push(1 / this.§3'§);
                                          if(!(_loc14_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc14_ && this)
                                             {
                                                addr164:
                                                §§push(Number(§§pop()));
                                             }
                                             else
                                             {
                                                addr160:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc13_)
                                          {
                                             §§goto(addr164);
                                          }
                                       }
                                       §§pop().§3'§ = §§pop();
                                       loop2:
                                       while(_loc13_)
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(param1.§;J§);
                                             if(_loc13_)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc14_)
                                                   {
                                                      addr125:
                                                      §§push(§§pop() * this.§3'§);
                                                   }
                                                   §§pop().§#!K§ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr125);
                                          }
                                          _loc7_ = _loc2_.m_xf.R;
                                          §§push(this.§ "C§.x);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.§ "C§.y);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(_loc13_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          §§push(_loc7_.col1.x);
                                          if(_loc13_)
                                          {
                                             §§push(_loc8_);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc14_)
                                                {
                                                   addr251:
                                                   §§push(_loc7_.col2.x);
                                                   if(!_loc14_)
                                                   {
                                                      addr256:
                                                      §§push(§§pop() * _loc9_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc10_:* = §§pop();
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   §§push(_loc7_.col1);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_.col2.y);
                                                               if(_loc13_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * _loc9_);
                                                                  }
                                                                  addr1078:
                                                               }
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
                                                                        _loc9_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(!(_loc14_ && this))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           addr1064:
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§-@§);
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(!_loc14_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.§,H§);
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             if(_loc14_ && _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   while(!_loc14_)
                                                                                                   {
                                                                                                      §§push(this.K1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().col1);
                                                                                                         addr994:
                                                                                                         addr979:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            addr995:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                         }
                                                                                                         while(!(_loc14_ && _loc3_))
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
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().col1);
                                                                                                                        addr973:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           addr974:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(!(_loc13_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr867);
                                                                                                      §§push(this.K2);
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1078);
                                                      }
                                                      if(!(_loc13_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.K.col1.x);
                                                      if(_loc13_ || this)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            if(_loc13_ || _loc2_)
                                                            {
                                                               §§push(this.§3'§);
                                                               if(_loc13_)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§goto(addr787);
                                                                  }
                                                                  §§goto(addr884);
                                                               }
                                                               §§goto(addr886);
                                                            }
                                                            §§goto(addr940);
                                                         }
                                                         §§goto(addr889);
                                                      }
                                                      §§goto(addr795);
                                                   }
                                                }
                                                §§goto(addr968);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr251);
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr141);
                              }
                           }
                        }
                        §§goto(addr168);
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc13_ || param1)
                     {
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr81);
            }
         }
         §§goto(addr78);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::5!;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§ "C§.x);
         if(_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc16_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§ "C§.y);
         if(!_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc15_)
         {
            §§push(_loc3_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc6_);
                  if(!(_loc16_ && _loc3_))
                  {
                     §§push(§§pop() * §§pop());
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_.col2);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop4:
                           while(true)
                           {
                              §§push(_loc7_);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc15_ || _loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc16_)
                                    {
                                       §§push(Number(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr180:
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc3_.col1);
                                                if(_loc16_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc15_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc15_)
                                                   {
                                                      if(!(_loc15_ || _loc3_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc3_.col2);
                                                         if(!_loc15_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc15_)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc16_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop10:
                                                                        while(!_loc16_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           while(_loc15_ || param1)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 addr208:
                                                                                 addr208:
                                                                                 var _loc8_:Number = §§pop();
                                                                                 addr208:
                                                                                 §§push(_loc2_.§"!_§.y);
                                                                                 if(!(_loc16_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc2_.m_angularVelocity);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc6_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc9_:* = §§pop();
                                                                                 _loc3_ = this.§,!v§;
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       §§push(this.§#!K§);
                                                                                       if(!(_loc16_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§4"J§);
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc15_ || this)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(this.§3'§);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr286:
                                                                                                         §§push(this.§2!_§);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc15_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc16_ && this))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        if(_loc15_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc15_ || param1)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr353:
                                                                                                                           §§push(this.§3'§);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              addr359:
                                                                                                                              §§push(this.§2!_§.y);
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 addr362:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr365:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       addr368:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          addr372:
                                                                                                                                          §§push(_loc3_.col1.x);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                addr390:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc15_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr398:
                                                                                                                                                   §§push(_loc3_.col2.x);
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr405:
                                                                                                                                                      §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         addr408:
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr416:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      var _loc10_:* = §§pop();
                                                                                                                                                      §§push(_loc3_.col1.y);
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.col2.y);
                                                                                                                                                               if(!(_loc16_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr444:
                                                                                                                                                                  §§push(§§pop() * _loc5_);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr453:
                                                                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                                                                  §§push(this.§2!_§.x);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc12_:* = §§pop();
                                                                                                                                                                  §§push(this.§2!_§.y);
                                                                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc13_:* = §§pop();
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§2!_§);
                                                                                                                                                                     if(!(_loc16_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§2!_§);
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    if(!(_loc16_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr509:
                                                                                                                                                                                       §§push(this.§2!_§);
                                                                                                                                                                                       §§push(this.§2!_§.y);
                                                                                                                                                                                       if(!(_loc16_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr519:
                                                                                                                                                                                          §§pop().y = §§pop() + _loc11_;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr519);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(param1.§;J§);
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§[%§);
                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc14_:* = §§pop();
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§2!_§);
                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr763:
                                                                                                                                                                                          addr764:
                                                                                                                                                                                          addr766:
                                                                                                                                                                                          if(§§pop().§03§() > _loc14_ * _loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr767:
                                                                                                                                                                                             addr769:
                                                                                                                                                                                             §§push(this.§2!_§);
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             if(!(_loc16_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() / this.§2!_§.§`"I§());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§!!L§(§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          addr712:
                                                                                                                                                                                          §§push(this.§2!_§);
                                                                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr720:
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                             if(_loc15_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr754:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc15_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                                                                      addr757:
                                                                                                                                                                                                      §§push(this.§2!_§);
                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr698:
                                                                                                                                                                                                                        _loc11_ = Number(§§pop());
                                                                                                                                                                                                                        addr699:
                                                                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr677:
                                                                                                                                                                                                                              addr676:
                                                                                                                                                                                                                              addr665:
                                                                                                                                                                                                                              addr664:
                                                                                                                                                                                                                              addr662:
                                                                                                                                                                                                                              §§push(_loc2_.§"!_§);
                                                                                                                                                                                                                              §§push(_loc2_.§"!_§.x);
                                                                                                                                                                                                                              §§push(_loc2_.§-@§);
                                                                                                                                                                                                                              if(!(_loc16_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr675:
                                                                                                                                                                                                                                 §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                              addr678:
                                                                                                                                                                                                                              §§push(_loc2_.§"!_§);
                                                                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc2_.§"!_§);
                                                                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                    if(_loc15_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc2_.§-@§);
                                                                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr633:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc16_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      addr642:
                                                                                                                                                                                                                                                      if(_loc15_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc16_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc15_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                                                                                                                               §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                               if(_loc15_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc2_.§,H§);
                                                                                                                                                                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                                                                        if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr584);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr580);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr577);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr584:
                                                                                                                                                                                                                                                                  §§goto(addr585);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr585:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr577:
                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr580:
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                               if(_loc16_ && this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr642);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               return;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr757);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr699);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr678);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr677);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr675);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr676);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr633);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr665);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr633);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr662);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr767);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr720);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr754);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr698);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr720);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr698);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr712);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr763);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr764);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr766);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr769);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr677);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr519);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr509);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr453);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr444);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr453);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr405);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr405);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr408);
                                                                                                                                    }
                                                                                                                                    §§goto(addr398);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr405);
                                                                                                                           }
                                                                                                                           §§goto(addr390);
                                                                                                                        }
                                                                                                                        §§goto(addr372);
                                                                                                                     }
                                                                                                                     §§push(this.§#!K§);
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        addr344:
                                                                                                                        §§push(this.§4"J§.y);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 §§goto(addr353);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr405);
                                                                                                                     }
                                                                                                                     §§goto(addr365);
                                                                                                                  }
                                                                                                                  §§goto(addr368);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr405);
                                                                                                         }
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      §§goto(addr405);
                                                                                                   }
                                                                                                   §§goto(addr353);
                                                                                                }
                                                                                                §§goto(addr286);
                                                                                             }
                                                                                             §§goto(addr362);
                                                                                          }
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr416);
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              §§goto(addr208);
                                                                              _loc6_ = §§pop();
                                                                              if(!(_loc15_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(_loc2_.§"!_§.x);
                                                                              if(!(_loc16_ && _loc3_))
                                                                              {
                                                                                 addr191:
                                                                                 §§push(_loc2_.m_angularVelocity);
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    break loop1;
                                                                                 }
                                                                                 addr205:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc16_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr137:
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            addr204:
                                                            §§goto(addr205);
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr137);
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 break;
                              }
                              addr203:
                              §§goto(addr204);
                           }
                        }
                     }
                  }
                  break;
               }
               §§push(-§§pop());
               if(_loc15_)
               {
                  §§goto(addr203);
               }
               §§goto(addr191);
            }
         }
         §§goto(addr180);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
