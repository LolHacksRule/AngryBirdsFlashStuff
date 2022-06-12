package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §+!n§:b2Vec2;
      
      private var §8!V§:b2Vec2;
      
      private var §0!y§:b2Vec2;
      
      private var §+J§:b2Mat22;
      
      private var §"9§:b2Vec2;
      
      private var §6!_§:Number;
      
      private var §7"E§:Number;
      
      private var §,c§:Number;
      
      private var §!c§:Number;
      
      private var §[E§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc5_)
         {
            this.K = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(!_loc6_)
                  {
                     this.§+!n§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§8!V§ = new b2Vec2();
                        while(true)
                        {
                           this.§0!y§ = new b2Vec2();
                           addr88:
                           if(_loc6_ && this)
                           {
                              continue;
                           }
                           if(false)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.§8!V§);
                                 loop10:
                                 while(true)
                                 {
                                    §§pop().SetV(param1.target);
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(this.§8!V§);
                                          if(!(_loc6_ && param1))
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop10;
                                             }
                                             §§push(§§pop().x);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§push(§§pop() - b2internal::4"0.m_xf.position.x);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!(_loc6_ && this))
                                                      {
                                                         addr72:
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr81:
                                                               if(_loc6_ && param1)
                                                               {
                                                                  break loop9;
                                                               }
                                                               §§goto(addr88);
                                                            }
                                                            while(_loc5_)
                                                            {
                                                               super(param1);
                                                            }
                                                            continue loop3;
                                                            addr125:
                                                         }
                                                         while(_loc5_)
                                                         {
                                                            continue loop0;
                                                            §§goto(addr72);
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue;
                                                   }
                                                }
                                             }
                                             var _loc3_:Number = §§pop();
                                             _loc4_ = b2internal::4"0.m_xf.R;
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                addr353:
                                                addr362:
                                                addr350:
                                                addr349:
                                                §§push(this.§+!n§);
                                                §§push(_loc2_ * _loc4_.col1.x);
                                                if(!_loc6_)
                                                {
                                                   addr357:
                                                   §§push(§§pop() + _loc3_ * _loc4_.col1.y);
                                                }
                                                §§pop().x = §§pop();
                                                addr363:
                                                §§push(this.§+!n§);
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc4_.col2.x);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               addr312:
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc4_.col2.y);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr335:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr345:
                                                                                 §§pop().y = §§pop() + §§pop();
                                                                                 this.§6!_§ = param1.§"#§;
                                                                                 this.§0!y§.§;v§();
                                                                                 addr268:
                                                                                 addr346:
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       this.§7"E§ = param1.§>"9§;
                                                                                       addr254:
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             this.§,c§ = param1.§""2§;
                                                                                             addr246:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                this.§!c§ = 0;
                                                                                                addr233:
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   this.§[E§ = 0;
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr246);
                                                                                                addr248:
                                                                                             }
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 addr283:
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr362);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr349);
                                             }
                                             §§goto(addr248);
                                          }
                                          break;
                                       }
                                       addr133:
                                       while(true)
                                       {
                                          this.§"9§ = new b2Vec2();
                                          §§goto(addr125);
                                       }
                                    }
                                    addr183:
                                    §§push(§§pop().y);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop() - b2internal::4"0.m_xf.position.y);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr198);
                                       }
                                    }
                                    §§goto(addr199);
                                 }
                              }
                              while(true)
                              {
                                 this.§+J§ = new b2Mat22();
                                 §§goto(addr133);
                                 §§goto(addr81);
                              }
                              addr97:
                              addr139:
                           }
                           §§goto(addr183);
                           §§push(this.§8!V§);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§8!V§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.§+!n§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && this))
         {
            §§push(this.§0!y§.x);
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc3_)
         {
            addr49:
            §§push(§§pop() * this.§0!y§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'z§() : b2Vec2
      {
         return this.§8!V§;
      }
      
      public function §2y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(b2internal::4"0.IsAwake() == false)
            {
               if(_loc2_)
               {
                  addr51:
                  b2internal::4"0.SetAwake(true);
               }
               while(true)
               {
               }
               addr54:
            }
            while(true)
            {
               this.§8!V§ = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §9"@§() : Number
      {
         return this.§6!_§;
      }
      
      public function §%#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!_§ = param1;
         }
      }
      
      public function §[[§() : Number
      {
         return this.§7"E§;
      }
      
      public function §<!D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7"E§ = param1;
         }
      }
      
      public function §^",§() : Number
      {
         return this.§,c§;
      }
      
      public function §!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§,c§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::4"0;
         §§push(_loc2_.GetMass());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!(_loc14_ && param1))
         {
            §§push(§§pop() * this.§7"E§);
            if(_loc13_)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(!(_loc14_ && _loc3_))
            {
               §§push(this.§,c§);
               if(!(_loc14_ && _loc2_))
               {
                  addr81:
                  §§push(§§pop() * §§pop());
                  if(_loc13_)
                  {
                     §§push(_loc4_);
                  }
                  var _loc5_:Number = §§pop();
                  §§push(_loc3_);
                  if(_loc13_)
                  {
                     §§push(_loc4_);
                     if(_loc13_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc14_ && param1))
                        {
                           addr103:
                           §§push(§§pop() * _loc4_);
                           if(_loc13_ || this)
                           {
                              addr111:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc6_:* = §§pop();
                        if(_loc13_)
                        {
                           §§push(this);
                           §§push(param1.§4"?§);
                           if(!_loc14_)
                           {
                              §§push(_loc5_);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(param1.§4"?§);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§[E§ = §§pop();
                        }
                        loop0:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(this);
                              if(_loc13_ || this)
                              {
                                 §§push(this.§[E§);
                                 if(!_loc14_)
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr156:
                                       §§push(1 / this.§[E§);
                                       if(!(_loc14_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc13_)
                                          {
                                             addr170:
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc13_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§pop().§[E§ = §§pop();
                                    do
                                    {
                                       if(_loc14_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this);
                                       §§push(param1.§4"?§);
                                       if(!_loc14_)
                                       {
                                          §§push(_loc6_);
                                          if(_loc13_ || _loc2_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc13_)
                                             {
                                                continue;
                                             }
                                             addr133:
                                             §§push(this.§[E§);
                                          }
                                          §§push(§§pop() * §§pop());
                                          continue;
                                       }
                                       §§goto(addr133);
                                    }
                                    while(§§pop().§!c§ = §§pop(), _loc14_);
                                    
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr156);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§+!n§.x);
                           if(_loc13_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(!(_loc14_ && this))
                              {
                                 addr224:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(this.§+!n§.y);
                              if(_loc13_)
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc9_:* = §§pop();
                              §§push(_loc7_.col1.x);
                              if(!(_loc14_ && _loc3_))
                              {
                                 §§push(_loc8_);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc13_ || param1)
                                    {
                                       §§push(_loc7_.col2.x);
                                       if(_loc13_ || _loc2_)
                                       {
                                          addr276:
                                          §§push(§§pop() * _loc9_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc13_ || this)
                                       {
                                          addr286:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       if(_loc13_ || this)
                                       {
                                          §§push(_loc7_.col1);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             if(!_loc14_)
                                             {
                                                §§push(_loc8_);
                                                if(_loc13_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_.col2.y);
                                                      if(_loc13_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                         addr1133:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr1137:
                                                            loop8:
                                                            while(true)
                                                            {
                                                               _loc9_ = §§pop();
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
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        _loc8_ = §§pop();
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§["A§);
                                                                           loop13:
                                                                           for(; _loc13_ || param1; if(!(_loc14_ && param1))
                                                                           {
                                                                              if(_loc13_ || param1)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop11;
                                                                           })
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 addr1091:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§"g§);
                                                                                    if(_loc13_ || this)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                           while(true)
                                                                           {
                                                                              if(_loc14_ && this)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              §§goto(addr804);
                                                                              §§push(this.K);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!(_loc13_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc13_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr1070);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr1133);
                                             }
                                             §§goto(addr1137);
                                             while(true)
                                             {
                                                if(_loc14_ && _loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(_loc12_);
                                                if(!_loc14_)
                                                {
                                                   §§goto(addr897);
                                                }
                                                §§goto(addr912);
                                             }
                                          }
                                       }
                                       §§goto(addr1035);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr224);
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr111);
               }
               §§push(§§pop() * §§pop());
               if(_loc14_ && _loc2_)
               {
               }
            }
            §§goto(addr81);
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
         var _loc2_:b2Body = b2internal::4"0;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§+!n§.x);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc15_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§+!n§.y);
         if(!_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc16_ || this)
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
                  if(_loc16_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc15_ && this))
                     {
                        §§push(_loc3_.col2);
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(!_loc15_)
                           {
                              while(true)
                              {
                                 §§push(_loc7_);
                                 addr182:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                              addr181:
                           }
                           addr183:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                        addr178:
                     }
                     loop4:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr186:
                           loop8:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc3_.col1);
                                 if(!_loc16_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop().y);
                                 if(!(_loc15_ && _loc2_))
                                 {
                                    if(_loc15_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(_loc6_);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc15_)
                                       {
                                          addr125:
                                          §§push(_loc3_.col2);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop().y);
                                             if(!_loc15_)
                                             {
                                                if(!_loc15_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc15_)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               if(!(_loc16_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr159:
                                                                  while(_loc16_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     addr210:
                                                                     var _loc8_:* = §§pop();
                                                                     §§push(_loc2_.§="8§.y);
                                                                     if(!(_loc15_ && _loc2_))
                                                                     {
                                                                        §§push(_loc2_.m_angularVelocity);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(§§pop() * _loc6_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     _loc3_ = this.§+J§;
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(this.§!c§);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(this.§"9§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!(_loc15_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(this.§[E§);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             addr282:
                                                                                             §§push(this.§0!y§);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc15_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(_loc16_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(this.§!c§);
                                                                                                                  if(!(_loc15_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr330:
                                                                                                                     §§push(this.§"9§.y);
                                                                                                                     if(!(_loc15_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr341:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              §§push(this.§[E§);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr350:
                                                                                                                                 §§push(this.§0!y§.y);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    addr353:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                    {
                                                                                                                                       addr361:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc15_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc16_ || this)
                                                                                                                                          {
                                                                                                                                             addr377:
                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                             §§push(_loc3_.col1.x);
                                                                                                                                             if(!(_loc15_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr406:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr409:
                                                                                                                                                      §§push(_loc3_.col2.x);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         addr414:
                                                                                                                                                         §§push(§§pop() * _loc5_);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr419:
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(_loc16_ || this)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr428:
                                                                                                                                                         var _loc10_:* = §§pop();
                                                                                                                                                         §§push(_loc3_.col1.y);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.col2.y);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr452:
                                                                                                                                                                     §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                                                     if(_loc15_ && this)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     var _loc11_:* = Number(§§pop());
                                                                                                                                                                     §§push(this.§0!y§.x);
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     var _loc12_:* = §§pop();
                                                                                                                                                                     §§push(this.§0!y§.y);
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     var _loc13_:* = §§pop();
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§0!y§);
                                                                                                                                                                        if(_loc16_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§0!y§);
                                                                                                                                                                           if(_loc16_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(_loc16_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 if(!(_loc15_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc16_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr535:
                                                                                                                                                                                          §§push(this.§0!y§);
                                                                                                                                                                                          §§push(this.§0!y§.y);
                                                                                                                                                                                          if(_loc16_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr545:
                                                                                                                                                                                             §§pop().y = §§pop() + _loc11_;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr545);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(param1.§4"?§);
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * this.§6!_§);
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       var _loc14_:* = §§pop();
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§0!y§);
                                                                                                                                                                                          if(_loc16_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr787:
                                                                                                                                                                                             addr797:
                                                                                                                                                                                             §§push(§§pop().§`p§());
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             if(_loc16_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * _loc14_);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr798:
                                                                                                                                                                                                addr800:
                                                                                                                                                                                                §§push(this.§0!y§);
                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() / this.§0!y§.§ !O§());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§8`§(§§pop());
                                                                                                                                                                                                addr808:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(this.§0!y§);
                                                                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                if(_loc16_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr761:
                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr765:
                                                                                                                                                                                                      _loc10_ = Number(§§pop() - §§pop());
                                                                                                                                                                                                      addr766:
                                                                                                                                                                                                      addr764:
                                                                                                                                                                                                      §§push(this.§0!y§);
                                                                                                                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            if(!(_loc15_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr733:
                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr738:
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                                                                           addr691:
                                                                                                                                                                                                                           addr697:
                                                                                                                                                                                                                           addr698:
                                                                                                                                                                                                                           addr690:
                                                                                                                                                                                                                           addr688:
                                                                                                                                                                                                                           §§push(_loc2_.§="8§);
                                                                                                                                                                                                                           §§push(_loc2_.§="8§.x);
                                                                                                                                                                                                                           §§push(_loc2_.§["A§);
                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr696:
                                                                                                                                                                                                                              §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                           addr741:
                                                                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc2_.§="8§);
                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc2_.§="8§);
                                                                                                                                                                                                                                    if(!(_loc15_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc2_.§["A§);
                                                                                                                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                if(_loc16_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr661:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc16_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr669:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!(_loc15_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         addr677:
                                                                                                                                                                                                                                                         if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                                                                            §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                            if(!_loc15_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc2_.§"g§);
                                                                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                     if(_loc16_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr604:
                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr601:
                                                                                                                                                                                                                                                                              §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr741);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr741);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr677);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr604);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr601);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr604);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr808);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr691);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr697);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr696);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr661);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr698);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr669);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr688);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr798);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr766);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr764);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr787);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr765);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr738);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr761);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr733);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr787);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr797);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr765);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr800);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr691);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr545);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr535);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                               }
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               if(_loc16_ || this)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr452);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr428);
                                                                                                                                                }
                                                                                                                                                §§goto(addr414);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr428);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr419);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr414);
                                                                                                                              }
                                                                                                                              §§goto(addr361);
                                                                                                                           }
                                                                                                                           §§goto(addr419);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr414);
                                                                                                                  }
                                                                                                                  §§goto(addr406);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr377);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr419);
                                                                                                   }
                                                                                                   §§goto(addr341);
                                                                                                }
                                                                                                §§goto(addr414);
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                              §§goto(addr330);
                                                                           }
                                                                           §§goto(addr282);
                                                                        }
                                                                        §§goto(addr409);
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr182);
                                                      }
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr201);
                                          }
                                          else
                                          {
                                             §§goto(addr178);
                                          }
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr125);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr181);
               }
            }
         }
         §§goto(addr186);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
