package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §@V§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §'!3§:b2Vec2;
      
      private var §1U§:b2Vec2;
      
      private var §?;§:b2Vec2;
      
      private var §@e§:b2Mat22;
      
      private var §+"1§:b2Vec2;
      
      private var §@!c§:Number;
      
      private var §,!9§:Number;
      
      private var §?!H§:Number;
      
      private var §3!T§:Number;
      
      private var §<l§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc5_)
         {
            this.§@V§ = new b2Mat22();
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
                     this.§'!3§ = new b2Vec2();
                     while(true)
                     {
                        this.§1U§ = new b2Vec2();
                        continue loop1;
                        addr88:
                        if(_loc6_ && _loc2_)
                        {
                           continue;
                        }
                        loop10:
                        while(true)
                        {
                           §§push(this.§1U§);
                           loop11:
                           while(true)
                           {
                              §§pop().SetV(param1.target);
                              while(true)
                              {
                                 §§push(this.§1U§);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 if(!(_loc5_ || this))
                                 {
                                    continue loop11;
                                 }
                                 §§push(§§pop().x);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() - b2internal:: `.m_xf.position.x);
                                    if(!_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc5_)
                                          {
                                             addr57:
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop10;
                                                }
                                                continue loop0;
                                             }
                                             addr116:
                                             addr86:
                                             addr116:
                                             while(!_loc6_)
                                             {
                                                §§goto(addr88);
                                                §§goto(addr57);
                                             }
                                             while(!_loc6_)
                                             {
                                                continue loop2;
                                             }
                                             while(_loc5_ || this)
                                             {
                                                this.§+"1§ = new b2Vec2();
                                                §§goto(addr101);
                                             }
                                             addr101:
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                    }
                                    addr171:
                                    §§push(§§pop() - b2internal:: `.m_xf.position.y);
                                    if(!(_loc6_ && this))
                                    {
                                       addr193:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    _loc4_ = b2internal:: `.m_xf.R;
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr367:
                                       this.§'!3§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
                                       addr368:
                                       addr347:
                                       addr361:
                                       addr362:
                                       addr365:
                                       addr360:
                                       addr366:
                                       §§push(this.§'!3§);
                                       if(_loc5_)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc6_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§push(_loc4_.col2.x);
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc6_ && this))
                                                         {
                                                            addr311:
                                                            §§push(_loc3_);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(_loc4_.col2.y);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr330:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     addr338:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           this.§@!c§ = param1.§0!`§;
                                                                           this.§?;§.§@!s§();
                                                                           addr263:
                                                                           addr273:
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 this.§,!9§ = param1.§2!5§;
                                                                                 addr251:
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    this.§?!H§ = param1.§9!J§;
                                                                                    addr238:
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       this.§3!T§ = 0;
                                                                                       addr230:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          this.§<l§ = 0;
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc5_ || param1))
                                                                                             {
                                                                                                §§goto(addr238);
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr230);
                                                                                       }
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                    §§goto(addr251);
                                                                                    addr258:
                                                                                 }
                                                                                 §§goto(addr273);
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           addr343:
                                                                           §§goto(addr343);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr361);
                                                                  }
                                                                  §§goto(addr362);
                                                               }
                                                               §§goto(addr365);
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr366);
                                                }
                                                §§goto(addr330);
                                             }
                                             §§goto(addr367);
                                          }
                                          §§goto(addr311);
                                       }
                                       addr346:
                                       §§goto(addr346);
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr193);
                              }
                              addr168:
                              §§push(§§pop().y);
                              if(_loc6_)
                              {
                              }
                              §§goto(addr171);
                           }
                        }
                        while(true)
                        {
                           this.§@e§ = new b2Mat22();
                           §§goto(addr116);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§?;§ = new b2Vec2();
            §§goto(addr129);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§1U§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.§'!3§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§?;§.x);
            if(!(_loc2_ && this))
            {
               addr42:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * this.§?;§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §1"7§() : b2Vec2
      {
         return this.§1U§;
      }
      
      public function §`v§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(b2internal:: `.IsAwake() == false)
            {
               while(true)
               {
                  b2internal:: `.SetAwake(true);
                  addr65:
                  while(true)
                  {
                  }
               }
               addr62:
            }
            while(true)
            {
               this.§1U§ = param1;
               if(_loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §;"7§() : Number
      {
         return this.§@!c§;
      }
      
      public function §+a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§@!c§ = param1;
         }
      }
      
      public function §=Y§() : Number
      {
         return this.§,!9§;
      }
      
      public function §1"#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,!9§ = param1;
         }
      }
      
      public function §-t§() : Number
      {
         return this.§?!H§;
      }
      
      public function §;;§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!H§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal:: `;
         §§push(_loc2_.GetMass());
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!_loc14_)
         {
            §§push(§§pop() * this.§,!9§);
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(_loc13_)
         {
            §§push(this.§?!H§);
            if(_loc13_)
            {
               §§push(§§pop() * §§pop());
               if(_loc13_)
               {
                  addr58:
                  §§push(§§pop() * _loc4_);
                  if(!(_loc14_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_);
               if(_loc13_)
               {
                  §§push(_loc4_);
                  if(_loc13_)
                  {
                     addr92:
                     §§push(§§pop() * §§pop());
                     if(!(_loc14_ && param1))
                     {
                        §§push(_loc4_);
                     }
                     var _loc6_:* = §§pop();
                     if(_loc13_)
                     {
                        §§push(this);
                        §§push(param1.§+z§);
                        if(!(_loc14_ && _loc3_))
                        {
                           §§push(_loc5_);
                           if(!_loc14_)
                           {
                              §§push(param1.§+z§);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§pop().§<l§ = §§pop();
                        loop0:
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this);
                              if(!_loc14_)
                              {
                                 §§push(this.§<l§);
                                 if(!_loc14_)
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr136:
                                       §§push(1 / this.§<l§);
                                       if(!_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc14_ && _loc3_)
                                          {
                                             addr155:
                                             §§pop().§<l§ = Number(§§pop());
                                             addr154:
                                             do
                                             {
                                                if(!_loc13_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(this);
                                                §§push(param1.§+z§);
                                                if(_loc13_ || _loc3_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc13_ || param1)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         continue;
                                                      }
                                                      addr118:
                                                      §§push(this.§<l§);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   continue;
                                                }
                                                §§goto(addr118);
                                             }
                                             while(§§pop().§3!T§ = §§pop(), _loc14_);
                                             
                                             while(false)
                                             {
                                                continue loop1;
                                             }
                                             _loc7_ = _loc2_.m_xf.R;
                                             §§push(this.§'!3§.x);
                                             if(!(_loc14_ && this))
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(_loc13_)
                                                {
                                                   addr209:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(this.§'!3§.y);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                   if(_loc13_ || param1)
                                                   {
                                                      addr228:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   §§push(_loc7_.col1.x);
                                                   if(_loc13_ || param1)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc13_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc13_ || param1)
                                                         {
                                                            addr256:
                                                            §§push(_loc7_.col2.x);
                                                            if(_loc13_ || this)
                                                            {
                                                               addr266:
                                                               §§push(§§pop() * _loc9_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               addr276:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            if(!_loc14_)
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
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_.col2.y);
                                                                           if(!(_loc14_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * _loc9_);
                                                                              }
                                                                              addr1123:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§;k§);
                                                                                                while(_loc13_)
                                                                                                {
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                   addr1058:
                                                                                                   if(!(_loc13_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc13_ || this))
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   _loc12_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.K1);
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().col1);
                                                                                                         addr1038:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            addr1039:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               addr1040:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.K1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().col2);
                                                                                                                     addr1031:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        addr1032:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           addr1033:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.K1);
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().col1);
                                                                                                                                 addr1024:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    addr1025:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         §§goto(addr943);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc14_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr1058);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr1123);
                                                                  }
                                                                  if(_loc14_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc12_);
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     §§goto(addr911);
                                                                     §§push(-§§pop());
                                                                  }
                                                                  §§goto(addr933);
                                                               }
                                                            }
                                                            §§goto(addr642);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr209);
                                             addr124:
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc13_)
                                       {
                                          §§goto(addr154);
                                       }
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr136);
                           }
                        }
                     }
                     §§goto(addr124);
                  }
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr92);
            }
         }
         §§goto(addr58);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal:: `;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§'!3§.x);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc15_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§'!3§.y);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc16_ || param1)
            {
               addr68:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc15_ && _loc2_))
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc16_ || _loc3_)
                  {
                     §§push(_loc6_);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc15_ && param1))
                        {
                           §§push(_loc3_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc15_)
                              {
                                 §§push(_loc7_);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr167:
                                    if(_loc15_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc15_ && _loc2_))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc15_)
                                       {
                                          addr185:
                                          §§push(Number(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             _loc7_ = §§pop();
                                             while(true)
                                             {
                                                if(_loc16_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc15_ && _loc2_))
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc16_ || this)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(_loc2_.§,b§.x);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr227:
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr231:
                                                                        §§push(-§§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr234:
                                                                           §§push(§§pop() * _loc7_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc16_ || param1)
                                                                        {
                                                                           addr244:
                                                                           §§push(Number(§§pop()));
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                               }
                                                               continue loop0;
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   break;
                                                }
                                                addr221:
                                                while(true)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(_loc2_.§,b§.y);
                                             if(_loc16_ || _loc3_)
                                             {
                                                §§push(_loc2_.m_angularVelocity);
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc16_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             _loc3_ = this.§@e§;
                                             if(!(_loc15_ && param1))
                                             {
                                                §§push(_loc8_);
                                                if(!_loc15_)
                                                {
                                                   §§push(this.§3!T§);
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§push(this.§+"1§);
                                                      if(_loc16_ || this)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc16_ || param1)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(this.§<l§);
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     §§push(this.§?;§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc16_)
                                                                           {
                                                                              addr342:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc15_ && _loc2_))
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    if(!(_loc15_ && param1))
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          addr369:
                                                                                          §§push(this.§3!T§);
                                                                                          if(!(_loc15_ && _loc3_))
                                                                                          {
                                                                                             addr380:
                                                                                             §§push(this.§+"1§.y);
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc15_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr399:
                                                                                                      §§push(this.§<l§);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr403:
                                                                                                         §§push(this.§?;§.y);
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            addr413:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr429:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     addr437:
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     addr438:
                                                                                                                     §§push(_loc3_.col1.x);
                                                                                                                     if(!(_loc15_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr448:
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(!(_loc15_ && param1))
                                                                                                                        {
                                                                                                                           addr456:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              addr459:
                                                                                                                              §§push(_loc3_.col2.x);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr466:
                                                                                                                                 §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    addr469:
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr473:
                                                                                                                                    var _loc10_:* = §§pop();
                                                                                                                                    §§push(_loc3_.col1.y);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(!(_loc15_ && this))
                                                                                                                                       {
                                                                                                                                          addr504:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.col2.y);
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc5_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc11_:* = §§pop();
                                                                                                                                          §§push(this.§?;§.x);
                                                                                                                                          if(_loc16_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc12_:* = §§pop();
                                                                                                                                          §§push(this.§?;§.y);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc13_:* = §§pop();
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§?;§);
                                                                                                                                             if(_loc16_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§?;§);
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(_loc16_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc16_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr571:
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               addr565:
                                                                                                                                                               §§push(this.§?;§);
                                                                                                                                                               §§push(this.§?;§.y);
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr569:
                                                                                                                                                                  §§push(§§pop() + _loc11_);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§push(param1.§+z§);
                                                                                                                                                            if(_loc16_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§@!c§);
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            var _loc14_:* = §§pop();
                                                                                                                                                            if(_loc16_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr825:
                                                                                                                                                               addr815:
                                                                                                                                                               addr814:
                                                                                                                                                               §§push(this.§?;§.§%"§());
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(!(_loc15_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc14_);
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     addr830:
                                                                                                                                                                     §§push(this.§?;§);
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(!(_loc15_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / this.§?;§.§`g§());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§>!t§(§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  addr853:
                                                                                                                                                               }
                                                                                                                                                               addr810:
                                                                                                                                                               addr801:
                                                                                                                                                               addr800:
                                                                                                                                                               addr799:
                                                                                                                                                               §§push(this.§?;§.x - _loc12_);
                                                                                                                                                               if(_loc16_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               _loc10_ = §§pop();
                                                                                                                                                               addr811:
                                                                                                                                                               §§push(this.§?;§);
                                                                                                                                                               if(_loc16_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(_loc16_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc15_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc16_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr791:
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr794:
                                                                                                                                                                                             _loc11_ = Number(§§pop());
                                                                                                                                                                                             addr728:
                                                                                                                                                                                             addr740:
                                                                                                                                                                                             addr739:
                                                                                                                                                                                             addr727:
                                                                                                                                                                                             addr725:
                                                                                                                                                                                             §§push(_loc2_.§,b§);
                                                                                                                                                                                             §§push(_loc2_.§,b§.x);
                                                                                                                                                                                             §§push(_loc2_.§;k§);
                                                                                                                                                                                             if(!(_loc15_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr738:
                                                                                                                                                                                                §§push(§§pop() * _loc10_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                             addr795:
                                                                                                                                                                                             addr741:
                                                                                                                                                                                             §§push(_loc2_.§,b§);
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_.§,b§);
                                                                                                                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(!(_loc15_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_.§;k§);
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         if(_loc16_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr689:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr697:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc16_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     addr712:
                                                                                                                                                                                                                     if(_loc16_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                                                                           §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc2_.§6x§);
                                                                                                                                                                                                                              if(_loc16_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    if(!(_loc15_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr634:
                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr631:
                                                                                                                                                                                                                                             §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc16_ || _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr853);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                addr653:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr795);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr712);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr634);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr631);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr634);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr811);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr728);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr740);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr739);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr738);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr689);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr697);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr727);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr725);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr810);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr794);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr825);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr801);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr815);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr800);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr791);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr814);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr830);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr799);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr653);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         §§goto(addr571);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr569);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr565);
                                                                                                                                          }
                                                                                                                                          §§goto(addr571);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr504);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr466);
                                                                                                                           }
                                                                                                                           §§goto(addr473);
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr466);
                                                                                                                     }
                                                                                                                     §§goto(addr473);
                                                                                                                  }
                                                                                                                  §§goto(addr469);
                                                                                                               }
                                                                                                               §§goto(addr459);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr466);
                                                                                                      }
                                                                                                      §§goto(addr456);
                                                                                                   }
                                                                                                   §§goto(addr469);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr466);
                                                                                       }
                                                                                       §§goto(addr399);
                                                                                    }
                                                                                    §§goto(addr438);
                                                                                 }
                                                                                 §§goto(addr448);
                                                                              }
                                                                              §§goto(addr429);
                                                                           }
                                                                           §§goto(addr403);
                                                                        }
                                                                        §§goto(addr466);
                                                                     }
                                                                     §§goto(addr403);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr437);
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr466);
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr437);
                                          }
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr231);
                                 }
                              }
                              addr216:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              addr138:
                              §§goto(addr227);
                              §§push(_loc3_.col2);
                              if(!(_loc16_ || this))
                              {
                                 continue;
                              }
                              §§push(§§pop().y);
                              if(_loc16_ || this)
                              {
                                 addr155:
                                 if(!_loc15_)
                                 {
                                    if(_loc15_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(_loc7_);
                                    if(_loc16_ || this)
                                    {
                                       §§goto(addr167);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr234);
                           }
                        }
                     }
                  }
                  addr220:
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
               }
            }
            §§goto(addr221);
         }
         §§goto(addr68);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
