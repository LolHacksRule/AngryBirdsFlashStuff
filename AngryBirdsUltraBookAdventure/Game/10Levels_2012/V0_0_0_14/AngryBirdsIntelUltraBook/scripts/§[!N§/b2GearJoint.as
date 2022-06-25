package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
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
      
      private var §7!a§:b2Jacobian;
      
      private var §"!i§:Number;
      
      private var §do§:Number;
      
      private var §#K§:Number;
      
      private var §+!P§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && this))
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        addr55:
                        while(true)
                        {
                           this.§7!a§ = new b2Jacobian();
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  if(_loc7_ && this)
                  {
                     continue;
                  }
                  while(false)
                  {
                     §§goto(addr55);
                  }
                  §§push(param1.joint1.§"!1§);
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(param1.joint2.§"!1§);
                  if(_loc6_ || param1)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc7_ && _loc3_))
                  {
                     this.m_revolute1 = null;
                     while(true)
                     {
                        this.m_prismatic1 = null;
                        loop8:
                        while(true)
                        {
                           this.m_revolute2 = null;
                           loop9:
                           while(true)
                           {
                              this.m_prismatic2 = null;
                              loop10:
                              while(true)
                              {
                                 this.m_ground1 = param1.joint1.§3!!§();
                                 loop11:
                                 for(; !_loc7_; while(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr450);
                                    §§push(this.m_revolute1.§;w§());
                                 })
                                 {
                                    §^^§ = param1.joint1.§^F§();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          if(§§pop() == b2Joint.e_revoluteJoint)
                                          {
                                             continue loop8;
                                          }
                                          addr445:
                                          this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                          while(true)
                                          {
                                             §§push(this.m_groundAnchor1);
                                             if(!_loc7_)
                                             {
                                                §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                continue loop10;
                                             }
                                             addr471:
                                             while(true)
                                             {
                                                §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                addr475:
                                                while(true)
                                                {
                                                   §§push(this.m_localAnchor1);
                                                   addr456:
                                                   while(true)
                                                   {
                                                      §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                          addr380:
                                          §§push(_loc3_);
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(§§pop() != b2Joint.e_revoluteJoint)
                                          {
                                             this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                                             loop23:
                                             while(true)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.m_groundAnchor2);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                         continue;
                                                      }
                                                      addr325:
                                                      while(true)
                                                      {
                                                         §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                      }
                                                   }
                                                   while(!_loc7_)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc7_ && _loc2_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(this.m_localAnchor2);
                                                         while(true)
                                                         {
                                                            §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                            addr319:
                                                            addr404:
                                                            while(!_loc7_)
                                                            {
                                                               §§push(this.m_revolute2.§;w§());
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(!_loc7_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop36:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§do§ = param1.§32§;
                                                                                 addr175:
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc2_))
                                                                                    {
                                                                                       if(_loc7_ && _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(this);
                                                                                       §§push(_loc4_);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          §§push(this.§do§);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc5_);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().§"!i§ = §§pop();
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr358:
                                                                                          while(true)
                                                                                          {
                                                                                             this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                                             break loop29;
                                                                                          }
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 §§goto(addr475);
                                                                                 continue loop36;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           break loop30;
                                                                        }
                                                                        addr450:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr393);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr452:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr381);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  if(!(_loc6_ || _loc3_))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr392);
                                                                  §§push(this.m_prismatic1.§!!Y§());
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr452);
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                   while(_loc6_)
                                                   {
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr445);
                                                }
                                                §§goto(addr311);
                                             }
                                             continue loop10;
                                          }
                                          §§goto(addr358);
                                       }
                                    }
                                 }
                                 continue loop9;
                              }
                           }
                        }
                        while(_loc6_ || _loc3_)
                        {
                           §§goto(addr471);
                           §§push(this.m_groundAnchor1);
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr325);
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§+!P§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc3_)
               {
                  addr58:
                  §§push(this.§7!a§.§[!k§.x);
                  if(!(_loc2_ && param1))
                  {
                     addr70:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!_loc2_)
                     {
                        §§push(this.§+!P§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc2_)
                           {
                              addr84:
                              §§push(§§pop() * this.§7!a§.§[!k§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr58);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::7!<.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc8_)
         {
            §§push(§§pop() - b2internal::7!<.m_sweep.localCenter.x);
            if(!(_loc8_ && this))
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc8_ && param1))
            {
               §§push(§§pop() - b2internal::7!<.m_sweep.localCenter.y);
               if(_loc9_ || _loc2_)
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(!(_loc8_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(_loc2_.col2.x);
                        if(!_loc8_)
                        {
                           addr98:
                           §§push(§§pop() + §§pop() * _loc4_);
                           if(_loc8_ && _loc2_)
                           {
                           }
                           var _loc5_:* = §§pop();
                           if(_loc9_ || param1)
                           {
                              §§push(_loc2_.col1.y);
                              if(_loc9_ || this)
                              {
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(_loc2_.col2.y);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * _loc4_);
                                          if(!_loc8_)
                                          {
                                             addr150:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc8_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc9_ || _loc2_)
                                                {
                                                   addr161:
                                                   _loc4_ = §§pop();
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      addr169:
                                                      §§push(_loc5_);
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc8_ && this))
                                                         {
                                                            addr185:
                                                            _loc3_ = §§pop();
                                                            addr186:
                                                            §§push(this.§+!P§);
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               addr195:
                                                               addr199:
                                                               §§push(§§pop() * this.§7!a§.§[!k§.x);
                                                               if(!_loc9_)
                                                               {
                                                               }
                                                               var _loc6_:* = §§pop();
                                                               §§push(this.§+!P§);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() * this.§7!a§.§[!k§.y);
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr220:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc7_:* = §§pop();
                                                                  §§push(param1);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(this.§+!P§);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(this.§7!a§.§`e§);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr242:
                                                                              §§push(_loc3_);
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr266);
                                                                           }
                                                                           §§goto(addr274);
                                                                        }
                                                                        §§goto(addr266);
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  addr266:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     addr274:
                                                                     §§push(_loc4_);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr279:
                                                                        §§push(§§pop() + §§pop() * _loc6_);
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  return §§pop() * §§pop();
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr195);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr98);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr63);
         }
         §§goto(addr39);
      }
      
      public function §?!T§() : Number
      {
         return this.§do§;
      }
      
      public function §2^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§do§ = param1;
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
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::^^;
         var _loc5_:b2Body = b2internal::7!<;
         §§push(0);
         if(!(_loc16_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!(_loc16_ && this))
         {
            §§push(this.§7!a§);
            loop0:
            while(true)
            {
               §§pop().§%&§();
               if(_loc15_ || _loc3_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(!_loc16_)
                        {
                           §§push(§§pop().R);
                           if(_loc15_)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§+!A§;
                              if(!(_loc16_ && _loc2_))
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc15_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc15_)
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc15_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc15_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc16_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc16_ && _loc3_))
                                                            {
                                                               addr232:
                                                               _loc6_ = §§pop();
                                                               if(_loc15_ || this)
                                                               {
                                                                  addr242:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_ || _loc2_)
                                                                  {
                                                                     addr250:
                                                                     §§push(_loc11_.x);
                                                                     if(_loc15_ || param1)
                                                                     {
                                                                        addr259:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           addr269:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(!(_loc16_ && _loc2_))
                                                                           {
                                                                              addr280:
                                                                              §§push(§§pop() + §§pop() * _loc11_.y);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr283:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr283);
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               _loc10_ = _loc4_.m_xf.R;
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(this.m_localAnchor1);
                                                                  loop80:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr609:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.m_sweep);
                                                                        addr611:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().localCenter);
                                                                           addr612:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr613:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr614:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr615:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       continue loop80;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                   }
                                                   §§goto(addr280);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr283);
                                 }
                              }
                              §§goto(addr242);
                           }
                           addr685:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§+!A§;
                           if(!_loc16_)
                           {
                              §§push(_loc10_.col1);
                              if(_loc15_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc16_)
                                 {
                                    §§push(_loc11_.x);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc16_ && param1))
                                       {
                                          §§push(_loc10_.col2);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc16_)
                                             {
                                                §§push(_loc11_.y);
                                                if(!(_loc16_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc16_ && _loc2_))
                                                   {
                                                      addr737:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc16_ && _loc2_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc15_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               addr753:
                                                               §§push(_loc10_.col1.y);
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  §§push(_loc11_.x);
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     addr770:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc15_ || _loc3_)
                                                                     {
                                                                        addr778:
                                                                        addr780:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc16_ && _loc2_)
                                                                        {
                                                                        }
                                                                        addr791:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           addr800:
                                                                           _loc7_ = Number(§§pop());
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop36:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1239:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1241:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1242:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1243:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1244:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1245:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop36;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr1238:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          loop45:
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
                                                                                                      loop49:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr1188:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc15_ || _loc3_)
                                                                                                            {
                                                                                                               addr1197:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc10_.col2);
                                                                                                                  addr1199:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1197:
                                                                                                            }
                                                                                                            addr1200:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               addr1201:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr1202:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr1203:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              continue loop49;
                                                                                                                           }
                                                                                                                           addr1206:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1239);
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
                                                                                                if(!(_loc15_ || this))
                                                                                                {
                                                                                                   continue loop45;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§goto(addr1094);
                                                                                                }
                                                                                                §§goto(addr1106);
                                                                                             }
                                                                                             §§goto(addr1199);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1242);
                                                                                    }
                                                                                    break;
                                                                                    if(!(_loc15_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr935);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr1241);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1238);
                                                                              }
                                                                           }
                                                                           addr799:
                                                                        }
                                                                     }
                                                                     §§goto(addr800);
                                                                  }
                                                                  addr790:
                                                                  §§goto(addr791);
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                            }
                                                            §§goto(addr800);
                                                         }
                                                         §§goto(addr799);
                                                      }
                                                      §§goto(addr778);
                                                   }
                                                   §§goto(addr770);
                                                }
                                                §§goto(addr790);
                                             }
                                             §§goto(addr737);
                                          }
                                          §§goto(addr780);
                                       }
                                       §§goto(addr800);
                                    }
                                    §§goto(addr778);
                                 }
                                 §§goto(addr800);
                              }
                              §§goto(addr753);
                           }
                           §§goto(addr800);
                        }
                        break;
                     }
                     if(_loc15_)
                     {
                        §§push(this.§7!a§);
                        if(!(_loc16_ && this))
                        {
                           continue loop0;
                        }
                        addr629:
                        §§push(this.§do§);
                        if(!_loc16_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§`e§ = §§pop();
                        if(_loc15_ || this)
                        {
                           addr642:
                           §§push(_loc14_);
                           if(!(_loc16_ && _loc3_))
                           {
                              addr650:
                              §§push(this.§do§);
                              if(!(_loc16_ && param1))
                              {
                                 addr659:
                                 §§push(this.§do§);
                                 if(!_loc16_)
                                 {
                                    addr669:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc16_)
                                    {
                                       §§push(_loc5_.§^!B§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc16_ && _loc3_))
                                    {
                                       addr677:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc14_ = §§pop();
                                    if(!_loc16_)
                                    {
                                       addr1247:
                                       §§push(this);
                                       if(!(_loc16_ && _loc2_))
                                       {
                                          §§push(_loc14_);
                                          if(_loc15_ || _loc2_)
                                          {
                                             if(§§pop() > 0)
                                             {
                                                addr1266:
                                                §§push(1 / _loc14_);
                                                if(!_loc16_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc15_)
                                                   {
                                                      addr1274:
                                                   }
                                                }
                                                else
                                                {
                                                   addr1283:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(0);
                                                if(_loc15_ || this)
                                                {
                                                   §§goto(addr1283);
                                                }
                                             }
                                             §§pop().§#K§ = §§pop();
                                             if(!_loc16_)
                                             {
                                                if(!param1.§9!G§)
                                                {
                                                   this.§+!P§ = 0;
                                                   if(_loc15_)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         if(_loc15_ || param1)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr1288:
                                                            return;
                                                            addr1311:
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               §§push(_loc5_.§9!§);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc5_.§9!§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc15_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc5_.§1!X§);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       if(_loc15_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§+!P§);
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr1553:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§7!a§);
                                                                                                   addr1555:
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc16_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop().§[!k§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr1564:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr1565:
                                                                                                               while(_loc15_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(!(_loc16_ && param1))
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     continue loop14;
                                                                                                                     if(_loc15_ || param1)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     addr1657:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        §§push(_loc4_.m_angularVelocity);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        §§push(_loc4_.§^!B§);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(this.§+!P§);
                                                                                                                           if(_loc15_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 addr1607:
                                                                                                                                 §§push(§§pop() * this.§7!a§.§6w§);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1607);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1678:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr1679:
                                                                                                                  §§pop().x = §§pop() + §§pop();
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr1563:
                                                                                                      }
                                                                                                      loop9:
                                                                                                      while(_loc15_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop().§+O§);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            loop10:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr1655:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1656);
                                                                                                               }
                                                                                                               addr1446:
                                                                                                               if(_loc16_ && _loc2_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!(_loc16_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr1463:
                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                     {
                                                                                                                        §§push(this.§7!a§);
                                                                                                                        if(_loc16_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        §§push(§§pop().§[!k§);
                                                                                                                        if(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           addr1488:
                                                                                                                           §§push(§§pop() + §§pop() * §§pop().y);
                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc16_ && this))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       §§push(_loc5_.m_angularVelocity);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.§^!B§);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§+!P§);
                                                                                                                                             if(_loc15_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr1344:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr1342:
                                                                                                                                                   §§push(§§pop() * this.§7!a§.§`e§);
                                                                                                                                                }
                                                                                                                                                §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                while(!(_loc15_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1288);
                                                                                                                                                addr1345:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1342);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1344);
                                                                                                                                    }
                                                                                                                                    addr1505:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1498:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.§1!X§);
                                                                                                                                 addr1621:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§+!P§);
                                                                                                                                    if(_loc16_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§7!a§);
                                                                                                                                       addr1421:
                                                                                                                                       continue loop9;
                                                                                                                                       if(_loc16_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc16_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          break loop16;
                                                                                                                                       }
                                                                                                                                       §§push(this.§+!P§);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1446);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1564);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1488);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1619:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1563);
                                                                                                                        }
                                                                                                                        §§goto(addr1657);
                                                                                                                     }
                                                                                                                     §§goto(addr1621);
                                                                                                                  }
                                                                                                                  §§goto(addr1488);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1677:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               §§goto(addr1678);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr1677);
                                                                                                            }
                                                                                                            addr1676:
                                                                                                         }
                                                                                                      }
                                                                                                      addr1675:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr1676);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr1553:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§goto(addr1675);
                                                                                                      §§push(this.§7!a§);
                                                                                                   }
                                                                                                }
                                                                                                addr1670:
                                                                                             }
                                                                                             §§goto(addr1678);
                                                                                          }
                                                                                          §§goto(addr1564);
                                                                                       }
                                                                                       §§goto(addr1655);
                                                                                    }
                                                                                    §§goto(addr1553);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr1670);
                                                                              }
                                                                              addr1668:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                              }
                                                                              addr1665:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr1668);
                                                                           }
                                                                        }
                                                                        §§push(_loc5_.§9!§);
                                                                        addr1365:
                                                                        break;
                                                                        if(!(_loc15_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           §§goto(addr1382);
                                                                        }
                                                                        §§goto(addr1488);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr1619);
                                                                     }
                                                                     addr1618:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr1663:
                                                                  }
                                                                  §§goto(addr1665);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr1661:
                                                               while(true)
                                                               {
                                                               }
                                                               addr1661:
                                                            }
                                                            §§goto(addr1663);
                                                         }
                                                      }
                                                      §§goto(addr1498);
                                                   }
                                                   §§goto(addr1344);
                                                }
                                                §§goto(addr1661);
                                                addr1287:
                                             }
                                             §§goto(addr1311);
                                          }
                                          §§goto(addr1274);
                                       }
                                       §§goto(addr1266);
                                    }
                                    §§goto(addr1657);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr669);
                           }
                           §§goto(addr677);
                        }
                        §§goto(addr1661);
                     }
                     §§goto(addr642);
                     §§goto(addr1247);
                  }
                  §§goto(addr685);
                  §§push(§§pop().R);
                  addr110:
               }
               break;
            }
            while(true)
            {
               §§goto(addr1616);
               §§goto(addr1679);
            }
         }
         §§goto(addr642);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         §§push(this.§7!a§.§,#§(_loc2_.§9!§,_loc2_.m_angularVelocity,_loc3_.§9!§,_loc3_.m_angularVelocity));
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§#K§);
         if(_loc6_)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               addr49:
               §§push(§§pop() * _loc4_);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || param1)
            {
               §§push(this);
               §§push(this.§+!P§);
               if(_loc6_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§+!P§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc2_.§9!§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.§9!§);
                     addr399:
                     while(true)
                     {
                        §§push(§§pop().x);
                        if(_loc6_)
                        {
                           §§push(_loc2_.§1!X§);
                           while(true)
                           {
                              §§push(_loc5_);
                              addr405:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr406:
                                 while(true)
                                 {
                                    §§push(this.§7!a§);
                                    addr408:
                                    while(true)
                                    {
                                       §§push(§§pop().§+O§);
                                       addr409:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr410:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr411:
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
                           addr404:
                        }
                        loop10:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           loop11:
                           while(true)
                           {
                              §§push(_loc2_.§9!§);
                              while(true)
                              {
                                 §§push(_loc2_.§9!§);
                                 addr346:
                                 while(true)
                                 {
                                    §§push(§§pop().y);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(_loc2_.§1!X§);
                                       loop15:
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(_loc5_);
                                             loop16:
                                             while(_loc6_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                while(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(this.§7!a§);
                                                   loop18:
                                                   for(; _loc6_; if(!_loc6_)
                                                   {
                                                      continue;
                                                   },§§push(§§pop().§[!k§),if(_loc6_)
                                                   {
                                                      addr212:
                                                      §§push(§§pop().y);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  addr239:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        while(!(_loc7_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           §§push(_loc3_.m_angularVelocity);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(_loc3_.§^!B§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    addr98:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr96:
                                                                                       §§push(§§pop() * this.§7!a§.§`e§);
                                                                                    }
                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr393);
                                                                                 }
                                                                              }
                                                                              §§goto(addr96);
                                                                           }
                                                                           §§goto(addr98);
                                                                        }
                                                                        §§goto(addr298);
                                                                     }
                                                                     §§goto(addr265);
                                                                  }
                                                                  §§goto(addr297);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr295);
                                                   },§§goto(addr294))
                                                   {
                                                      §§push(§§pop().§+O§);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(§§pop().y);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr381:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr382:
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  addr393:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(_loc2_.§^!B§);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              addr332:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr330:
                                                                                 §§push(§§pop() * this.§7!a§.§6w§);
                                                                              }
                                                                              §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                              loop23:
                                                                              while(!(_loc7_ && this))
                                                                              {
                                                                                 §§push(_loc3_.§9!§);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.§9!§);
                                                                                    addr264:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr265:
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(_loc3_.§1!X§);
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                continue loop19;
                                                                                                if(!(_loc6_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(this.§7!a§);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                addr293:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§[!k§);
                                                                                                   addr294:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr295:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr296:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr297:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               addr298:
                                                                                                               while(!_loc7_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        §§goto(addr330);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr409);
                                                      }
                                                   }
                                                   §§goto(addr408);
                                                }
                                                §§goto(addr406);
                                             }
                                             §§goto(addr410);
                                          }
                                          else
                                          {
                                             §§goto(addr404);
                                          }
                                       }
                                       §§goto(addr405);
                                    }
                                 }
                                 if(!(_loc7_ && param1))
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr300);
         }
         §§goto(addr49);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(!(_loc9_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::^^;
         var _loc4_:b2Body = b2internal::7!<;
         if(!(_loc9_ && param1))
         {
            §§push(this.m_revolute1);
            if(_loc10_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§!!Y§());
                  loop0:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.m_revolute2);
                              if(_loc10_ || param1)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this.m_prismatic2.§!!Y§());
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    addr82:
                                    if(_loc10_ || param1)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc10_)
                                       {
                                          if(_loc10_)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr163:
                                             §§push(this.§"!i§);
                                             if(!(_loc9_ && param1))
                                             {
                                                addr172:
                                                §§push(_loc5_);
                                                if(_loc10_)
                                                {
                                                   §§push(this.§do§);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() * _loc6_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(_loc10_ || _loc3_)
                                                {
                                                   addr190:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(this.§#K§);
                                                if(!_loc9_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc9_)
                                                   {
                                                      addr199:
                                                      §§push(§§pop() * _loc7_);
                                                      if(_loc10_)
                                                      {
                                                         addr203:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         addr643:
                                                         _loc3_.m_sweep.c.x += _loc3_.§1!X§ * _loc8_ * this.§7!a§.§+O§.x;
                                                         addr628:
                                                         addr636:
                                                         addr641:
                                                         addr644:
                                                         addr637:
                                                         addr639:
                                                         addr635:
                                                         addr632:
                                                         addr642:
                                                         addr640:
                                                         addr633:
                                                         addr631:
                                                         §§push(_loc3_.m_sweep.c);
                                                         if(_loc10_)
                                                         {
                                                            addr568:
                                                            §§push(_loc3_.m_sweep);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               addr576:
                                                               §§push(§§pop().c.y);
                                                               if(!_loc9_)
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     addr588:
                                                                     §§push(_loc3_.§1!X§);
                                                                     §§push(_loc8_);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr594:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(this.§7!a§.§+O§);
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr603:
                                                                           §§push(§§pop() * §§pop().y);
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              addr622:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 addr625:
                                                                                 §§push(_loc3_.m_sweep);
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    addr543:
                                                                                    §§push(_loc3_.m_sweep.a);
                                                                                    §§push(_loc3_.§^!B§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr557:
                                                                                          addr558:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr555:
                                                                                             §§push(this.§7!a§.§6w§);
                                                                                          }
                                                                                          §§pop().a = §§pop() + §§pop();
                                                                                          addr559:
                                                                                          §§push(_loc4_.m_sweep.c);
                                                                                          §§push(_loc4_.m_sweep);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr456:
                                                                                             §§push(§§pop().c);
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr466:
                                                                                                   §§push(§§pop().x);
                                                                                                   §§push(_loc4_.§1!X§);
                                                                                                   if(_loc10_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            addr490:
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr497:
                                                                                                                  §§push(this.§7!a§);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     addr501:
                                                                                                                     §§push(§§pop() * §§pop().§[!k§.x);
                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              addr519:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 addr527:
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    addr345:
                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().c);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc10_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.§1!X§);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc10_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc10_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr415:
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§7!a§);
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§[!k§);
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr427:
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr437:
                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                             if(_loc10_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                addr446:
                                                                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_.§^!B§);
                                                                                                                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr307:
                                                                                                                                                                                                                        §§push(this.§7!a§);
                                                                                                                                                                                                                        if(_loc10_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr327:
                                                                                                                                                                                                                           §§push(§§pop().§`e§);
                                                                                                                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr335:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr338:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().a = §§pop();
                                                                                                                                                                                                                                    _loc3_.§ n§();
                                                                                                                                                                                                                                    addr246:
                                                                                                                                                                                                                                    if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc4_.§ n§();
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc9_ && this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr559);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr527);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr446);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr246);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr625);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr341:
                                                                                                                                                                                                                                    §§goto(addr341);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr543);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr557);
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr555);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr335);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr327);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr307);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr558);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr338);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr543);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr628);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr345);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr466);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr490);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr501);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr594);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr497);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr501);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr437);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr636);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr641);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr427);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr415);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr519);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr437);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr456);
                                                                                                                                                }
                                                                                                                                                §§goto(addr557);
                                                                                                                                             }
                                                                                                                                             §§goto(addr628);
                                                                                                                                          }
                                                                                                                                          §§goto(addr557);
                                                                                                                                       }
                                                                                                                                       §§goto(addr625);
                                                                                                                                    }
                                                                                                                                    §§goto(addr557);
                                                                                                                                 }
                                                                                                                                 §§goto(addr644);
                                                                                                                              }
                                                                                                                              §§goto(addr622);
                                                                                                                           }
                                                                                                                           §§goto(addr637);
                                                                                                                        }
                                                                                                                        §§goto(addr588);
                                                                                                                     }
                                                                                                                     §§goto(addr594);
                                                                                                                  }
                                                                                                                  §§goto(addr639);
                                                                                                               }
                                                                                                               §§goto(addr501);
                                                                                                            }
                                                                                                            §§goto(addr603);
                                                                                                         }
                                                                                                         §§goto(addr635);
                                                                                                      }
                                                                                                      §§goto(addr603);
                                                                                                   }
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                                §§goto(addr632);
                                                                                             }
                                                                                             §§goto(addr576);
                                                                                          }
                                                                                          §§goto(addr568);
                                                                                       }
                                                                                       §§goto(addr327);
                                                                                    }
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 §§goto(addr628);
                                                                              }
                                                                              §§goto(addr643);
                                                                           }
                                                                           §§goto(addr642);
                                                                        }
                                                                        §§goto(addr640);
                                                                     }
                                                                     §§goto(addr603);
                                                                  }
                                                                  §§goto(addr633);
                                                               }
                                                               §§goto(addr622);
                                                            }
                                                            §§goto(addr631);
                                                         }
                                                         addr629:
                                                         §§goto(addr629);
                                                      }
                                                      §§goto(addr446);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr199);
                                             }
                                          }
                                          else
                                          {
                                             addr107:
                                             if(_loc9_)
                                             {
                                                continue loop2;
                                             }
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                   §§push(this.m_revolute2);
                                                   addr118:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§;w§());
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc9_ && param1)
                                                         {
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      _loc6_ = §§pop();
                                                      addr135:
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            break loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr116:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.m_revolute1);
                                                   addr159:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§;w§());
                                                      addr160:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr161:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                         }
                                                      }
                                                   }
                                                }
                                                addr157:
                                             }
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr163);
                        }
                     }
                  }
               }
               §§goto(addr157);
            }
            §§goto(addr159);
         }
         §§goto(addr116);
      }
   }
}
