package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-2d§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-d2§:b2Vec2;
      
      private var §_-§:b2Vec2;
      
      private var §_-MK§:b2Vec2;
      
      private var §_-5W§:b2Mat22;
      
      private var §_-vD§:b2Vec2;
      
      private var §_-RK§:Number;
      
      private var §_-FO§:Number;
      
      private var §_-x6§:Number;
      
      private var §_-jU§:Number;
      
      private var §_-v-§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         if(!_loc5_)
         {
            this.§_-2d§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
            }
            addr176:
         }
         loop1:
         while(true)
         {
            this.K2 = new b2Mat22();
            loop2:
            while(true)
            {
               this.§_-d2§ = new b2Vec2();
               loop3:
               while(true)
               {
                  this.§_-§ = new b2Vec2();
                  loop4:
                  while(true)
                  {
                     this.§_-MK§ = new b2Vec2();
                     loop5:
                     while(true)
                     {
                        this.§_-5W§ = new b2Mat22();
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 this.§_-vD§ = new b2Vec2();
                                 loop7:
                                 while(!_loc5_)
                                 {
                                    continue loop3;
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                             addr70:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§_-§);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§pop().SetV(param1.target);
                                                continue loop8;
                                             }
                                             addr179:
                                             addr195:
                                             §§push(§§pop().y);
                                             if(!_loc5_)
                                             {
                                                addr182:
                                                §§push(§§pop() - b2internal::_-c9.m_xf.position.y);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc3_:* = §§pop();
                                             _loc4_ = b2internal::_-c9.m_xf.R;
                                             if(_loc6_)
                                             {
                                                addr353:
                                                this.§_-d2§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
                                                addr354:
                                                addr346:
                                                addr351:
                                                addr347:
                                                addr348:
                                                addr352:
                                                addr343:
                                                §§push(this.§_-d2§);
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc4_.col2.x);
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(_loc4_.col2.y);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              addr331:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr334:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    addr337:
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       this.§_-RK§ = param1.§_-oX§;
                                                                                       this.§_-MK§.§_-el§();
                                                                                       this.§_-FO§ = param1.§true §;
                                                                                       this.§_-x6§ = param1.§_-9r§;
                                                                                       addr251:
                                                                                       addr256:
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             this.§_-jU§ = 0;
                                                                                             addr228:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                this.§_-v-§ = 0;
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr251);
                                                                                                      }
                                                                                                      return;
                                                                                                      addr223:
                                                                                                   }
                                                                                                   §§goto(addr251);
                                                                                                }
                                                                                                §§goto(addr228);
                                                                                             }
                                                                                             §§goto(addr256);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       addr262:
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            §§goto(addr352);
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   §§goto(addr334);
                                                }
                                                addr342:
                                                §§goto(addr342);
                                             }
                                             §§goto(addr223);
                                             continue loop4;
                                          }
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop5;
                        }
                        §§goto(addr176);
                     }
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.§_-d2§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && this))
         {
            §§push(this.§_-MK§.x);
            if(!(_loc2_ && _loc2_))
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(§§pop() * this.§_-MK§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-0AF§() : b2Vec2
      {
         return this.§_-§;
      }
      
      public function §_-6F§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(b2internal::_-c9.IsAwake() == false)
            {
               if(_loc2_)
               {
                  b2internal::_-c9.SetAwake(true);
                  addr54:
                  while(true)
                  {
                  }
                  addr54:
               }
               §§goto(addr54);
            }
            while(true)
            {
               this.§_-§ = param1;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §_-vZ§() : Number
      {
         return this.§_-RK§;
      }
      
      public function §_-EZ§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-RK§ = param1;
         }
      }
      
      public function §_-Am§() : Number
      {
         return this.§_-FO§;
      }
      
      public function §_-9W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-FO§ = param1;
         }
      }
      
      public function §_-U8§() : Number
      {
         return this.§_-x6§;
      }
      
      public function §_-6H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-x6§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::_-c9;
         §§push(_loc2_.GetMass());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc13_)
         {
            §§push(§§pop() * this.§_-FO§);
            if(!(_loc14_ && _loc3_))
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(!(_loc14_ && _loc3_))
            {
               §§push(this.§_-x6§);
               if(_loc13_ || _loc3_)
               {
                  addr87:
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && _loc3_))
                  {
                     §§push(_loc4_);
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(_loc13_ || this)
                  {
                     §§push(_loc4_);
                     if(_loc13_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc14_ && _loc2_))
                        {
                           addr108:
                           addr107:
                           §§push(§§pop() * _loc4_);
                           if(_loc13_ || _loc3_)
                           {
                              addr116:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(_loc13_ || _loc2_)
                           {
                              §§push(this);
                              §§push(param1.§_-pn§);
                              if(!_loc14_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(param1.§_-pn§);
                                    if(_loc13_ || this)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().§_-v-§ = §§pop();
                              loop0:
                              while(true)
                              {
                                 addr168:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc13_)
                                    {
                                       §§push(this.§_-v-§);
                                       if(!_loc14_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr178:
                                             §§push(1 / this.§_-v-§);
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc13_)
                                                {
                                                   addr187:
                                                }
                                             }
                                             §§goto(addr187);
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§pop().§_-v-§ = §§pop();
                                          do
                                          {
                                             §§push(this);
                                             §§push(param1.§_-pn§);
                                             if(_loc13_ || _loc2_)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc13_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(this.§_-v-§);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          while(§§pop().§_-jU§ = §§pop(), !(_loc13_ || param1));
                                          
                                          continue loop0;
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                           }
                           while(false)
                           {
                              §§goto(addr168);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§_-d2§.x);
                           if(_loc13_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(this.§_-d2§.y);
                           if(!(_loc14_ && _loc3_))
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                              if(!_loc14_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           §§push(_loc7_.col1.x);
                           if(!_loc14_)
                           {
                              §§push(_loc8_);
                              if(_loc13_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc13_)
                                 {
                                    addr276:
                                    §§push(_loc7_.col2.x);
                                    if(!_loc14_)
                                    {
                                       addr283:
                                       §§push(§§pop() + §§pop() * _loc9_);
                                       if(!_loc14_)
                                       {
                                          addr286:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          §§push(_loc7_.col1);
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(_loc13_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc13_)
                                                   {
                                                      §§push(_loc7_.col2.y);
                                                      if(_loc13_ || _loc2_)
                                                      {
                                                         addr1068:
                                                         §§push(§§pop() * _loc9_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc9_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§_-03A§);
                                                                     if(!(_loc14_ && _loc2_))
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(!_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     loop12:
                                                                     for(; _loc13_ || this; if(!(_loc13_ || this))
                                                                     {
                                                                        continue;
                                                                     },§§goto(addr999),§§push(Number(§§pop())))
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§_-Dz§);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr999:
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
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.K1);
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().col1);
                                                                                                            addr967:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr968:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr969:
                                                                                                                  while(!_loc14_)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  continue loop22;
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
                                                                           continue;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr1068);
                                             }
                                          }
                                       }
                                       §§goto(addr649);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr276);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr107);
               }
               §§push(§§pop() * §§pop());
               if(!(_loc14_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr87);
         }
         §§goto(addr48);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::_-c9;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§_-d2§.x);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§_-d2§.y);
         if(_loc16_ || _loc2_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc16_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(!_loc15_)
         {
            §§push(_loc3_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc16_)
               {
                  §§push(_loc6_);
                  if(!(_loc15_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     loop1:
                     while(true)
                     {
                        §§push(_loc3_.col2);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(!(_loc15_ && this))
                           {
                              §§push(_loc7_);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr179:
                                    loop4:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop5:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr181:
                                          while(true)
                                          {
                                             addr101:
                                             while(true)
                                             {
                                                §§push(_loc3_.col1);
                                                if(!_loc16_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc16_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         addr115:
                                                         if(!(_loc16_ || _loc2_))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(_loc3_.col2);
                                                         if(!_loc16_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(_loc16_)
                                                         {
                                                            addr129:
                                                            §§push(_loc7_);
                                                            if(_loc16_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc16_)
                                                               {
                                                                  addr204:
                                                                  §§push(_loc7_);
                                                                  break loop2;
                                                               }
                                                            }
                                                            break loop2;
                                                         }
                                                         if(!_loc16_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc15_)
                                                         {
                                                            addr145:
                                                            if(!_loc16_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            loop8:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               addr149:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         var _loc8_:Number = §§pop();
                                                         §§push(_loc2_.§_-kZ§.y);
                                                         if(_loc16_ || param1)
                                                         {
                                                            §§push(_loc2_.m_angularVelocity);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc16_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         _loc3_ = this.§_-5W§;
                                                         if(!_loc15_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(this.§_-jU§);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  §§push(this.§_-vD§);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(this.§_-v-§);
                                                                              if(!(_loc15_ && _loc3_))
                                                                              {
                                                                                 addr292:
                                                                                 §§push(this.§_-MK§);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc16_ || this)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc16_ || _loc3_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                if(!(_loc15_ && _loc2_))
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(!(_loc15_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§_-jU§);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr338:
                                                                                                         addr340:
                                                                                                         §§push(this.§_-vD§.y);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr343:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr346:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr381:
                                                                                                                  §§push(this.§_-v-§);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr353:
                                                                                                                     addr355:
                                                                                                                     §§push(this.§_-MK§.y);
                                                                                                                     if(_loc15_ && _loc3_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr405:
                                                                                                                     addr406:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(!(_loc15_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr414:
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr418:
                                                                                                                        var _loc10_:* = §§pop();
                                                                                                                        §§push(_loc3_.col1.y);
                                                                                                                        if(!(_loc15_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc15_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.col2.y);
                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                 {
                                                                                                                                    addr457:
                                                                                                                                    §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       addr460:
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                       {
                                                                                                                                          addr468:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc11_:* = §§pop();
                                                                                                                                    §§push(this.§_-MK§.x);
                                                                                                                                    if(!(_loc15_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                    §§push(this.§_-MK§.y);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-MK§);
                                                                                                                                       if(_loc16_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-MK§);
                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                if(_loc16_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc16_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      addr551:
                                                                                                                                                      if(_loc16_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr540:
                                                                                                                                                         §§push(this.§_-MK§);
                                                                                                                                                         §§push(this.§_-MK§.y);
                                                                                                                                                         if(!(_loc15_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr549:
                                                                                                                                                            §§push(§§pop() + _loc11_);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§push(param1.§_-pn§);
                                                                                                                                                      if(!(_loc15_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * this.§_-RK§);
                                                                                                                                                         if(_loc16_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr570:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         var _loc14_:* = §§pop();
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-MK§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§_-wN§());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc14_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§_-MK§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / this.§_-MK§.§_-YT§());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§_-mx§(§§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop22:
                                                                                                                                                                                    while(!(_loc15_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc2_.§_-kZ§);
                                                                                                                                                                                          loop24:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_.§_-kZ§);
                                                                                                                                                                                             addr668:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                addr669:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc2_.§_-03A§);
                                                                                                                                                                                                   if(_loc16_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr679:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr680:
                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      addr681:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         addr682:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop24;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop28;
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
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr750);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(_loc15_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr760);
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr746);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr570);
                                                                                                                                                   }
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   §§goto(addr551);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr549);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr540);
                                                                                                                                    }
                                                                                                                                    §§goto(addr551);
                                                                                                                                 }
                                                                                                                                 §§goto(addr457);
                                                                                                                              }
                                                                                                                              §§goto(addr460);
                                                                                                                           }
                                                                                                                           §§goto(addr457);
                                                                                                                        }
                                                                                                                        §§goto(addr468);
                                                                                                                     }
                                                                                                                     §§goto(addr418);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc15_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc3_.col2.x);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        addr404:
                                                                                                                        §§goto(addr405);
                                                                                                                        §§push(_loc5_);
                                                                                                                     }
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                                  §§goto(addr414);
                                                                                                               }
                                                                                                               addr369:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr372:
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  §§push(_loc3_.col1.x);
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr414);
                                                                                                               }
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§goto(addr381);
                                                                                                               }
                                                                                                               §§goto(addr404);
                                                                                                            }
                                                                                                            §§goto(addr353);
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§goto(addr369);
                                                                                                            }
                                                                                                            §§goto(addr372);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr381);
                                                                                                   }
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr414);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr340);
                                                               }
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr129);
                                                }
                                                §§goto(addr115);
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr178:
                              }
                              break;
                           }
                           §§goto(addr178);
                        }
                        addr206:
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!(_loc15_ && _loc2_))
                        {
                           §§goto(addr214);
                        }
                        §§goto(addr215);
                     }
                  }
                  break;
               }
               §§goto(addr179);
            }
            §§push(-§§pop());
            if(!(_loc15_ && this))
            {
               §§goto(addr204);
            }
            §§goto(addr206);
         }
         §§goto(addr149);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
